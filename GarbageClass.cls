VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "GarbageClass"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Explicit
' George's FastCollection
' Only Add, and Find.
' Key as string may be a hex number (used for enumarates)
' No same key.
' We can remove key
' We can add key (only unique keys)
' return variant (can be anything)
'**************
'* Propertiea:
'*      Count
'*'* from 1 to Count we can access all the members of FastCollection
'*     .Index=1  used for input/output
'* We can get Key or Value
'*      .KeyToString
'*      .Value
'* We can change Valus
'*    set .ValueObj = objectX
'*     .ValueVar
'**************************
'* Methods
'* AddKey "10" [, variant]
'* ToKey "10"
'* SwapValues "10", "30"
'*
'* .Done ..operation is ok
'* .Remove 10
'* .AddKey without parameter add 1 to lastkey
'* .LastKey
'* .LastIndex
'* .Frwd  (for index, exit if not .done)
'* .Back  (for index, exit if not .done)
Private mSortstyle As VbCompareMethod
Private Declare Sub CopyMemory Lib "KERNEL32" Alias "RtlMoveMemory" ( _
    lpvDest As Any, lpvSource As Any, ByVal cbCopy As Long)
Private Type item
    Key As Long
    iValue As Variant
    sValue As Long
    lastpos As Long
    Pleft As Long  ' a list
End Type
Private PriveSpace() As item
Dim MaxSpace As Long
Dim hashlen As Long
Dim toplim As Long
Private Declare Sub GetMem2 Lib "msvbvm60" (ByVal addr As Long, retval As Integer)
Private lastfind As Long
Private lastkey As Long
Private Hash() As Long
Public Done As Boolean
Public index As Long
Public StructLen As Long
Private ParentIndex As Long
Private Sub Class_Initialize()
    MaxSpace = 5
    ReDim PriveSpace(MaxSpace) As item, Hash(MaxSpace * 2 + 3)
    hashlen = MaxSpace * 2 + 3
    toplim = -1
    mSortstyle = vbTextCompare
    'Debug.Print "create one"
End Sub
Public Sub SetBinaryCompare()
mSortstyle = vbBinaryCompare
End Sub
Public Sub SetTextCompare()
mSortstyle = vbTextCompare
End Sub
Public Sub SetDataBaseCompare()
mSortstyle = vbDatabaseCompare
End Sub


Public Sub AddKey(RHS, Optional aValue As Variant)
    index = -1
    lastkey = CLng(RHS)
    Done = False
    If Not IsMissing(aValue) Then
    
   
        If IsObject(aValue) Then
        Value = -1
        Set ValueObj = aValue
        Else
        Value = aValue
        End If
    Else
        Value = aValue
    End If
End Sub
Public Sub Sort()
If toplim = -1 Then Exit Sub
QuickSortItems PriveSpace(), LBound(PriveSpace()), toplim
ReHash
End Sub
Public Sub SortDes()
If toplim = -1 Then Exit Sub
QuickSortItemsRev PriveSpace(), LBound(PriveSpace()), toplim
ReHash
End Sub


Public Sub ToKey(RHS)
    Done = Find(RHS)
    If Done Then lastkey = CLng(RHS)
End Sub
Public Sub RemoveWithNoFind()
Dim k As Long, k1 As Long, vvv As Variant, top1 As Long
If toplim < 0 Then Exit Sub  ' previus stop
top1 = toplim
If Done Then
       If ParentIndex > -1 Then
            PriveSpace(ParentIndex).Pleft = PriveSpace(index).Pleft

        Else
        
        Hash(PriveSpace(index).lastpos) = PriveSpace(index).Pleft

        End If
        SwapVariant vvv, PriveSpace(top1).iValue
        PriveSpace(index).iValue = -1
        PriveSpace(index) = PriveSpace(top1)
        Dim new_item As item
        PriveSpace(top1) = new_item
        SwapVariant vvv, PriveSpace(index).iValue
        If Hash(PriveSpace(index).lastpos) - 1 = top1 Then
        
            Hash(PriveSpace(index).lastpos) = index + 1
        Else
        
            k = Hash(PriveSpace(index).lastpos) - 1
If k >= 0 Then
Dim safety As Long
                Do
                safety = safety + 1
                k1 = k
                k = PriveSpace(k).Pleft - 1
                Loop Until k = top1 Or k < 0 Or safety > toplim
                If k = top1 Or k < 0 Then PriveSpace(k1).Pleft = index + 1
        End If

        End If
  
here:
       toplim = toplim - 1
      
        
       
        
  ReduceHash toplim
End If
End Sub
Public Sub Remove(RHS)
Dim k As Long, k1 As Long, vvv As Variant, top1 As Long
If toplim < 0 Then Exit Sub   ' previus stop
top1 = toplim
Done = Find(RHS)
If Done Then
        If ParentIndex > -1 Then
            PriveSpace(ParentIndex).Pleft = PriveSpace(index).Pleft

        Else
        
        Hash(PriveSpace(index).lastpos) = PriveSpace(index).Pleft

        End If
        SwapVariant vvv, PriveSpace(top1).iValue
        PriveSpace(index).iValue = -1
        PriveSpace(index) = PriveSpace(top1)
        Dim new_item As item
        PriveSpace(top1) = new_item
        SwapVariant vvv, PriveSpace(index).iValue
        If Hash(PriveSpace(index).lastpos) - 1 = top1 Then
        
            Hash(PriveSpace(index).lastpos) = index + 1
        Else
        
            k = Hash(PriveSpace(index).lastpos) - 1
If k >= 0 Then
                Do
                k1 = k
                k = PriveSpace(k).Pleft - 1
                Loop Until k = top1 Or k < 0
                PriveSpace(k1).Pleft = index + 1
        End If

        End If
  
here:
       toplim = toplim - 1
      
        
       
        
  ReduceHash toplim

End If
End Sub
Property Let Value(RHS As Variant)
Done = False
If index = -1 Then
ItemCreator lastkey, RHS

Else
    PriveSpace(index).iValue = RHS
End If
Done = True
End Property
Property Set ValueObj(RHS As Variant)
Done = False
If index = -1 Then
    ItemCreator lastkey, RHS
Else
    Set PriveSpace(index).iValue = RHS
End If
Done = True
End Property
Property Get sValue() As Long
Done = False
If index = -1 Then
Else
    Done = True
    sValue = PriveSpace(index).sValue
End If
End Property
Property Let sValue(RHS As Long)
If index = -1 Then
Else
    Done = True
    PriveSpace(index).sValue = RHS
End If
End Property
Property Get Value() As Variant
Done = False
If index = -1 Then
ElseIf Not IsObject(PriveSpace(index).iValue) Then
    Done = True
    Value = PriveSpace(index).iValue
    
    If Typename(Value) = "Error" Then
    Value = KeyToString
    End If
End If
End Property

Property Get ValueObj() As Variant
Done = False
If index = -1 Then
ElseIf IsObject(PriveSpace(index).iValue) Then
    Set ValueObj = PriveSpace(index).iValue
    Done = True
End If

End Property
Private Sub ExpandHash()
    hashlen = hashlen * 2 + 3
    ReHash
End Sub
Private Sub ReHash()
    Dim i As Long
    ReDim Hash(hashlen) As Long
    For i = 0 To toplim
        place HashFunc2(i), i
    Next i
End Sub

Private Sub ReduceHash(newTop As Long)
    If newTop <= 5 Then
            If newTop < 0 Then
                newTop = -1
                toplim = -1
                MaxSpace = 5
                ReDim PriveSpace(MaxSpace) As item
                
                ReDim Hash(MaxSpace * 2 + 3)
                hashlen = MaxSpace * 2 + 3
            ElseIf MaxSpace > 40 Then
                MaxSpace = 5
                ReDim Preserve PriveSpace(MaxSpace) As item
                
                ReDim Hash(MaxSpace * 2 + 3)
                hashlen = MaxSpace * 2 + 3
                
                ReHash
            End If
    Else
            If MaxSpace - newTop + 1 > 2 * newTop + 2 Then
            MaxSpace = 2 * (newTop + 1) + 1
            ReDim Preserve PriveSpace(MaxSpace) As item
            ReDim Hash(MaxSpace * 2 + 3)
            hashlen = MaxSpace * 2 + 3
            ReHash
    End If
   End If
End Sub



Private Function Malloc() As Long
    If toplim + 1 >= MaxSpace Then
        MaxSpace = MaxSpace * 2
        ReDim Preserve PriveSpace(MaxSpace) As item
        If MaxSpace > hashlen Then ExpandHash
    End If
    toplim = toplim + 1
    Malloc = toplim
End Function
Property Get Count()
    Count = toplim + 1
End Property

Function IsObj() As Boolean
If index = -1 Then
Else
IsObj = IsObject(PriveSpace(index).iValue)
End If
End Function
Function Find(RHS) As Boolean
Dim k As Long, Key As Long
Key = CLng(RHS)
ParentIndex = -1
Done = False

k = Hash(HashFunc(Key)) - 1

If k >= 0 Then
Dim safety As Long
safety = k
Do
    If PriveSpace(k).Key = Key Then
    Find = True: lastfind = Key: index = k: Done = True: Exit Function
    End If
     ParentIndex = k
     
     k = PriveSpace(k).Pleft - 1
     If k = ParentIndex Then Exit Do
     If safety = k Then
     Exit Do
     End If
Loop Until k < 0

End If
End Function
Function ExistKey(RHS) As Boolean
Dim k As Long, Key As Long
Key = CLng(RHS)
If Len(Key) = 0 Then Exit Function
k = Hash(HashFunc(Key)) - 1
If k >= 0 Then
Dim safety As Long
safety = k
Do
    If PriveSpace(k).Key = Key Then ExistKey = True: index = k: Exit Function
    If k = PriveSpace(k).Pleft - 1 Then Exit Do
     k = PriveSpace(k).Pleft - 1
    If safety = k Then
    Exit Do
    End If
Loop Until k < 0
End If
End Function

Private Sub ItemCreator(kk As Long, nValue As Variant)
Dim a As Long
Done = False
If ExistKey(kk) Then Exit Sub  ' done is false
a = Malloc()

With PriveSpace(a)
    .Key = kk
    If IsObject(nValue) Then
    Set .iValue = nValue
    Else
    .iValue = nValue
    End If
End With
place HashFunc1(kk), a
index = a
Done = True
End Sub

Property Get Percent()
Percent = 100 * Count / hashlen
End Property
Private Sub place(ByVal b, ByVal a)
    Dim k As Long
    k = Hash(b)
    Hash(b) = a + 1
    PriveSpace(a).Pleft = k
    PriveSpace(a).lastpos = b
End Sub

Private Function HashFunc2(where As Long)
HashFunc2 = MyMod(uintnew(PriveSpace(where).Key) + hashlen + 1, hashlen)
End Function
Private Function HashFunc1(nkey As Long)
HashFunc1 = MyMod(uintnew(nkey) + hashlen + 1, hashlen)
End Function
Private Function HashFunc(a As Long)
HashFunc = MyMod(uintnew(a) + hashlen + 1, hashlen)
End Function
Private Function UINT(ByVal a As Integer) As Long
 Dim b As Integer
 b = a And &HFFFF
 If b < 0 Then
 UINT = CLng(&H10000 + b)
 Else
 UINT = CLng(b)
 End If
 
 End Function

Private Function MyMod(r1 As Double, po) As Double
MyMod = Sgn(r1) * (Int(Abs(r1)) - Int(Int(Abs(r1) / Abs(Int(po))) * Abs(Int(po))))
End Function
Private Function uintnew(ByVal a As Double) As Double
If a > CDbl(2147483647) Then a = CDbl(2147483647)
If a < CDbl(-2147483648#) Then a = CDbl(-2147483648#)
If a < 0 Then
uintnew = 4294967296# + a
Else
uintnew = a
End If
End Function

Private Sub SwapVariant(ByRef a As Variant, ByRef b As Variant)
   Dim t(0 To 3) As Long ' 4 Longs * 4 bytes each = 16 bytes
   CopyMemory t(0), ByVal VarPtr(a), 16
   CopyMemory ByVal VarPtr(a), ByVal VarPtr(b), 16
   CopyMemory ByVal VarPtr(b), t(0), 16
End Sub
' only for tests
Private Function GetRefCount(ByRef vvv) As Long
    If Not IsObject(vvv) Then Exit Function
    Dim obj As IUnknown
    Set obj = vvv
    If obj Is Nothing Then Exit Function
    CopyMemory GetRefCount, ByVal (objptr(obj)) + 4, 4
    GetRefCount = GetRefCount - 2
    Set obj = Nothing
End Function
Public Property Get ReferCount() As Long
ReferCount = GetRefCount(Me)
End Property
Public Property Get KeyToString2() As Variant
If index > -1 Then

    KeyToString2 = PriveSpace(index).Key + Str$(PriveSpace(index).lastpos < toplim) + Str$(PriveSpace(index).Pleft) ' + Str$(Int(Percent * 1000) / 100) + Str$(hashlen) + Str$(count)
End If
End Property
Public Property Get KeyLong() As Long
If index > -1 Then
 KeyLong = PriveSpace(index).Key
End If
End Property
Public Property Get KeyToString() As Variant
If index > -1 Then
    KeyToString = PriveSpace(index).Key
End If
End Property
Public Property Get ReferCountValue() As Long
If index = -1 Then
ElseIf IsObject(PriveSpace(index).iValue) Then
    ReferCountValue = GetRefCount(PriveSpace(index).iValue)
End If
End Property
Public Sub ToStart()
index = 0
Done = Count > 0
End Sub
Public Sub ToEnd()
index = Count - 1
Done = Count > 0
End Sub

Public Sub NextIndex()
Done = False
    If index = -1 Then
 
    Else
        If index < toplim Then Done = True: index = index + 1
    End If

End Sub
Public Sub PrevIndex()
Done = False
    If index = -1 Then
    
    Else
        If index > 0 Then Done = True: index = index - 1
    End If

End Sub
Private Sub Class_Terminate()
    Erase PriveSpace()
End Sub
Public Sub GarbageJob()
Erase PriveSpace()
toplim = -1
ReduceHash -1
End Sub
Private Sub QuickSortItems(Arr() As item, ByVal LB As Long, ByVal UB As Long)
Dim M1 As Long, M2 As Long
Dim Piv As item, Tmp As item '<- adjust types here, when switching to something different than Long
  If UB - LB = 1 Then
     M1 = LB

     If StrComp(Arr(M1).Key, Arr(UB).Key, mSortstyle) = 1 Then Tmp = Arr(M1): Arr(M1) = Arr(UB): Arr(UB) = Tmp
     Exit Sub
  Else
  ' we have unique names
    M1 = (LB + UB) \ 2
    Piv = Arr(M1)
    M1 = LB
   Do While StrComp(Arr(M1).Key, Piv.Key, mSortstyle) = -1: M1 = M1 + 1: Loop
    
  End If
  
  M2 = UB
  Do
    Do While StrComp(Arr(M2).Key, Piv.Key, mSortstyle) = 1: M2 = M2 - 1: Loop

    If M1 <= M2 Then
      Tmp = Arr(M1): Arr(M1) = Arr(M2): Arr(M2) = Tmp 'swap
      M1 = M1 + 1
      M2 = M2 - 1
    End If
    If M1 > M2 Then Exit Do
    Do While StrComp(Arr(M1).Key, Piv.Key, mSortstyle) = -1: M1 = M1 + 1: Loop

  Loop
  If LB < M2 Then QuickSortItems Arr, LB, M2
  If M1 < UB Then QuickSortItems Arr, M1, UB
End Sub
Private Sub QuickSortItemsRev(Arr() As item, ByVal LB As Long, ByVal UB As Long)
Dim M1 As Long, M2 As Long
Dim Piv As item, Tmp As item '<- adjust types here, when switching to something different than Long
  If UB - LB = 1 Then
     M1 = LB

     If StrComp(Arr(M1).Key, Arr(UB).Key, mSortstyle) = -1 Then Tmp = Arr(M1): Arr(M1) = Arr(UB): Arr(UB) = Tmp
     Exit Sub
  Else
  ' we have unique names
    M1 = (LB + UB) \ 2
    Piv = Arr(M1)
    M1 = LB
   Do While StrComp(Arr(M1).Key, Piv.Key, mSortstyle) = 1: M1 = M1 + 1: Loop
    
  End If
  
  M2 = UB
  Do
    Do While StrComp(Arr(M2).Key, Piv.Key, mSortstyle) = -1: M2 = M2 - 1: Loop

    If M1 <= M2 Then
      Tmp = Arr(M1): Arr(M1) = Arr(M2): Arr(M2) = Tmp 'swap
      M1 = M1 + 1
      M2 = M2 - 1
    End If
    If M1 > M2 Then Exit Do
    Do While StrComp(Arr(M1).Key, Piv.Key, mSortstyle) = 1: M1 = M1 + 1: Loop

  Loop
  If LB < M2 Then QuickSortItemsRev Arr, LB, M2
  If M1 < UB Then QuickSortItemsRev Arr, M1, UB
End Sub
Function problem(Speak$) As Boolean
Dim i As Long, k As Long, n As Long, haveproblem As Boolean, countme As Long, countinqueues As Long
Dim noprint As Boolean
noprint = True
If Not noprint Then Debug.Print "************ " + Speak$ + " ***************"
For i = 0 To toplim
If i <> countme Then
If Not noprint Then Debug.Print "----------->Problem<----------"
Exit For
End If
If Hash(PriveSpace(i).lastpos) - 1 = i Then

If Not noprint Then Debug.Print i, PriveSpace(i).Key, PriveSpace(i).lastpos, (Hash(PriveSpace(i).lastpos) - 1) = i, PriveSpace(i).Pleft - 1
countme = countme + 1
If PriveSpace(i).Pleft - 1 >= 0 Then
k = i
Do
If PriveSpace(i).lastpos <> PriveSpace(PriveSpace(k).Pleft - 1).lastpos Then
If Not noprint Then Debug.Print "No link"
problem = True
Exit Function
Else
k = PriveSpace(k).Pleft - 1
If Not noprint Then Debug.Print ">\\\\\\\\\\\\ ", k, PriveSpace(k).Key
countinqueues = countinqueues + 1
End If
If Not PriveSpace(k).Pleft Then Exit Do
Loop
End If
Else
k = Hash(PriveSpace(i).lastpos) - 1  ' top of the list
n = 0
If k < 0 Then
If Not noprint Then Debug.Print "Lost Link"
haveproblem = True

Else
Do While PriveSpace(k).Pleft > 0

n = n + 1
If PriveSpace(k).Pleft - 1 = i Then
If Not noprint Then Debug.Print i, PriveSpace(i).Key, "Hash(" + CStr(PriveSpace(i).lastpos) + ") at queue list(" + Str$(n) + ")"
countme = countme + 1
Exit Do
End If
k = PriveSpace(k).Pleft - 1
If k < 0 Then
If Not noprint Then Debug.Print "Lost Link"
haveproblem = True
Exit Do
End If
Loop
End If
End If
Next i
Debug.Print Count, countme, countinqueues, hashlen, Me.Percent, (countme - countinqueues) / countme * 100
problem = haveproblem
End Function


