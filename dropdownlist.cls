VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "dropdownlist"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Public WithEvents Textbox As myTextBox
Attribute Textbox.VB_VarHelpID = -1
Public WithEvents glistN As gList
Attribute glistN.VB_VarHelpID = -1
Public UseOnlyTheList As Boolean
' you have to make false the tab stop of glist
Event AutoCompleteDone(ByVal this$)
Event PickOther(ByVal this$)
Dim Iam As Boolean
Public AutoComplete As Boolean
Public NoCaseSensitive As Boolean
Public Property Set Container(glistNN As gList)
Set glistN = glistNN
glistNN.enabled = True
glistNN.NoPanRight = True
glistNN.SingleLineSlide = True
glistNN.LeaveonChoose = True
glistNN.LeftMarginPixels = 8
glistNN.VerticalCenterText = True
glistNN.StickBar = True ' try with false - or hold shift to engage false
glistNN.NoFreeMoveUpDown = True
If Not Textbox Is Nothing Then
Textbox.Prompt = ChrW(&H25BC) + " "
End If
End Property
Public Property Get ListText()
ListText = glistN.ListValue
End Property
Public Property Let Label(A$)
Textbox.Prompt = A$ + " " + ChrW(&H25BC) & " "
Textbox.glistN.ShowMe
End Property

Private Sub glistN_RegisterGlist(this As gList)
Dim mo As Object
Set mo = glistN.Parent
If Not mo Is Nothing Then
On Error Resume Next
mo.hookme this
If Err.Number > 0 Then this.NoWheel = True
End If
Set mo = Nothing
End Sub




Private Sub Class_Terminate()
Set Textbox = Nothing
Set glistN = Nothing
End Sub

Private Sub glistN_CheckGotFocus()
Textbox.SkipProcAtExitFocus = True
If UseOnlyTheList Then If Textbox.enabled Then Textbox.glistN.NoCaretShow = False
End Sub
Private Sub glistN_CheckLostFocus()

If Textbox.SkipProcAtExitFocus Then
Textbox.Retired
Textbox.SkipProcAtExitFocus = False
End If
Iam = True
End Sub

Private Sub glistN_KeyDown(KeyCode As Integer, shift As Integer)

If KeyCode = vbKeyLeft Or KeyCode = vbKeyRight Then

Iam = True
glistN.BypassLeaveonChoose = True
Textbox.SetFocus
End If
End Sub

Private Sub glistN_PanLeftRight(Direction As Boolean)
If Direction = True Then
Text = glistN.List(glistN.ListIndex)
End If
End Sub


Private Sub textbox_KeyDown(KeyCode As Integer, shift As Integer)
Dim b$
Iam = False
If KeyCode = vbKeyDown Or KeyCode = vbKeyReturn Then
If glistN.Visible Then glistN.enabled = True: Textbox.SkipProcAtExitFocus = True: glistN.SetFocus: Exit Sub
    KeyCode = 0
    glistN.Visible = True
    glistN.ZOrder
    Textbox.SkipProcAtExitFocus = True
    glistN.SetFocus
  If AutoComplete Then
  glistN.moveto Text
  If glistN.ListIndex < 0 Then
  glistN.ListIndex = 0
  Else
  glistN.ShowThis glistN.ListIndex + 1
  
  End If
  Else
        If glistN.LastSelected >= 0 Then
        glistN.ListIndex = glistN.LastSelected
    Else
        glistN.ListIndex = 0
    End If
End If

ElseIf KeyCode = vbKeyTab Then
Textbox.SkipProcAtExitFocus = False
glistN.Visible = False
ElseIf AutoComplete And KeyCode = vbKeyRight And Textbox.SelStart >= Len(Textbox.Text) Then
b$ = Left$(Textbox.glistN.LastLinePart, 1)
If b$ <> "" Then Textbox.glistN.LastLinePart = Mid$(Textbox.glistN.LastLinePart, 2)
Textbox.Text = Textbox.Text + b$
End If


End Sub


Private Sub TextBox_KeyPress(KeyAscii As Integer)
Iam = False
End Sub

Private Sub textbox_LostFocus()

If UseOnlyTheList Then
''If Iam And TextBox.Enabled Then TextBox.glistN.NoCaretShow = False
Else
Textbox.glistN.NoCaretShow = False
End If
Textbox.glistN.ShowMe
glistN.BypassLeaveonChoose = False
If Iam Then
glistN.Visible = False
Else
If Not glistN.enabled Then glistN.Visible = False: glistN.enabled = True
End If

End Sub
Private Sub textbox_GotFocus()
 Textbox.glistN.NoCaretShow = Not Textbox.enabled
'' TextBox.glistN.BackColor = RGB(100, 200, 160): TextBox.glistN.ShowMe
If glistN.Visible Then
Iam = False
glistN.enabled = False
glistN.BypassLeaveonChoose = False
End If
Dim dummy As Long
End Sub
Private Sub glistN_Selected2(item As Long)
If glistN.ListSep(item) Then Exit Sub
If item >= 0 Then
Textbox.vartext = glistN.List(item): Textbox.SelStart = Len(Textbox.Text) + 1
Textbox.SetFocus
ElseIf item < -1 Then
glistN.Visible = False
End If
End Sub


Private Sub textbox_MouseMove(Button As Integer, shift As Integer, x As Single, y As Single)
If Textbox.glistN.DblClick Then
Iam = False

 Textbox.glistN.ShowMe2

 End If
If Iam Then Exit Sub

If (Button And 1) = 1 And Not glistN.Visible Then
Iam = True
If UseOnlyTheList Then If Textbox.enabled Then Textbox.glistN.NoCaretShow = False:    Textbox.glistN.ShowMe2
Textbox.Locked = True
glistN.Visible = True
glistN.ZOrder
glistN.LeaveonChoose = True
 If AutoComplete Then
  glistN.moveto Text
  If glistN.ListIndex < 0 Then
  glistN.ListIndex = 0
  Else
  glistN.ShowThis glistN.ListIndex + 1
  End If
  Else
       If glistN.LastSelected >= 0 Then
        glistN.ListIndex = glistN.LastSelected
    Else
        glistN.ListIndex = 0
    End If
    End If
    Textbox.SkipProcAtExitFocus = True
    glistN.SetFocus
Textbox.Locked = False
Iam = False
End If
End Sub
Private Sub glistN_SyncKeyboard(item As Integer)
Static f As Long
f = glistN.FindItemStartWidth(Chr$(item), Not NoCaseSensitive, f + 1)
If f >= 0 Then
glistN.ScrollTo f - glistN.lines / 2, f + 1
 RaiseEvent PickOther(glistN.ListValue)
Else
f = -1
End If
End Sub

Private Sub TextBox_ValidString(ThatString As String, setpos As Long)
Dim l As Boolean
If Not AutoComplete Then Exit Sub
Dim f As Long
Iam = True
If ThatString = "" And Textbox.glistN.LastLinePart <> "" Then
f = glistN.FindItemStartWidth(Textbox.glistN.LastLinePart, Not NoCaseSensitive, 0)

Else
f = glistN.FindItemStartWidth(ThatString, Not NoCaseSensitive, 0)
End If
If f >= 0 Then
If Not NoCaseSensitive Then ThatString = Left$(glistN.List(f), Len(ThatString))
Textbox.glistN.LastLinePart = Mid$(glistN.List(f), Len(ThatString) + 1)
RaiseEvent AutoCompleteDone(glistN.List(f))
glistN.enabled = False
glistN.ScrollTo f - glistN.lines / 2, f + 1
glistN.enabled = True
glistN.ShowMe

Else
If UseOnlyTheList Then
l = Textbox.glistN.enabled
Textbox.glistN.enabled = False
Textbox.glistN.LastLinePart = Textbox.vartext + Textbox.glistN.LastLinePart
ThatString = ""
setpos = 0
Textbox.glistN.enabled = l
Else
Textbox.glistN.LastLinePart = ""
End If
End If
End Sub

Public Property Get Text() As String
Text = Textbox.vartext + Textbox.glistN.LastLinePart
End Property

Public Property Let Text(ByVal RHS As String)
 Textbox.glistN.LastLinePart = ""
Textbox.vartext = RHS

End Property
Public Property Get Locked() As Boolean
Locked = Textbox.Locked
End Property

Public Property Let Locked(ByVal RHS As Boolean)
If RHS = Textbox.Locked Then Exit Property
If RHS Then
If Not Textbox.Locked Then
glistN.BypassLeaveonChoose = True
Textbox.SetFocus
glistN.BypassLeaveonChoose = False
End If
End If
Textbox.Locked = RHS
End Property
Public Sub additem(A$)
glistN.additemFast A$
Text = A$
End Sub

Public Sub additemFast(A$)
glistN.additemFast A$
End Sub
Public Sub Shutdown()
'new
glistN.Shutdown
glistN.enabled = False
Textbox.Locked = True

End Sub

