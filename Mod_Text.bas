Attribute VB_Name = "Module1"
Option Explicit
Private Declare Sub DisableProcessWindowsGhosting Lib "user32" ()
Public Interrupted As Boolean
Dim NoOptimum As Boolean
Public Declare Function SelectClipRgn Lib "gdi32" (ByVal hDC As Long, ByVal hRgn As Long) As Long
Public UseEsc As Boolean
' 1 to 32 for layers
' 0 for DIS
' 33 for Back
Public Const DisForm = 0
Public Const BackForm = -1
Public Const PrinterPage = -2
Public players(-2 To 32) As basket  ' tag number not actual number of dsprite()
Private Declare Function GdiFlush Lib "gdi32" () As Long
Public m_bInIDE As Boolean
Public UKEY$
Public TestShowCode As Boolean, TestShowSub As String, TestShowStart As Long
Public feedback$, FeedbackExec$, feednow$ ' for about$
Global Const VerMajor = 8
Global Const VerMinor = 0
Global Const Revision = 138
Private Const doc = "Document"
Public UserCodePage As Long
Public cLine As String  ' it was public in form1
Public casesensitive As Boolean  ' for files
Public userfiles As String
Public TweakLang As Long
Public notweak As Boolean
Public extreme As Boolean
Public taskmainonly As Boolean
Public TaskMain As Boolean
Global Const gintMAX_SIZE& = 255                        'Maximum buffer size
Global Const gstrSEP_DIR$ = "\"
Global DIALOGSHOW As Boolean
' Directory separator character
Public HelpStack As New basetask ' from 6.5.1
Public Const gstrSEP_URLDIR$ = "/"
Public REFRESHRATE As Double
Public RRCOUNTER As Double
Public BLOCKkey As Boolean
Public Const novalidstr = "+-/*!?_()[]&$#@;" & """"

Public tempList2delete As String
Public nnn$, basickey$, homepage$
Private Const LOCALE_SENGLANGUAGE& = 4097
Private Const LOCALE_SLANGUAGE& = &H2 '  localized name of language
Public shortlang As Boolean
Public LEVCOLMENU As Long
 Declare Function ExpandEnvironmentStrings _
   Lib "kernel32" Alias "ExpandEnvironmentStringsA" _
   (ByVal lpSrc As String, ByVal lpDst As String, _
   ByVal nsize As Long) As Long
Private Declare Function GetTempFileNameW Lib "kernel32" _
    (ByVal lpszPath As Long, ByVal lpPrefixString As Long, _
     ByVal wUnique As Long, ByVal lpTempFileName As Long) _
     As Long
     
Private Const UNIQUE_NAME = &H0
Public taskid As Long, kill2$, para$
Private Declare Function timeGetTime Lib "winmm.dll" () As Long
Public sRec As Object
Public defFontname As String
Private pnum As Long
Public my_system As Enum_OperatingPlatform
Public Declare Function Beeper Lib "kernel32" Alias "Beep" _
  (ByVal dwFreq As Long, ByVal dwDuration As Long) As Long
Private oprinter As New cDIBSection
Const MAX_FILENAME_LEN As Long = 260 * 2 - 1
Public beeperBEAT As Long
Private funcdeep As Double
Private deep As Double
Private mys As String
Private Declare Function WinExec Lib "kernel32" (ByVal lpCmdLine As String, ByVal nCmdShow As Long) As Long
Public needset As Boolean
Public cnt As Boolean
Public exWnd As Long

Public Declare Function GetForegroundWindow Lib "user32" () As Long
Public Declare Function FindExecutable Lib "shell32.dll" Alias "FindExecutableW" (ByVal lpFile As Long, ByVal lpDirectory As Long, ByVal lpResult As Long) As Long
Public expl As Long

Public l_complete As Boolean
Public s_complete As Boolean
Public ThereIsAPrinter As Boolean
Public MOUT As Boolean
Public DXP As Long
Public DYP As Long
Public SLOW As Boolean
Public pname As String
Public port As String

Public FKey As Long
Public FK$(1 To 13)
Public strTemp As String
Public STEXIT As Boolean
Public STbyST As Boolean
Public STq As Boolean
Public pagio$, pagiohtml$
Public SubName$
Public VarName$
Public arrname$
Public cLid As Long 'current id for app id

''
Public neoArray As New Collection
Public basestack1 As New basetask ' this is the global stack
Public sb2used As Long
Dim SB() As String, SBC() As Long, sbgroup() As String
Public var2used As Long
Private var() As Variant

Public FLEN(512) As Long
Public Uni(512) As Boolean
Public globalstack As New mStiva

Public IERUN As Boolean
Public IEX As Long
Public IEY As Long
Public IESizeX As Long
Public IESizeY As Long
Public AVIRUN As Boolean
Public AVIUP As Boolean
Public aviX As Long
Public aviY As Long
Public UseAviXY As Boolean
Public UseAviSize As Boolean
Public AviSizeX As Long
Public AviSizeY As Long
Public mycoder As New coder
' play music
Public voices$(0 To 15), BEATS(0 To 15) As Double



Const GFSR_SYSTEMRESOURCES = 0
Const GFSR_GDIRESOURCES = 1
Const GFSR_USERRESOURCES = 2
Declare Function MessageBeep Lib "user32" (ByVal wType As Long) As Long


Declare Function SetLocaleInfo Lib "kernel32" Alias "SetLocaleInfoA" (ByVal Locale As Long, ByVal LCType As Long, ByVal lpLCData As String) As Long
Declare Function GetLocaleInfo Lib "kernel32" Alias "GetLocaleInfoA" (ByVal Locale As Long, ByVal LCType As Long, lpLCData As String, ByVal cchData As Long) As Long
Declare Function GetTempPath Lib "kernel32" Alias "GetTempPathW" (ByVal nBufferLength As Long, ByVal lpBuffer As Long) As Long
Public Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nsize As Long) As Long


Private Const LOCALE_USER_DEFAULT = 0

Private Const LOCALE_SDECIMAL = &HE
Private Const LOCALE_SGROUPING = &H10
Private Const LOCALE_STHOUSAND = &HF
Private Const LOCALE_SMONDECIMALSEP = &H16
Private Const LOCALE_SMONTHOUSANDSEP = &H17
Private Const LOCALE_SMONGROUPING = &H18
Public trace As Boolean
Const CSIDL_DESKTOP = &H0
Const CSIDL_PROGRAMS = &H2
Const CSIDL_CONTROLS = &H3
Const CSIDL_PRINTERS = &H4
Const CSIDL_PERSONAL = &H5
Const CSIDL_FAVORITES = &H6
Const CSIDL_STARTUP = &H7
Const CSIDL_RECENT = &H8
Const CSIDL_SENDTO = &H9
Const CSIDL_BITBUCKET = &HA
Const CSIDL_STARTMENU = &HB
Const CSIDL_DESKTOPDIRECTORY = &H10
Const CSIDL_DRIVES = &H11
Const CSIDL_NETWORK = &H12
Const CSIDL_NETHOOD = &H13
Public Const CSIDL_FONTS = &H14

Const CSIDL_TEMPLATES = &H15
Const MAX_PATH = 260
Private Type SHITEMID
    cb As Long
    abID As Byte
End Type
Private Type ITEMIDLIST
    mkid As SHITEMID
End Type
Private Declare Function SHGetSpecialFolderLocation Lib "shell32.dll" (ByVal hWndOwner As Long, ByVal nFolder As Long, pidl As ITEMIDLIST) As Long
Private Declare Function SHGetPathFromIDList Lib "shell32.dll" Alias "SHGetPathFromIDListA" (ByVal pidl As Long, ByVal pszPath As String) As Long

Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Public Declare Function SetTimer Lib "user32" _
       (ByVal hWnd As Long, ByVal nIDEvent As Long, _
        ByVal uElapse As Long, ByVal lpTimerFunc As Long) As Long

Public Declare Sub KillTimer Lib "user32" _
       (ByVal hWnd As Long, ByVal nIDEvent As Long)
''Public Type tagInitCommonControlsEx
 ''  lngSize As Long
  '' lngICC As Long
''End Type
''Public Declare Function InitCommonControlsEx Lib "comctl32.dll" (iccex As tagInitCommonControlsEx) As Boolean
''Public Const ICC_USEREX_CLASSES = &H200
' APPLICATION TASK MASTER
Public MasterTimer As Double
Public TaskMaster As TaskMaster
Public Declare Function midiOutClose Lib "winmm.dll" (ByVal hMidiOut As Long) As Long
Public Declare Function midiOutOpen Lib "winmm.dll" (lphMidiOut As Long, ByVal uDeviceID As Long, ByVal dwCallback As Long, ByVal dwInstance As Long, ByVal dwFlags As Long) As Long
Public Declare Function midiOutShortMsg Lib "winmm.dll" (ByVal hMidiOut As Long, ByVal dwMsg As Long) As Long
Public hmidi As Long
Public mute As Boolean
Public beat As Long
Public baseNote As Long
Public prof As New clsProfiler
Public grandscr As Collection
Public Declare Function GetACP Lib "kernel32" () As Long  ' 1253 in my computer

Public Declare Function GetLocaleInfoW Lib "kernel32" (ByVal Locale As Long, ByVal LCType As Long, ByVal lpLCData As Long, ByVal cchData As Long) As Long
Private Declare Function GetKeyboardLayout& Lib "user32" (ByVal dwLayout&) ' not NT?
Private Const DWL_ANYTHREAD& = 0
Const LOCALE_ILANGUAGE = 1
'Valid dwCmpFlags
Private Declare Function LCMapStringW Lib "kernel32.dll" (ByVal Locale As Long, ByVal dwMapFlags As Long, ByVal lpSrcStr As Long, ByVal cchSrc As Long, Optional ByVal lpDestStr As Long, Optional ByVal cchDest As Long) As Long
Private Declare Function SysReAllocStringLen Lib "oleaut32.dll" (ByVal pBSTR As Long, Optional ByVal pszStrPtr As Long, Optional ByVal Length As Long) As Long

Function enthesi(bstack As basetask, rest$) As String
'first is the string "label {0} other {1}
Dim counter As Long, pat$, final$, pat1$, pl1 As Long, pl2 As Long
Dim q$, p As Double, P1 As Double, pd$
If IsStrExp(bstack, rest$, final$) Then
  If FastSymbol(rest$, ",") Then
    Do
    pl2 = 1
        pat$ = "{" + CStr(counter)
       pat1$ = pat$ + ":"
        pat$ = pat$ + "}"
        If IsStrExp(bstack, rest$, q$) Then
            final$ = Replace$(final$, pat$, q$)
            If Not FastSymbol(rest$, ",") Then Exit Do
        ElseIf IsExp(bstack, rest$, p) Then
again1:
        pl2 = InStr(pl2, final$, pat1$)
        If pl2 > 0 Then
        pl1 = InStr(pl2, final$, "}")
        P1 = Val("0" + Mid$(final$, pl2 + Len(pat1$)))
        If P1 < 0 Then P1 = 22
        If P1 > 22 Then P1 = 22
      pd$ = CStr(MyRound(p, P1))
      If InStr(pd$, "E") > 0 Or InStr(pd$, "e") > 0 Then '' we can change e to greek �
      pd$ = Format$(p, "#." + String$(P1, "#") + "E+####")
      End If
            final$ = Replace$(final$, Mid$(final$, pl2, pl1 - pl2 + 1), pd$)
            GoTo again1
        Else
            final$ = Replace$(final$, pat$, CStr(p))
            End If
            If Not FastSymbol(rest$, ",") Then Exit Do
        Else
            Exit Do
        End If
        counter = counter + 1
    Loop
    End If
End If
enthesi = final$
End Function
Public Function kUpper(A$, p As Double) As String
'idea from Bonnie West, FROM VBFORUMS
Dim nsize As Long
    nsize = Len(A$)
    If nsize Then SysReAllocStringLen VarPtr(kUpper), , nsize Else Exit Function
    Const LCMAP_UPPERCASE = &H200&
Dim mLid As Long
If p = 0 Then
mLid = cLid
Else
mLid = p
End If
If p = 1032 Then
If osnum >= System_Windows_Vista Then A$ = Replace(A$, "�", "�")
Dim i As Long
For i = 1 To Len(A$)
Select Case AscW(Mid$(A$, i, 1))
Case 902
Mid$(A$, i, 1) = ChrW(913)
Case 904
Mid$(A$, i, 1) = ChrW(917)
Case 906
Mid$(A$, i, 1) = ChrW(921)
Case 912
Mid$(A$, i, 1) = ChrW(921)
Case 905
Mid$(A$, i, 1) = ChrW(919)
Case 908
Mid$(A$, i, 1) = ChrW(927)
Case 911
Mid$(A$, i, 1) = ChrW(937)
Case 910
Mid$(A$, i, 1) = ChrW(933)
Case 940
Mid$(A$, i, 1) = ChrW(913)
Case 941
Mid$(A$, i, 1) = ChrW(917)
Case 943
Mid$(A$, i, 1) = ChrW(921)
Case 942
Mid$(A$, i, 1) = ChrW(919)
Case 972
Mid$(A$, i, 1) = ChrW(927)
Case 974
Mid$(A$, i, 1) = ChrW(937)
Case 973
Mid$(A$, i, 1) = ChrW(933)
Case 962
If osnum >= System_Windows_Vista Then
Mid$(A$, i, 1) = ChrW(963)
Else
Mid$(A$, i, 1) = ChrW(931)
End If
End Select

Next i
End If
    nsize = LCMapStringW(mLid, LCMAP_UPPERCASE, StrPtr(A$), nsize, StrPtr(kUpper), nsize)
End Function

Public Function kUpper2(A$, p As Double) As String
'idea from Bonnie West, FROM VBFORUMS
Dim nsize As Long
    nsize = Len(A$)
    If nsize Then SysReAllocStringLen VarPtr(kUpper2), , nsize Else Exit Function
    Const LCMAP_UPPERCASE = &H200&
Dim mLid As Long
If p = 0 Then
mLid = cLid
Else
mLid = p
End If
If p = 1032 Then
''If osnum >= System_Windows_Vista Then a$ = Replace(a$, "�", "�")
Dim i As Long
For i = 1 To Len(A$)
 Select Case AscW(Mid$(A$, i, 1))
Case 902
Mid$(A$, i, 1) = ChrW(913)
Case 904
Mid$(A$, i, 1) = ChrW(917)
Case 906
Mid$(A$, i, 1) = ChrW(921)
Case 912
Mid$(A$, i, 1) = ChrW(921)
Case 905
Mid$(A$, i, 1) = ChrW(919)
Case 908
Mid$(A$, i, 1) = ChrW(927)
Case 911
Mid$(A$, i, 1) = ChrW(937)
Case 910
Mid$(A$, i, 1) = ChrW(933)
Case 940
Mid$(A$, i, 1) = ChrW(913)
Case 941
Mid$(A$, i, 1) = ChrW(917)
Case 943
Mid$(A$, i, 1) = ChrW(921)
Case 942
Mid$(A$, i, 1) = ChrW(919)
Case 972
Mid$(A$, i, 1) = ChrW(927)
Case 974
Mid$(A$, i, 1) = ChrW(937)
Case 973
Mid$(A$, i, 1) = ChrW(933)
Case 962
Mid$(A$, i, 1) = ChrW(931)
End Select
Next i


End If
    nsize = LCMapStringW(mLid, LCMAP_UPPERCASE, StrPtr(A$), nsize, StrPtr(kUpper2), nsize)
End Function
Public Function klower(A$, p As Double) As String
Const LCMAP_LOWERCASE As Long = &H100
Dim nsize As Long
    nsize = Len(A$)
    If nsize Then SysReAllocStringLen VarPtr(klower), , nsize Else Exit Function

Dim mLid As Long
If p = 0 Then
mLid = cLid
Else
mLid = p
End If
nsize = LCMapStringW(mLid, LCMAP_LOWERCASE, StrPtr(A$), nsize, StrPtr(klower), nsize)
If p = 1032 Then
A$ = A$ & Chr(0)
A$ = Replace(A$, "�" & Chr(0), "�")
A$ = Replace(A$, Chr(0), "")
A$ = Replace(A$, "� ", "� ")
A$ = Replace(A$, "�$", "�$")
A$ = Replace(A$, "�&", "�&")
A$ = Replace(A$, "�.", "�.")
A$ = Replace(A$, "�(", "�(")
A$ = Replace(A$, "�_", "�_")
A$ = Replace(A$, "�/", "�/")
A$ = Replace(A$, "�\", "�\")
A$ = Replace(A$, "�-", "�-")
A$ = Replace(A$, "�+", "�+")
A$ = Replace(A$, "�*", "�*")
A$ = Replace(A$, "�" & vbCr, "�" & vbCr)
A$ = Replace(A$, "�" & vbLf, "�" & vbLf)


End If
klower = A$
End Function



Public Function GetSpecialfolder(CSIDL As Long) As String
    Dim r As Long
    Dim IDL As ITEMIDLIST, NOERROR As Long, path$
    'Get the special folder
    r = SHGetSpecialFolderLocation(100, CSIDL, IDL)
    If r = NOERROR Then
        'Create a buffer
        path$ = Space$(512)
        'Get the path from the IDList
        r = SHGetPathFromIDList(ByVal IDL.mkid.cb, ByVal path$)
        'Remove the unnecessary chr$(0)'s
        GetSpecialfolder = mylcasefILE(Left$(path, InStr(path, Chr$(0)) - 1))
        Exit Function
    End If
    GetSpecialfolder = ""
End Function
Sub MakeArray(basestack As basetask, frm$, o As Long, rest$, pppp As mArray, Optional lcl As Boolean = False, Optional globalonly As Boolean = False) 'global
Dim p As Double, x As Double, i As Long, f As Long, s$
If MaybeIsSymbol(rest$, ")") Then rest$ = "0" + rest$
    Select Case o
    Case 5, 6, 7
    If lcl Then
    
      GlobalArr basestack, HERE$ & "." + basestack.GroupName & frm$, rest$, i, f, True
    Else
    GlobalArr basestack, basestack.GroupName & frm$, rest$, i, f, True
    End If
    p = i
    If i < 0 Then o = 0
    Case Else
    o = 0
    End Select

    
    Select Case o
    Case 5
        x = 0
      If FastSymbol(rest$, "=") Then
    If IsExp(basestack, rest$, x) Then
    
    If neoGetArray(basestack, frm$, pppp, , globalonly, Not lcl) Then   '' basestack.GroupName & f
         If Not basestack.LastObj Is Nothing Then
                                If Typename(basestack.LastObj) = "Group" Then
                                Set pppp.GroupRef = basestack.LastObj
                                 pppp.IHaveClass = True
                                Set basestack.LastObj = Nothing
                                pppp.SerialItem 0, 0, 3
                                End If
     Else
            pppp.SerialItem x, 0, 3
    End If
    End If
    Else
    o = 0
    End If
    End If

    Case 7
    x = 0
    If FastSymbol(rest$, "=") Then
    If IsExp(basestack, rest$, x) Then
   If neoGetArray(basestack, frm$, pppp, , Not lcl) Then  '' basestack.GroupName &
    pppp.SerialItem Int(x), 0, 3
    End If
    Else
    o = 0
    End If
    End If
    Case 6
        s$ = ""
    If FastSymbol(rest$, "=") Then
    If IsStrExp(basestack, rest$, s$) Then
   If neoGetArray(basestack, frm$, pppp, , Not lcl) Then ''basestack.GroupName &
    pppp.SerialItem s$, 0, 3
    End If
    Else
    o = 0
    End If
    End If
    End Select
    If o = 0 Then
      MyEr "Array dimensions missing ", "� ������� ��� ���� ���������� "
    rest$ = basestack.GroupName & frm$ & rest$
    End If
End Sub

Function MaybeIsSymbol2(A$, c$) As Boolean
'NO CASE DEDECT
Dim i As Long, j As Long
''If a$ = "" Then Exit Function
Dim b() As Byte  ' 2 bytes
Dim D() As Byte
''copy one time
b() = A$
D() = " "
For i = 0 To UBound(b()) - 1 Step 2
If D(0) <> b(i) Or Not b(i + 1) = 0 Then Exit For
Next i

D() = c$
If D(1) <> 0 Then
Do While j < UBound(D()) And i < UBound(b())
If D(j) = b(i) Then
i = i + 1: j = j + 1
Else
i = 0  ' do nothing
Exit Do
End If
Loop
Else
Do While j < UBound(D()) And i < UBound(b())
If D(j) = b(i) Then
i = i + 2: j = j + 2
Else
i = 0  ' do nothing
Exit Do
End If
Loop
End If
If i > 0 Then A$ = Mid$(A$, i \ 2)
If j >= UBound(D()) Then
MaybeIsSymbol2 = True
End If
End Function

Sub MyMode(scr As Object)
Dim x1 As Long, y1 As Long
On Error Resume Next
With players(GetCode(scr))
    x1 = scr.Width
    y1 = scr.Height
    If scr.name = "Form1" Then
    DisableTargets q(), -1
    
    ElseIf scr.name = "DIS" Then
    DisableTargets q(), 0
    
    ElseIf scr.name = "dSprite" Then
    DisableTargets q(), Val(scr.Index)
    End If

    If .SZ < 4 Then .SZ = 4
        Err.clear
        scr.Font.Size = .SZ
        If Err.Number > 0 Then
                MYFONT = "ARIAL"
                scr.Font.name = MYFONT
                scr.Font.charset = .charset
                scr.Font.name = MYFONT
                scr.Font.charset = .charset
        End If
        .uMineLineSpace = .MineLineSpace
        FrameText scr, .SZ, x1, y1, .Paper
    .currow = 0
    .curpos = 0
    .XGRAPH = 0
    .YGRAPH = 0
End With
End Sub

Function ProcSave(basestack As basetask, rest$, Lang As Long) As Boolean
Dim pa$, w$, s$, col As Long, prg$, x1 As Long, par As Boolean
On Error Resume Next
If lckfrm <> 0 Then MyEr "Save is locked", "� ���������� ����� ����������": rest$ = "": Exit Function

x1 = Abs(IsLabelBig(basestack, rest$, pa$, , s$))

If x1 <> 1 Then
rest$ = pa$ + rest$: x1 = IsStrExp(basestack, rest$, pa$)
Else
pa$ = s$: s$ = ""
End If

If x1 <> 0 Then
        If SubName$ = "" Or pa$ = "" Then MyEr "Nothing to save", "��� ������� ���� �� ����":                Exit Function
        If ExtractType(pa$) = "gsb" Then pa$ = ExtractPath(pa$) + ExtractNameOnly(pa$)
        If ExtractPath(pa$) <> "" Then
                If InStr(ExtractPath(pa$), mcd) <> 1 Then pa$ = pa$ & ".gsb" Else pa$ = pa$ & ".gsb"
        Else
                pa$ = mcd + pa$ & ".gsb"
        End If
        If Not WeCanWrite(pa$) Then Exit Function
        w$ = SubName$
        Do While IsString(basestack, w$, s$)
                If InStr(s$, "()") > 0 Then
                s$ = Left$(s$, InStr(s$, "()") - 1) + Mid$(s$, InStr(s$, "()") + 2)
                col = Val(Mid$(s$, InStr(s$, " ") + 1))
                If Right$(SB(col), 2) <> vbCrLf Then SB(col) = SB(col) + vbCrLf
                If Lang Then
                        If Not blockCheck(SB(col), DialogLang, "Function " & Left$(s$, InStr(s$, " ") - 1) + "()" + vbCrLf) Then Exit Function
                                prg$ = "FUNCTION " & Left$(s$, InStr(s$, " ") - 1) & " {" & SB(col) & "}" & vbCrLf + prg$
                        Else
                                If Not blockCheck(SB(col), DialogLang, "��������� " & Left$(s$, InStr(s$, " ") - 1) + "()" + vbCrLf) Then Exit Function
                                prg$ = "��������� " & Left$(s$, InStr(s$, " ") - 1) & " {" & SB(col) & "}" & vbCrLf + prg$
                        End If
                Else
                        col = Val(Mid$(s$, InStr(s$, " ") + 1))
                        If Right$(SB(col), 2) <> vbCrLf Then SB(col) = SB(col) + vbCrLf
                        If Lang Then
                                If Not blockCheck(SB(col), DialogLang, "Module " & Left$(s$, InStr(s$, " ") - 1) + vbCrLf) Then Exit Function
                                prg$ = "MODULE " & Left$(s$, InStr(s$, " ") - 1) & " {" & SB(col) & "}" & vbCrLf + prg$
                        Else
                                If Not blockCheck(SB(col), DialogLang, "����� " & Left$(s$, InStr(s$, " ") - 1) + vbCrLf) Then Exit Function
                                prg$ = "����� " & Left$(s$, InStr(s$, " ") - 1) & " {" & SB(col) & "}" & vbCrLf + prg$
                        End If
                End If
        Loop
        w$ = ""
        If FastSymbol(rest$, "@@") Then
            ' default password  - one space only - coder use default internal password
                If Not IsStrExp(basestack, rest$, w$) Then w$ = " "
        ElseIf FastSymbol(rest$, "@") Then
                ' One space only
                w$ = " "
        End If
        par = False
        If FastSymbol(rest$, ",") Then
                If Abs(IsLabel(basestack, rest$, s$)) = 1 Then
                        prg$ = prg$ & s$
                ElseIf FastSymbol(rest$, "{") Then
                        prg$ = prg$ & block(rest$)
                        If Not FastSymbol(rest$, "}") Then Exit Function
                End If
        End If
        ' reuse s$, col$
        If Len(w$) > 1 Then  'scrable col by George
                s$ = "": For col = 1 To Int((33 * Rnd) + 1): s$ = s$ & Chr(65 + Int((23 * Rnd) + 1)): Next col
                ' insert a variable length label......to make a variable length file
                prg$ = s$ & ":" & vbCrLf + prg$
                prg$ = mycoder.encryptline(prg$, w$, Len(prg$) Mod 33)
                par = True
        ElseIf Len(w$) = 1 Then   ' I have to check that...
                s$ = "":   For col = 1 To Int((33 * Rnd) + 1): s$ = s$ & Chr(65 + Int((23 * Rnd) + 1)): Next col
                prg$ = s$ & ":" & vbCrLf + prg$
                prg$ = mycoder.must1(prg$)
                par = True
        End If
        s$ = ""
        If CFname(pa$) <> "" Then
                If Lang = 1 Then
                        If MsgBoxN("Replace " + ExtractNameOnly(pa$), vbOKCancel, MesTitle$) <> vbOK Then
                        MyEr "File not saved -1005", "��� ������ �� ������ -1005"
                        ProcSave = True
                        Exit Function
                        End If
                Else
                        If MsgBoxN("������ " + ExtractNameOnly(pa$), vbOKCancel, MesTitle$) <> vbOK Then
                        MyEr "File not saved -1005", "��� ������ �� ������ -1005"
                        ProcSave = True
                        Exit Function
                        End If
                End If
                s$ = "*"
        End If
        If Not WeCanWrite(pa$) Then Exit Function
        If par Then
                If s$ = "*" Then
                       '' If CFname(ExtractPath(pa$) & ExtractNameOnly(pa$) & ".bck") <> "" Then Kill GetDosPath(ExtractPath(pa$) & ExtractNameOnly(pa$) & ".bck"): Sleep 30
                        MakeACopy pa$, ExtractPath(pa$) & ExtractNameOnly(pa$) & ".bck"
                End If
                If Not SaveUnicode(pa$, prg$, 0) Then BadFilename
                Else
                If s$ <> "" Then
                        ''If CFname(ExtractPath(pa$) & ExtractNameOnly(pa$) & ".bck") <> "" Then Kill GetDosPath(ExtractPath(pa$) & ExtractNameOnly(pa$) & ".bck"):  Sleep 30
                        MakeACopy pa$, ExtractPath(pa$) & ExtractNameOnly(pa$) & ".bck"
                End If
                ProcSave = SaveUnicode(pa$, prg$, 2)  ' 2 = utf-8 standard save mode for version 7
                If HERE$ = "" Then LASTPROG$ = pa$
        End If
 ProcSave = True
Else
MyEr "A name please or use Ctrl+A to perform SAVE COMMAND$  (the last loading)", "��� ����� ��������, � ���� �� ctrl+� ��� �� ������������ �� �� ����� ��� ������������ ��� ��������� ���������"
End If

End Function

Sub PushStage(basestack As basetask, DUMMY As Boolean)
        With basestack.RetStack
                basestack.SubLevel = basestack.SubLevel + 1

                If DUMMY Then
                        .PushVal 0
                        .PushVal 0
                        .PushVal 0
                        .PushVal 0
                        .PushVal 0
                        .PushVal 0
                        .PushVal -2
                Else
                        .PushVal Len(arrname$)
                        .PushVal Len(SubName$)
                        .PushVal Len(VarName$)
                        .PushVal CLng(neoArray.Count)
                        .PushVal CLng(sb2used)
                        .PushVal CLng(var2used)
                        .PushVal -1
End If
        End With
End Sub
Sub PopStage(basestack As basetask)
Dim arrs As Long
Dim kolpo As Boolean, bb$, Once As Boolean, dd As Variant
        With basestack.RetStack
        If .LookTopVal = -1 Then
        basestack.SubLevel = basestack.SubLevel - 1
        arrs = .PopVal  '' drop it
                    var2used = CLng(.PopVal)
                    sb2used = CLng(.PopVal)
                    arrs = CLng(.PopVal)
                    Do While arrs < neoArray.Count
                    neoArray.remove neoArray.Count
                    Loop
                    VarName$ = Left$(VarName$, CLng(.PopVal))
                    SubName$ = Right$(SubName$, CLng(.PopVal))
                    arrname$ = Left$(arrname$, CLng(.PopVal))
        ElseIf .LookTopVal = -2 Then
        basestack.SubLevel = basestack.SubLevel - 1
        .DROP 7
        Else
        End If
        End With
End Sub

Function RevisionPrint(basestack As basetask, rest$, xa As Long, Lang As Long) As Boolean
Dim scr As Object, oldCol As Long, oldFTEXT As Long, oldFTXT As String, oldpen As Long
Dim par As Boolean, i As Long, f As Long, p As Double, W4 As Boolean, pn&, s$
Dim o As Long, W3 As Long, x1 As Long, y1 As Long, x As Double, ColOffset As Long
Dim work As Boolean, work2 As Boolean, skiplast As Boolean
Set scr = basestack.Owner
W3 = -1
Dim basketcode As Long, prive As basket
basketcode = GetCode(scr)
prive = players(basketcode)
With prive
PlaceBasketPrive scr, prive
scr.FontTransparent = True
On Error GoTo 0
Dim opn&
par = True
If IsSymbol(rest$, "#") Then
   If IsExp(basestack, "#" + Left$(rest$, 6), p) Then
   rest$ = "#" + rest$
   Else
        If IsExp(basestack, rest$, p) Then
                     f = p Mod 512
                     If Not FastSymbol(rest$, ",") Then Exit Function
                     par = False
             End If
    End If
Else
If Not IsLabelSYMB3(rest$, s$) Then
                    f = 0
Else
Select Case Lang
Case 1
Select Case UCase(s$)
        Case "OVER"
        f = 1
        Case "UNDER"
        f = 2
        Case "PART"
        f = 3
        Case Else
        rest$ = s$ + rest$
        f = 0
        End Select
Case 0, 2
        Select Case myUcase(s$, True)
        Case "����"
        f = 1
        Case "���"
        f = 2
        Case "�����"
        f = 3
        Case Else
        rest$ = s$ + rest$
        f = 0
        End Select
        End Select
        If f > 0 And .lastprint Then
        .lastprint = False
        
        GetXYb scr, prive, x1&, y1&
        If f <> 2 Then If x1& > 0 Or y1& >= .mx Then crNew basestack, prive
        End If
If f = 1 Then  ''
work = True
oldCol = .Column
scr.Line (0&, .currow * .Yt)-((.mx - 1) * .Xt + .Xt * 2, (.currow) * .Yt + .Yt - 2 * DYP), .Paper, BF
LCTbasket scr, prive, .currow, 0&
.Column = .mx - 1
W4 = True
oldFTEXT = .FTEXT
oldFTXT = .FTXT
oldpen = .mypen
pn& = 2
.FTEXT = 4
ElseIf f = 2 Then
work = True
oldCol = .Column
scr.Line (0&, (.currow) * .Yt + .Yt - DYP)-((.mx - 1) * .Xt + .Xt * 2, (.currow) * .Yt + .Yt - 1 * DYP), .mypen, BF
crNew basestack, prive
LCTbasketCur scr, prive
W4 = True
oldFTEXT = .FTEXT
oldFTXT = .FTXT
oldpen = .mypen
.FTEXT = 4
pn& = 2
ElseIf f = 3 Then
' we print in a line with lost chars, so controling the start of printing
' we can render text, like from a view port Some columns are hidden because the exit out of screen;
work = True
oldCol = .Column
LCTbasket scr, prive, .currow, 0&
W4 = True
oldFTEXT = .FTEXT
oldFTXT = .FTXT
.FTEXT = 4
oldpen = .mypen
End If
f = 0
End If

End If
If W4 Then pn& = 2 Else pn& = 0

s$ = ""
If .FTEXT > 3 And .curpos >= .mx And Not W4 Then
crNew basestack, prive
W3 = 0
End If
If FastSymbol(rest$, ";") Then
            If .lastprint Then
            .lastprint = False
            LCTbasketCur scr, prive
            crNew basestack, prive
            End If
ElseIf .lastprint Then
If .FTEXT > 3 Then pn& = 7: GoTo newntrance

End If



Do

    If IsExp(basestack, rest$, p) Then
            If .lastprint Then opn& = 5
''            .lastprint = False
            pn& = 1
            If .Column = 1 Then
            
            pn& = 6
            End If
            
    ElseIf LastErNum <> 0 Then
            .lastprint = False
            RevisionPrint = LastErNum = -2
            Exit Function
    ElseIf IsStrExp(basestack, rest$, s$) Then
      
    If .lastprint Then opn& = 5
            pn& = 2
''            .lastprint = False
            
    ElseIf LastErNum <> 0 Then
             RevisionPrint = LastErNum = -2
    Exit Function
    ElseIf FastSymbol(rest$, "~(") Then  ' means combine
        ' get the color and then look for @( parameters)
        W3 = -1
    If par Then  ' par is false when we print in files, we can't use color;
   
                 If IsExp(basestack, rest$, p) Then
                 TextColor scr, CLng(mycolor(p))
                 Else
                 TextColor scr, .mypen
                 End If
                     If FastSymbol(rest$, ",") Then
                     
                                If W4 Or Not work Then
                                  If prive.lastprint Then
                                   prive.lastprint = False
                                   GetXYb scr, prive, .curpos, .currow
                                                   If work Then
                       .curpos = .curpos - ColOffset
                      If (.curpos Mod (.Column + 1)) <> 0 Then
                      .curpos = .curpos + (.Column + 1) - (.curpos Mod (.Column + 1)) + ColOffset
                      Else
                       .curpos = .curpos + ColOffset
                      End If
                 If W4 Then LCTbasketCur scr, prive
                       End If
                                  End If
                               
                              LCTbasketCur scr, prive
                             
                                Else
                                 If work Then
                       .curpos = .curpos - ColOffset
                      If (.curpos Mod (.Column + 1)) <> 0 Then
                      .curpos = .curpos + (.Column + 1) - (.curpos Mod (.Column + 1)) + ColOffset
                      Else
                       .curpos = .curpos + ColOffset
                      End If
                 If W4 Then LCTbasketCur scr, prive
                       End If
                               '' LCTbasketCur scr, prive
                                End If
                                
                                
'                                         GetXYb scr, prive, .curpos, .currow
                   ''  LCTbasketCur scr, prive
                x1 = .Column + .curpos + 1
                y1 = .currow + 1
                
                                pn& = 99
                             GoTo pthere   ' background and border and or images
             
            
                 End If
                         If Not FastSymbol(rest$, ")") Then RevisionPrint = False: Exit Function
                         pn& = 99
    End If
    ElseIf FastSymbol(rest$, "@(") Then
    W3 = -1
               If Not par Then RevisionPrint = False: Exit Function
                If IsExp(basestack, rest$, p) Then

                .curpos = CLng(p)
                End If
                
                If FastSymbol(rest$, ",") Then
                If IsExp(basestack, rest$, p) Then .currow = CLng(p)
                End If

                If FastSymbol(rest$, ",") Then
                
                If IsExp(basestack, rest$, p) Then x1 = CLng(p)
                Else
                x1 = 1
                End If
                
                If FastSymbol(rest$, ",") Then
                If IsExp(basestack, rest$, p) Then y1 = CLng(p)
                Else
                y1 = 1
                End If

                If FastSymbol(rest$, ",") Then
             '   On Error Resume Next
pthere:
                   LCTbasketCur scr, prive
                If IsStrExp(basestack, rest$, s$) Then
                p = 0
                    If FastSymbol(rest$, ",") Then
                        If IsExp(basestack, rest$, p) Then
                            If p <> 0 Then p = True
                        Else
                        p = True
                        End If
                    End If
             
                    x1 = Abs(x1 - .curpos)
                    y1 = Abs(y1 - .currow)
                    
                    BoxImage scr, prive, x1, y1, s$, 0, (p)
                    'If P <> 0 Then .currow = y1 + .currow
                ElseIf IsExp(basestack, rest$, p) Then
         
                    BoxColorNew scr, prive, x1 - 1, y1 - 1, (p)
                    If FastSymbol(rest$, ",") Then
                        If IsExp(basestack, rest$, x) Then
                            BoxBigNew scr, prive, x1 - 1, y1 - 1, (x)
                            
                            
                            
                        Else
                            RevisionPrint = False
                            Exit Function
                        End If
                    End If
                Else
                    RevisionPrint = False
                    Exit Function
                
                End If

                End If
             LCTbasket scr, prive, .currow, .curpos
                
        If Not FastSymbol(rest$, ")") Then
        RevisionPrint = False
        Exit Function
        End If
        work = False
        pn& = 99
        ElseIf LastErNum <> 0 Then
      RevisionPrint = LastErNum <> -2
    Exit Function
    
    ElseIf FastSymbol(rest$, "$(") Then
conthere:
W3 = -1
        If IsExp(basestack, rest$, p) Then
        
            .FTEXT = Abs(p) Mod 10
            ' 0 STANDARD LEFT chars before typed beyond the line are directed to the next line
            ' 1  RIGHT
            ' 2 CENTER
            ' 3 LEFT
            ' 4 LEFT PROP....expand to next .Column......
            ' 5 RIGHT PROP
            ' 6 CENTER PROP
            ' 7 LEFT PROP
            ' 8 left and right justify
            ' 9 New in version 8 Left justify(like 7) without word wrap (cut excess)
        ElseIf IsStrExp(basestack, rest$, s$) Then
            .FTXT = s$
        End If
        If par Then
        If FastSymbol(rest$, ",") Then
                If IsExp(basestack, rest$, p) Then
                p = p - 1
                If Abs(Int(p Mod (.mx + 1))) < 2 Then
                MyEr ".Column minimum width is 4 chars", "��������� ������� ������ ����� �� �������� ����������"
                Else
                 If W4 Or Not work Then
                   LCTbasketCur scr, prive
                   Else
                   GetXYb scr, prive, .curpos, .currow
                   End If
                 If W4 Then ColOffset = .curpos    ' now we have columns from offset ColOffset
                    .Column = Abs(Int(p Mod (.mx + 1)))
                    End If
                   
                Else
                    RevisionPrint = False
                    Exit Function
                End If
         End If
         End If
            If Not FastSymbol(rest$, ")") Then
            RevisionPrint = False
            Exit Function
            End If
        
        
        pn& = 99
        ElseIf LastErNum <> 0 Then
       RevisionPrint = LastErNum <> -2
    Exit Function
    Else
    If pn& <> 0 And pn& < 5 And Not .lastprint Then
        If par Then
            If Not W4 Then
          '' GetXYb scr, prive, .curpos, .currow

If Not (.curpos = 0) Then
GetXYb scr, prive, .curpos, .currow
If pn& = 1 Then
crNew basestack, prive: skiplast = True
ElseIf pn& = 2 Then

If Abs(W3) = 1 And .curpos = 0 And Not (.FTEXT = 9 Or .FTEXT = 5 Or .FTEXT = 6) Then

Else
crNew basestack, prive: skiplast = True
End If
End If
End If


            End If
        Else
            If Uni(f) Then
            putUniString f, vbCrLf
            Else
            putANSIString f, vbCrLf
            'Print #f,
            End If
        End If
    End If
 
        Exit Do
    End If
If .lastprint And opn& > 4 Then .lastprint = False
    If FastSymbol(rest$, ";") Then
'' LEAVE W3
   If opn& = 0 And (Not work) And (Not .lastprint) Then

   LCTbasket scr, prive, .currow, .curpos
   End If
   ' IF  WORK THEN opn&=5
   opn& = 5
newntrance:
work = True
.lastprint = True
        
         Do While FastSymbol(rest$, ";")
         Loop
    ElseIf Not FastSymbol(rest$, ",") Then
    
    pn& = pn& + opn&
  opn& = 0
  rest$ = NLtrim$(rest$)
  If rest$ <> "" Then
    
  If Not MaybeIsSymbol(rest$, " : }\'" + vbCr) Then
    Exit Function
 ''rest$ = "@{}" + Mid$(rest$, 3)
   End If
   End If
    Else

    rest$ = "," & rest$
    End If
    pn& = pn& + opn&
    Select Case pn&
    Case 0
    Exit Do
    Case 1
        If .FTXT = "" Then
        If xa Then
        s$ = PACKLNG2$(p)
        Else

        s$ = CStr(p)

      If .FTEXT < 4 Then
        If InStr(s$, ".") > 0 Then
         If InStr(s$, ".") <= .Column Then
        If RealLen(s$) > .Column + 1 Then
    If .FTEXT > 0 Then s$ = Left$(s$, .Column + 1)
        End If
        End If
        ElseIf .FTEXT > 0 Then
         If RealLen(s$) > .Column + 1 Then s$ = String$(.Column, "?")
        End If
          End If
        End If
        Else
        s$ = Format$(p, .FTXT)
        End If
     If par Then
        If .Column > 2 Then   ' .Column 3 means 4 chars width
        If opn& < 5 Then
    '                    ensure that we are align in .Column  (.Column is based zero...)
    skiplast = False
               If .currow >= .My Then
               If Not W4 Then crNew basestack, prive: skiplast = True
               End If
        
                        If work Then
                       .curpos = .curpos - ColOffset
                      If (.curpos Mod (.Column + 1)) <> 0 Then
                      .curpos = .curpos + (.Column + 1) - (.curpos Mod (.Column + 1)) + ColOffset
                      Else
                       .curpos = .curpos + ColOffset
                      End If
                 If W4 Then LCTbasketCur scr, prive
                       End If
                       work = True
    End If
            If .curpos >= .mx Then
    '' ???
                    Else
            Select Case .FTEXT
            Case 0
            
                          
                       PlainBaSket scr, prive, Space$(.Column - (RealLen(s$) - 1) Mod (.Column + 1)) + s$, W4, W4
                       
            Case 3
                        PlainBaSket scr, prive, Right$(Space$(.Column - (RealLen(s$) - 1) Mod (.Column + 1)) + Left$(s$, .Column + 1), .Column + 1), W4, W4
            Case 2
                        If RealLen(s$) > .Column + 1 Then s$ = "????"
                        PlainBaSket scr, prive, Left$(Space$((.Column + 1 - RealLen(s$)) \ 2) + Left$(s$, .Column + 1) & Space$(.Column), .Column + 1), W4, W4
            Case 1
                        PlainBaSket scr, prive, Left$(s$ & Space$(.Column), .Column + 1), W4, W4
            Case 5
                        x1 = .curpos
                        y1 = .currow
                        If Not (.mx - 1 <= .curpos And W4 <> 0) Then
                        LCTbasketCur scr, prive
                        scr.CurrentX = scr.CurrentX + (.Xt - TextWidth(scr, Left$(s$, 1))) \ 2
                        wwPlain basestack, prive, s$, .Column * .Xt + .Xt - (.Xt - TextWidth(scr, Left$(s$, 1))) \ 2, 0, , True, 0, , CBool(W4)
                        .currow = y1
        

                        .curpos = x1 + .Column + 1
                        
                        End If
                     If .curpos >= .mx And Not W4 Then
                   
                         .currow = .currow + 1
                         .curpos = 0
                         End If
              If .lastprint Then
     
                 If .curpos = 0 Then
                 If .currow >= .My Then crNew basestack, prive Else LCTbasketCur scr, prive
                 End If
                 
     scr.CurrentX = .curpos * .Xt
                
                  scr.CurrentY = .currow * .Yt + .uMineLineSpace
             
         
                   End If
            Case 4, 7, 8

                            wwPlain basestack, prive, s$ & vbCrLf, .Column * .Xt + .Xt - (.Xt - TextWidth(scr, Right$(s$, 1))) \ 2, 0, , , 1, , , pn& < 5
                     
                   scr.CurrentY = scr.CurrentY - .Yt
                   
                           .curpos = .curpos + .Column + 1
                            If .curpos >= .mx And Not W4 Then
                                .curpos = 0
                                .currow = .currow + 1
                            End If
                      If .lastprint Then
     
                 If .curpos = 0 Then
                 If .currow >= .My Then crNew basestack, prive Else LCTbasketCur scr, prive
                 End If
        If .curpos > 0 Then scr.CurrentX = .curpos * .Xt - (.Xt - TextWidth(scr, Right$(s$, 1))) \ 2 Else scr.CurrentX = .curpos * .Xt
                  scr.CurrentY = .currow * .Yt + .uMineLineSpace
             
         
                   End If
            Case 6
            
                              
                            
                        wwPlain basestack, prive, s$, .Column * .Xt + .Xt, 0, , False, 2, , , pn& < 5
                            .curpos = .curpos + .Column + 1
                            If .curpos >= .mx And Not W4 Then
                                .curpos = 0
                                .currow = .currow + 1
                            End If
                                                  If .lastprint Then
     
                 If .curpos = 0 Then
                 If .currow >= .My Then crNew basestack, prive Else LCTbasketCur scr, prive
                 End If
                scr.CurrentX = .curpos * .Xt
                  scr.CurrentY = .currow * .Yt + .uMineLineSpace
             
         
                   End If
                            
            Case 9
                            LCTbasketCur scr, prive
                            wPlain scr, prive, s$, 1000, 0   '.Column + 1,
                            GetXYb scr, prive, .curpos, .currow
                                  .curpos = .curpos + .Column + 1
                            If .curpos >= .mx And Not W4 Then
                                .curpos = 0
                                .currow = .currow + 1
                            End If
                                                               If .lastprint Then
     
                 If .curpos = 0 Then
                 If .currow >= .My Then crNew basestack, prive Else LCTbasketCur scr, prive
                 End If
                If .curpos > 0 Then scr.CurrentX = .curpos * .Xt - (.Xt - TextWidth(scr, Right$(s$, 1))) \ 2 Else scr.CurrentX = .curpos * .Xt
                  scr.CurrentY = .currow * .Yt + .uMineLineSpace
             
         
                   End If
            End Select
End If
            
            
            
        Else
        ' no way to use this any more...7 rev 20
        PlainBaSket scr, prive, s$
        End If
 
        Else
         If Uni(f) Then
            putUniString f, s$
            Else
            putANSIString f, s$
        'Print #f, S$;
        End If
        End If
    Case 2
    '' for string.....................................................................................................................
        If .FTXT <> "" Then
        s$ = Format$(s$, .FTXT)
        End If
        If par Then
        If .Column > 0 Then
                             x1 = .curpos: y1 = .currow
                skiplast = False
                                If .currow >= .My And Not W4 Then
                                crNew basestack, prive
                                skiplast = True
                                End If
                        If work Then
                       .curpos = .curpos - ColOffset
                      If (.curpos Mod (.Column + 1)) <> 0 Then
                      .curpos = .curpos + (.Column + 1) - (.curpos Mod (.Column + 1)) + ColOffset
                      Else
                       .curpos = .curpos + ColOffset
                     
                      End If
                      '' LCTbasket scr, prive,   y1, X1
                       If W4 Then LCTbasketCur scr, prive
                       End If
                       work = True
          If s$ = "" Then s$ = " "
          
                 If .curpos >= .mx Then
                 y1 = 1
                    Else
            Select Case .FTEXT
                Case 1
                           '' GetXY scr, X1, y1
                          ''  If s$ = "" Then s$ = " "
                            PlainBaSket scr, prive, Left$(s$ & Space$(.Column - (RealLen(s$) - 1) Mod (.Column + 1)), .Column + 1), W4, W4
                Case 2
                            If RealLen(s$) > .Column + 1 Then s$ = Left$(s$, .Column + 1)
                            PlainBaSket scr, prive, Left$(Space$((.Column + 1 - RealLen(s$)) \ 2) + s$ & Space$(.Column), .Column + 1), W4, W4
                Case 3
                            PlainBaSket scr, prive, Right$(Space$(.Column - (RealLen(s$) - 1) Mod (.Column + 1)) & s$, .Column + 1), W4, W4
                Case 0
                           '' If s$ = "" Then s$ = " "
                        
                            PlainBaSket scr, prive, s$ + Space$(.Column - (RealLen(s$) - 1) Mod (.Column + 1)), W4, W4
                       
                Case 4
                            
                            LCTbasketCur scr, prive
                            scr.CurrentX = scr.CurrentX + (.Xt - TextWidth(scr, Left$(s$, 1))) \ 2
                            
                            W3 = 0
                            wwPlain basestack, prive, s$, scr.Width, 0, , True, 0, , W3, True
                            W3 = W3 \ .Xt + 1
                            ' go to next .Column...
                            
                            .curpos = (.Column + 1) * ((W3 + .Column + 1) \ (.Column + 1))
                        If .curpos >= .mx And Not W4 Then
                                .curpos = 0
                                .currow = .currow + 1
                            End If
                Case 5
                           '' GetXY scr, X1, y1
                            LCTbasketCur scr, prive
                            scr.CurrentX = scr.CurrentX + (.Xt - TextWidth(scr, Left$(s$, 1))) \ 2
                            wwPlain basestack, prive, s$, .Column * .Xt + .Xt - (.Xt - TextWidth(scr, Left$(s$, 1))) \ 2, 0, , True, 3, , , True
                            .curpos = .curpos + .Column + 1
                            If .curpos >= .mx And Not W4 Then
                                .curpos = 0
                                .currow = .currow + 1
                            End If
                Case 6
                        ''    LCTbasketCur scr, prive
                            wwPlain basestack, prive, s$, .Column * .Xt + .Xt, 0, , False, 2, , , True
                                        .curpos = .curpos + .Column + 1
                            If .curpos >= .mx And Not W4 Then
                                .curpos = 0
                                .currow = .currow + 1
                            End If
                Case 7
                            
                            LCTbasketCur scr, prive
                            wwPlain basestack, prive, s$ & vbCrLf, .Column * .Xt + .Xt - (.Xt - TextWidth(scr, Right$(s$, 1))) \ 2, 0, , True, 1, , , True
                            .curpos = .curpos + .Column + 1
                            If .curpos >= .mx And Not W4 Then
                                .curpos = 0
                                .currow = .currow + 1
                            End If
                Case 8
                            LCTbasketCur scr, prive
                            scr.CurrentX = scr.CurrentX + (.Xt - TextWidth(scr, Left$(s$, 1))) \ 2
                            If Not (.mx - 1 <= x1 And W4 <> 0) Then
                                    wwPlain basestack, prive, s$, .Column * .Xt + .Xt - (.Xt - TextWidth(scr, Left$(s$, 1))) \ 2, 0, , True, 0, , , True
                            End If
                            .curpos = .curpos + .Column + 1
                            If .curpos >= .mx And Not W4 Then
                                .curpos = 0
                                .currow = .currow + 1
                            End If
                Case 9
                            LCTbasketCur scr, prive

              wPlain scr, prive, s$, .Column + 1, 0
                            .curpos = .curpos + .Column + 1
                            If .curpos >= .mx And Not W4 Then
                                .curpos = 0
                                .currow = .currow + 1
                            End If
                End Select
                End If
        Else
            PlainBaSket scr, prive, s$
        
        End If
        Else
             If Uni(f) Then
            putUniString f, s$
            Else
            putANSIString f, s$
        'Print #f, S$;
        End If
        End If
    Case 6
        If par Then
                If .FTEXT > 3 Then
            W3 = 0
             x1 = .curpos
             y1 = .currow
                        If .FTXT <> "" Then
                                s$ = Format$(Trim$(Str$(p)), .FTXT)
                                If .FTEXT > 4 And Not work Then scr.CurrentX = scr.CurrentX + (.Xt - TextWidth(scr, Left$(s$, 1))) \ 2
                                If scr.CurrentX < .mx * .Xt Then
                            
                                wwPlain basestack, prive, s$, scr.Width, 0, , True, 0, , W3
                                
                                End If
                                
                        Else
                                 If xa Then
                                        s$ = PACKLNG2$(p)
                                Else
                                        s$ = Trim$(Str$(p))
                                End If

                                If .FTEXT > 4 And Not work Then scr.CurrentX = scr.CurrentX + (.Xt - TextWidth(scr, Left$(s$, 1))) \ 2
                                      If scr.CurrentX < 0 Then
                             
                                
                                
                                End If
                                wwPlain basestack, prive, s$, scr.Width, 0, , True, 0, , W3
                                work = True
                                scr.CurrentX = W3
                         
                                            
                        End If
                      '' Then LCTbasket scr, prive, y1, W3 \ .Xt + 1
                Else
                        If .FTXT = "" Then
                                If xa Then
                                    PlainBaSket scr, prive, PACKLNG2$(p)
                                Else
                                    PlainBaSket scr, prive, Trim$(Str$(p))
                                End If
                        Else
                            PlainBaSket scr, prive, Format$(Trim$(Str$(p)), .FTXT)
                        End If
                End If
        Else
             If Uni(f) Then
            putUniString f, s$
            Else
            putANSIString f, s$
        ' Print #f, S$;
        End If
        End If
    Case 7
        If par Then
        If s$ <> "" Then
           If .FTEXT > 3 Then
            W3 = 0
             x1 = .curpos
             y1 = .currow
            If Not work Then LCTbasketCur scr, prive
              If .FTXT <> "" Then s$ = Format$(s$, .FTXT)
                        If .FTEXT > 4 And Not work Then scr.CurrentX = scr.CurrentX + (.Xt - TextWidth(scr, Left$(s$, 1))) \ 2
                        wwPlain basestack, prive, s$, scr.Width, 0, , True, 0, , W3
                        work = True
                       scr.CurrentX = W3
            Else
                If .FTXT <> "" Then
                PlainBaSket scr, prive, Format$(s$, .FTXT)
                Else
                PlainBaSket scr, prive, s$
                End If
                
            End If
        Else

          
        End If
   
        Else
             If Uni(f) Then
            putUniString f, s$
            Else
            putANSIString f, s$
        ' Print #f, S$;
        End If
        End If
    End Select
    If FastSymbol(rest$, ",") Then
W3 = 1
        pn& = 0
      ''  skiplast = False
        If opn& > 4 Then
        scr.CurrentX = scr.CurrentX + .Xt - dv15
        GetXYb scr, prive, .curpos, .currow
                        If work Then
                       .curpos = .curpos - ColOffset
                      If (.curpos Mod (.Column + 1)) <> 0 Then
                      .curpos = .curpos + (.Column + 1) - (.curpos Mod (.Column + 1)) + ColOffset
                      Else
                       .curpos = .curpos + ColOffset
                      End If
                      If W4 Then LCTbasketCur scr, prive
                       End If
                       
                       work = True
                       Else
                       work = False
        End If
        opn& = 0
        Do While FastSymbol(rest$, ",")
            If par Then
            ' ok I want that
            If .Column > .mx And .FTEXT < 4 Then
            
            Else

            If Not W4 Then
            If Not skiplast Then crNew basestack, prive
            End If
            End If
            Else
                 If Uni(f) Then
            putUniString f, vbCrLf
            Else
            putANSIString f, vbCrLf
            'Print #f,
            End If
            End If
            
        Loop

    End If
    
players(basketcode) = prive
Loop
'
''If Not extreme Then If Not basestack.toprinter Then MyDoEvents2 scr
''If scr.CurrentX <> 0 Then scr.CurrentX = ((scr.CurrentX \ .Xt) + 1) * .Xt

If W4 <> 0 Then
        .FTEXT = oldFTEXT
        .FTXT = oldFTXT
        .Column = oldCol
        If .mypen <> oldpen Then TextColor scr, .mypen
        Else
        If pn& > 4 And opn& = 0 Then
        
                 If pn& < 99 Then
                 If work Then
                 .lastprint = False
                 End If
                 If Not skiplast Then crNew basestack, prive
                 End If
        ElseIf .currow >= .My Or (W3 < 0 And pn& = 0) Then
              crNew basestack, prive
              LCTbasketCur scr, prive
        ElseIf pn& > 4 Then
       
        End If

End If
EXITNOW:
If basestack.IamThread Then
' let thread do the refresh
Else
If Not extreme Then
    If uintnew(timeGetTime) > k1 Then RRCOUNTER = 0
            
            If RRCOUNTER = 0 Then
            k1 = uintnew(timeGetTime + REFRESHRATE): RRCOUNTER = 1
         If scr.Visible Then scr.refresh
                  End If
End If
End If
RevisionPrint = True
players(basketcode) = prive
End With
End Function

Private Function SpeedGroup(bstack As basetask, pppp As mArray, Prefix$, ByVal w$, b$, V As Long) As Long
Dim vars As Long, VName As Long, y1 As Long, subs As Long, snames As Long, i As Long, ec$, ohere$, p As Double
Dim arrs As Long, anames As Long, depth As Long, loopthis As Boolean, subspoint As Boolean, RetStackSize As Long

Dim kolpo As Boolean, bb$, Once As Boolean, dd As Variant
vars = var2used: VName = Len(VarName$)
subs = sb2used: snames = Len(SubName$)
arrs = neoArray.Count: anames = Len(arrname$)

Dim MM As mStiva, tempRef As Object
If Prefix = "VAL" Then
' we stand as right value...
If pppp Is Nothing Then Exit Function
ec$ = w$ + ")"
        w$ = pppp.CodeName + CStr(V)

        
        y1 = GlobalVar(w$, 0, HERE$ = "")

        UnFloatGroup bstack, w$, y1, pppp.item(V)
        
        var(y1).FloatGroupName = ec$
       Dim r As Double, bs As New basetask
        b$ = w$ + b$
             If IsNumber(bstack, b$, r) Then
        If bstack.LastObj Is Nothing Then
         bstack.LastValue = r
         Else
            bstack.LastValue = 0
           
        End If
         SpeedGroup = 1
   
        CopyGroup var(y1), bs

         Set tempRef = pppp.item(V).Link
        Set pppp.item(V) = bs.LastObj
        Set pppp.item(V).LinkRef = tempRef
        Set bs.LastObj = Nothing
        End If
        CopyGroup var(y1), bstack
        
     Set bstack.LastObj = Nothing
         GoTo fastexit

ElseIf Prefix = "VAL$" Then
ec$ = w$ + ")"
' we stand as right value...
        w$ = pppp.CodeName + CStr(V)
   
        y1 = GlobalVar(w$, 0)
          i = GlobalVar(w$ + "$", CStr(""))
        UnFloatGroup bstack, w$, y1, pppp.item(V)
        var(y1).FloatGroupName = ec$
        b$ = vbCrLf + w$ + "$=" + w$ + b$
     SpeedGroup = Execute(bstack, b$, True)
    CopyGroup var(y1), bstack
       Set tempRef = pppp.item(V).Link
      Set pppp.item(V) = bstack.LastObj
      Set pppp.item(V).LinkRef = tempRef
    Set bstack.LastObj = Nothing
  
        bstack.LastValue = CStr(var(i))
        GoTo fastexit
ElseIf Prefix = "FOR" Then
RetStackSize = bstack.RetStack.Total


    If V = -1 Then
    w$ = myUcase(w$)
        y1 = 0
        If w$ = "THIS" Or w$ = "����" Then
        If bstack.UseGroupname <> "" Then
        'w$ = Left$(bstack.UseGroupname, Len(bstack.UseGroupname) - 1)
        Else
        
        End If
        w$ = "THIS"  ' look this other time..
        End If
            bstack.MoveNameDot w$
       
    Else
        w$ = pppp.CodeName + CStr(V)
        Set dd = New Group
         y1 = GlobalVar(w$, dd)
        UnFloatGroup bstack, w$, y1, pppp.item(V)
        bstack.MoveNameDot myUcase(w$)
    End If

Set MM = New mStiva
MM.DataVal CDbl(y1)
MM.DataVal CDbl(V)
Do While FastSymbol(b$, ",")
i = IsLabelDot("", b$, w$)
If i = 5 Then
w$ = myUcase(w$)
                    If neoGetArray(bstack, w$, pppp) Then

                            If NeoGetArrayItem(pppp, bstack, w$, V, b$) Then
                                    If Typename(pppp.item(V)) = "Group" Then
                                             w$ = pppp.CodeName + CStr(V)
                                                Set dd = New Group
                                                 y1 = GlobalVar(w$, dd)
                                                UnFloatGroup bstack, w$, y1, pppp.item(V)
                                                bstack.MoveNameDot myUcase(w$)
                                                depth = depth + 1
                                                MM.DataVal CDbl(y1)
                                                MM.DataVal CDbl(V)
                                    Else
                                                MissingGroup
                                                GoTo normalexit
                                    End If
                            Else
                                SyntaxError
                                GoTo normalexit
                            End If
                    Else
                            NotExistArray
                            GoTo normalexit
                    End If
ElseIf i = 1 Then
w$ = myUcase(w$)

MM.DataVal CDbl(0)
MM.DataVal CDbl(-1)
        If w$ = "THIS" Or w$ = "����" Then
        If bstack.GroupName = "" Then w$ = ""
        End If

bstack.MoveNameDot myUcase(w$)
        depth = depth + 1
Else
        SyntaxError
        GoTo normalexit
End If
Loop

If FastSymbol(b$, "{") Then

     ec$ = vbCrLf + LTrim(block(b$))
  
        If Len(ec$) > 2 Then
                SpeedGroup = 1
                kolpo = False
                Once = True
                i = 1
                ohere$ = HERE$
                Do
                    bb$ = Mid$(ec$, i)
subsentry10:
                    kolpo = False
                    Select Case Execute(bstack, bb$, kolpo, False, loopthis)   ' this is a major point
                    Case 0
                            b$ = bb$ & b$
                            SpeedGroup = 0
                            Set bstack.LastObj = Nothing
                            GoTo normalexit
                    Case 1
                        If LastErNum <> 0 Then
                   b$ = ""
                    End If

                                  If FastSymbol(b$, "}") Then
                                   If Once Then Exit Do
                                   Else
                                   b$ = Right$(ec$, Len(bb$)) + b$
                                ''   MyDoEvents
                                   End If
                                    HERE$ = ohere$
                                   Exit Do
                      Case 2
                            If Not kolpo Then
                                      i = 1
                    If bb$ <> "" Then
                            If bb$ = Chr$(0) Then
                                       If RetStackSize = bstack.RetStack.Total And bstack.RetStack.LookTopVal < 0 Then
                                        ' this is a return form other block
                                         SpeedGroup = 2
                                        b$ = bb$
                                        GoTo fastexit
                                        End If
                                    If bstack.IsInRetStackNumber(p) Then
                                                       If LastErNum = -1 Then
                                                                bstack.RetStack.PushVal p
                                                                SpeedGroup = 0
                                                                GoTo fastexit
                                                        End If
                                                        If p < -1 Then
                                                                subspoint = True
                                                                bstack.IsInRetStackNumber p
                                                        
                                                                bb$ = Mid$(SB(bstack.Parent.OriginalCode), Len(SB(bstack.Parent.OriginalCode)) - CLng(p) + 1)
                                                        ElseIf p < 0 Then
                                                                subspoint = False
                                                                bstack.IsInRetStackNumber p
                                                        If bstack.RetStack.Total - RetStackSize <= 7 Then
                                                        i = Len(ec$) - CLng(p) + 1
     
                                                       bb$ = Mid$(ec$, i)
                                       

                                                        Else
                                                               bb$ = Mid$(SB(bstack.OriginalCode), Len(SB(bstack.OriginalCode)) - CLng(p) + 1)
                                                               End If
                                                             ''
                                               
                                               
                                                ''If loopthis Then
                                                    ''            Bb$ = Mid$(ec$, I)
                                                    ''            GoTo subsentry10
                                                    ''    Else
                                                     ''           Bb$ = Mid$(ec$, CLng(p) + 1)
                                                    ''    End If
                                                              
                                                              
                                                              
                                                        End If
                                                
                                               PopStage bstack
                                       GoTo subsentry10
                                       
                                       
                                    ElseIf bstack.IsInRetStackString(bb$) Then
                                                                 If InStr(bb$, " ") > 0 Then
                                                                       If subspoint Then bstack.RetStack.PushVal -2 Else bstack.RetStack.PushVal -1
                                   
                                                                        If searchsub(SB(bstack.OriginalCode), bb$, i) Then
                                                                          subspoint = False
                                                                            If bb$ <> "" Then
                                                                                    bb$ = "Read NEW " + bb$ + vbCrLf + Mid$(SB(bstack.OriginalCode), i)
                                                                            Else
                                                                                    bb$ = Mid$(SB(bstack.OriginalCode), i)
                                                                            End If
                                                       
                                                                            kolpo = False
                                                                            GoTo subsentry10
                                                                        ElseIf bstack.IamChild Then
                                                                        If searchsub(SB(bstack.Parent.OriginalCode), bb$, i) Then
                                                                         subspoint = True
                                                                            If bb$ <> "" Then
                                                                                    bb$ = "Read NEW " + bb$ + vbCrLf + Mid$(SB(bstack.Parent.OriginalCode), i)
                                                                            Else
                                                                                    bb$ = Mid$(SB(bstack.Parent.OriginalCode), i)
                                                                            End If
                                                       
                                                                            kolpo = False
                                                                            GoTo subsentry10
                                                                            
                                                                                   Else
                                                                        bstack.RetStack.DROP 8
                                                                                    Exit Do
                                                                        End If
                                                                        Else
                                                                        bstack.RetStack.DROP 8
                                                                                    Exit Do
                                                                        End If
                                                        End If
                                    End If
                             Else
                                    i = PosLabel(bb$, ec$)
                                              If i = 0 Or i > Len(ec$) Then
          b$ = bb$
     
          SpeedGroup = 2
          Exit Do
                                    Else
                                    bb$ = Mid$(ec$, i)
                                    GoTo subsentry10
                                    End If
                                    
                            End If
                            Else
                            loopthis = False
                            End If
                                               Else
                                  Once = kolpo
                                SpeedGroup = 2: Set bstack.LastObj = Nothing
                                  GoTo normalexit
                    End If

                            Case Else
                                    If FastSymbol(b$, "}") Then
      
                                   If Once Then Exit Do
                                     Else
                                   b$ = Right$(ec$, Len(bb$)) + b$
                                   End If
                                    HERE$ = ohere$
                                   Exit Do
                            
                            End Select
                            HERE$ = ohere$
                              If myexit(bstack) Then SpeedGroup = 1: Exit Do
                            Loop
            Else
              SpeedGroup = Abs(FastSymbol(b$, "}"))
            End If
  End If
        While MM.Total > 0
        y1 = MM.PopVal
        V = MM.PopVal
        If V <> -1 Then
                        CopyGroup var(y1), bstack
                         Set tempRef = pppp.item(V).Link
                        Set pppp.item(V) = bstack.LastObj
                         Set pppp.item(V).LinkRef = tempRef

      
        End If
        Wend
normalexit:
                bstack.DropNdot depth + 1
Else
i = w$ = "."
        w$ = pppp.CodeName + CStr(V)
        Set dd = New Group
         y1 = GlobalVar(w$, dd)

        UnFloatGroup bstack, w$, y1, pppp.item(V)

        If Prefix <> "" Then
        If i Then
         b$ = vbCrLf + Prefix + " " + w$ + "." + b$
        Else
         b$ = vbCrLf + Prefix + " " + w$ + " " + b$
         End If
         Else
        b$ = vbCrLf + w$ + "." + b$
        End If
      SpeedGroup = Execute(bstack, b$, True)
CONTlastEtnum:
If LastErNum <> 0 Then

If FK$(13) = "" Then FK$(13) = GetNextLine((SB(bstack.OriginalCode)))
    End If
                        CopyGroup var(y1), bstack
                        Set tempRef = pppp.item(V).Link
                        Set pppp.item(V) = bstack.LastObj
                         Set pppp.item(V).LinkRef = tempRef

   
                        
                              Set bstack.LastObj = Nothing

Set var(y1) = New Group
End If

fastexit:

var2used = vars
 VarName$ = Left$(VarName$, VName)
     Do While arrs < neoArray.Count
    neoArray.remove neoArray.Count
    Loop
    
arrname$ = Left$(arrname$, anames)
  sb2used = subs
    For i = subs + 1 To UBound(SB()) - 1
    SB(i) = ""
    SBC(i) = 0
    sbgroup(i) = ""
    Next i

    SubName$ = Right$(SubName$, snames)

End Function
Public Sub Thing(w$, V$)
On Error Resume Next
Dim it As Long, pppp As mArray
If Len(w$) < 2 Then Exit Sub

If Asc(w$) = 65 Then
On Error Resume Next
Err.clear
Set pppp = neoArray(Mid$(w$, 2, 16))
If Err.Number > 0 Then Exit Sub
it = Val("0" & Mid$(w$, 18))
If Typename(pppp.item(it)) = doc Then
pppp.item(it).textDoc = V$  ' no checked yet
Else
pppp.item(it) = pppp.item(it) + V$
End If
ElseIf Asc(w$) = 86 Then
it = Val("0" & Mid$(w$, 2))
If Typename(var(it)) = doc Then
var(it).textDoc = V$    ' no checked yet
Else
var(it) = var(it) + V$
End If
Else
' CAN'T READ
End If
End Sub
Public Function mytitle$(basestack As basetask)
Static PREVT$

' On Error GoTo t1
If exWnd = 0 Then
PREVT$ = ""
mytitle$ = ""
Exit Function
End If
If PREVT$ <> nnn$ Then
PREVT$ = nnn$

Form1.view1_StatusTextChange11 basestack, Trim$(nnn$)

End If
mytitle$ = Trim$(PREVT$)

Exit Function
t1:
mytitle$ = "???"
End Function
Function PointPos(f$) As Long
Dim er As Long, er2 As Long
While FastSymbol(f$, Chr(34))
f$ = GetStrUntil(Chr(34), f$)
Wend
Dim i As Long, j As Long, oj As Long
If f$ = "" Then
PointPos = 1
Else
er = 3
er2 = 3
For i = 1 To Len(f$)
er = er + 1
er2 = er2 + 1
Select Case Mid$(f$, i, 1)
Case "."
oj = j: j = i
Case "\", "/", ":", Is = Chr(34)
If er = 2 Then oj = 0: j = i - 2: Exit For
er2 = 1
oj = j: j = 0
If oj = 0 Then oj = i - 1: If oj < 0 Then oj = 0
Case " ", ChrW(160)
If j > 0 Then Exit For
If er2 = 2 Then oj = 0: j = i - 1: Exit For
er = 1
Case "|", "'"
j = i - 1
Exit For
Case Is > " "
If j > 0 Then oj = j Else oj = 0
Case Else
If oj <> 0 Then j = oj Else j = i
Exit For
End Select
Next i
If j = 0 Then
If oj = 0 Then
j = Len(f$) + 1
Else
j = oj
End If
End If
While Mid$(f$, j, i) = " "
j = j - 1
Wend
PointPos = j
End If
End Function
Public Function ExtractType(f$, Optional jj As Long = 0) As String
Dim i As Long, j As Long, D$
If FastSymbol(f$, Chr(34)) Then f$ = GetStrUntil(Chr(34), f$)
If f$ = "" Then ExtractType = "": Exit Function
If jj > 0 Then
j = jj
Else


j = PointPos(f$)
End If
D$ = f$ & " "
If j < Len(D$) Then
For i = j To Len(D$)
Select Case Mid$(D$, i, 1)
Case "/", "|", "'", " ", Is = Chr(34)
i = i + 1
Exit For
End Select
Next i
If (i - j - 2) < 1 Then
ExtractType = ""
Else
ExtractType = mylcasefILE(Mid$(D$, j + 1, i - j - 2))
End If
Else
ExtractType = ""
End If
End Function
Public Function LONGNAME(Spath As String) As String
LONGNAME = ExtractPath(Spath, , True)
End Function


Public Function ExtractPath(ByVal f$, Optional Slash As Boolean = True, Optional existonly As Boolean = False) As String
If f$ = "" Then Exit Function
Dim i As Long, j As Long, TEST$
TEST$ = f$ & " \/:": i = InStr(TEST$, " "): j = InStr(TEST$, "\")
If i < j Then j = InStr(TEST$, "/"): If i < j Then j = InStr(TEST$, ":"): If i < j Then Exit Function
If Right(f$, 1) = "\" Or Right(f$, 1) = "/" Then f$ = f$ & " a"
j = PointPos(f$)
If Mid$(f$, j, 1) = "." Then j = j - 1
If Len(f$) < j Then
If ExtractType(Mid$(f$, j) & "\.10") = "10" Then j = j - 1 Else Exit Function
Else

End If

j = j - Len(ExtractNameOnly(f$))
If j <= 3 Then
If Mid$(f$, 2, 1) = ":" Then
If Slash Then
ExtractPath = mylcasefILE(Left$(f$, 2)) & "\"
Else
ExtractPath = mylcasefILE(Left$(f$, 2))
End If
Else
ExtractPath = ""
End If
Else
If Slash Then
ExtractPath = mylcasefILE(Left$(f$, j))
Else
ExtractPath = mylcasefILE(Left$(f$, j - 1))
End If
End If
Dim result As Long
Dim strInput As String, strOutput As String
'' Two calls required, one to get expansion buffer length first then do expansion
strOutput = Space$(250)
result = ExpandEnvironmentStrings(ExtractPath, strOutput, result)
strOutput = Space$(result)
result = ExpandEnvironmentStrings(ExtractPath, strOutput, result)
If existonly Then
ExtractPath = mylcasefILE(StripTerminator(GetLongName(strOutput)))
Else
ExtractPath = StripTerminator(strOutput) 'UCase(GetLongName(strOutput))
End If
Dim ccc() As String, c$
ccc() = Split(ExtractPath, "\..")
If UBound(ccc()) > LBound(ccc()) Then
c$ = ""
For i = LBound(ccc()) To UBound(ccc()) - 1
If ccc(i) = "" Then
c$ = ExtractPath(ExtractPath(c$, False))
Else
c$ = c$ & ExtractPath(ccc(i), True)
End If

Next i
If Left$(ccc(i), 1) = "\" Then
ExtractPath = c$ & Mid$(ccc(i), 2)
Else
ExtractPath = c$ & ccc(i)
End If
End If
End Function
Public Function ExtractName(f$) As String
Dim i As Long, j As Long, k$
If f$ = "" Then Exit Function
j = PointPos(f$)
If Mid$(f$, j, 1) = "." Then
k$ = ExtractType(f$, j)
Else
j = Len(f$)
End If
For i = j To 1 Step -1
Select Case Mid$(f$, i, 1)
Case Is < " ", "\", "/", ":"
Exit For
End Select
Next i
If k$ = "" Then
If Mid$(f$, i + j - i, 1) = "." Then
ExtractName = mylcasefILE(Mid$(f$, i + 1, j - i - 1))
Else
ExtractName = mylcasefILE(Mid$(f$, i + 1, j - i))

End If
Else
ExtractName = mylcasefILE(Mid$(f$, i + 1, j - i)) + k$
End If

'ExtractName = mylcasefILE(Trim$(Mid$(f$, I + 1, j - I)))

End Function
Public Function ExtractNameOnly(ByVal f$) As String
Dim i As Long, j As Long
If f$ = "" Then Exit Function
j = PointPos(f$)
If j > Len(f$) Then j = Len(f$)
For i = j To 1 Step -1
Select Case Mid$(f$, i, 1)
Case Is < " ", "\", "/", ":"
Exit For
End Select
Next i
If Mid$(f$, i + j - i, 1) = "." Then
ExtractNameOnly = mylcasefILE(Mid$(f$, i + 1, j - i - 1))
Else
ExtractNameOnly = mylcasefILE(Mid$(f$, i + 1, j - i))
End If
End Function
Public Function GetCurDir(Optional AppPath As Boolean = False) As String
Dim A$, cd As String

If AppPath Then
cd = App.path
AddDirSep cd
A$ = mylcasefILE(cd)
Else
AddDirSep mcd
A$ = mylcasefILE(mcd)

End If
'If Right$(a$, 1) <> "\" Then a$ = a$ & "\"
GetCurDir = A$
End Function
Public Function CFname(A$, Optional TS As Variant) As String
If Left$(A$, 4) = "cDIB" And Len(A$) > 12 Then Exit Function
Dim b$
Dim mDir As New recDir
Sleep 1
If A$ <> "" Then
On Error GoTo 1
b$ = mDir.Dir1(A$, GetCurDir)
If b$ = "" Then b$ = mDir.Dir1(A$, mDir.GetLongName(App.path))
If b$ <> "" Then CFname = mylcasefILE(b$): If Not IsMissing(TS) Then TS = CDbl(mDir.lastTimeStamp)

Exit Function
End If
1:
CFname = ""
End Function
Function rinstr(A As String, b As String, Optional ByVal fr As Long) As Long
Dim i
i = Len(A)
fr = i - fr
If fr < 0 Or fr > i Then fr = i + 1

If i > 0 Then rinstr = InStrRev(A, b, fr)
End Function
Function rinstrTxt(A As String, b As String, Optional ByVal fr As Long) As Long
' NOT USED....INSTRREV IS THE SANE...WITH VBTEXTCOMPARE
Dim i As Long, j As Long
fr = fr - Len(b) + 1
If fr < 0 Then fr = Len(A) + 1
Do
j = i
i = InStr(j + 1, A, b, vbTextCompare)

Loop Until i = 0 Or i > fr

rinstrTxt = j
End Function
Sub dset()

'USING the temporary path
    strTemp = String(MAX_FILENAME_LEN, Chr$(0))
    'Get
    GetTempPath MAX_FILENAME_LEN, StrPtr(strTemp)
    strTemp = LONGNAME(mylcasefILE(Left$(strTemp, InStr(strTemp, Chr(0)) - 1)))
    If strTemp = "" Then
     strTemp = mylcasefILE(Left$(strTemp, InStr(strTemp, Chr(0)) - 1))
    End If
' NOW COPY
' for mcd
Dim cd As String, DUMMY As Long, q$

''cd = App.Path
''AddDirSep cd
''mcd = mylcasefILE(cd)

' Return to standrad path...for all users
userfiles = GetSpecialfolder(CLng(26)) & "\M2000"
AddDirSep userfiles
If Not isdir(userfiles) Then
MkDir userfiles
End If

mcd = userfiles

' now for locale info changes
q$ = "." & Chr$(0)
DUMMY = SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SDECIMAL, q$)
DUMMY = SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SMONDECIMALSEP, q$)
q$ = "," & Chr$(0)
DUMMY = SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_STHOUSAND, q$)
DUMMY = SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SMONTHOUSANDSEP, q$)
End Sub
Public Function Originalusername()

Dim SS$
                 SS$ = UCase(userfiles)
                    DropLeft "\M2000_USER\", SS$
If SS$ = "" Then
Originalusername = username
Else
Originalusername = GetStrUntil("\", SS$)
End If
End Function
Public Function IsSupervisor() As Boolean

Dim SS$
                 SS$ = UCase(userfiles)
                    DropLeft "\M2000_USER\", SS$
IsSupervisor = SS$ = ""
End Function


Public Function UserPath() As String

Dim SS$
                 SS$ = UCase(userfiles)
                    DropLeft "\M2000_USER\", SS$
        If SS$ <> "" Then
        If CanKillFile(mcd) Then
        DropLeft "\", SS$
UserPath = Mid$(mcd, Len(userfiles) - Len(SS$) + 1)
If UserPath = "" Then
UserPath = "."
End If
Else
UserPath = mcd
End If
Else
UserPath = mcd
End If
End Function
Public Function UserPath2() As String

Dim SS$
                 SS$ = UCase(userfiles)
                    DropLeft "\M2000_USER\", SS$
        If SS$ <> "" Then
        If CanKillFile(mcd) Then
        DropLeft "\", SS$
UserPath2 = Mid$(mcd, Len(userfiles) - Len(SS$) + 1)
If UserPath2 = "" Then
UserPath2 = "."
End If
Else
UserPath2 = mcd
End If
Else
UserPath2 = mcd
End If
If Right$(UserPath2, 1) = "\" Then UserPath2 = Left$(UserPath2$, Len(UserPath2$) - 1)


End Function
Public Function username()
Dim A$, b$, c$
A$ = GetSpecialfolder(0)
While A$ <> ""
c$ = b$
b$ = GetStrUntil("\", A$)
Wend
username = c$
End Function
Public Function ScanTarget(j() As target, ByVal x As Long, ByVal y As Long, ByVal MyL As Long) As Long
Dim iu&, Id&, i&, XX&, YY&

iu& = LBound(j())
Id& = UBound(j())
ScanTarget = -1
For i& = iu& To Id&
With j(i&)
If .enable And .layer = MyL Then
XX& = x \ .Xt
YY& = y \ .Yt
If .Lx <= XX& And .tx >= XX& And .ly <= YY& And .ty >= YY& Then
ScanTarget = i&
Exit For
End If
End If
End With
Next i&
End Function
Public Sub DisableTargets(j() As target, ByVal MyL As Long)
Dim iu&, Id&, i&
iu& = LBound(j())
Id& = UBound(j())
For i& = iu& To Id&
 If j(i&).layer = MyL Then j(i&).enable = False
Next i&
End Sub

Function RMAX(ByVal q As Single, ByVal w As Single) As Single
If q > w Then
RMAX = q
Else
RMAX = w
End If
End Function

Function RMIN(ByVal q As Single, ByVal w As Single) As Single
If q < w Then
RMIN = q
Else
RMIN = w
End If
End Function


Function BoxTarget(DSTACK As basetask, ByVal xl&, ByVal yl&, ByVal b As Long, ByVal f As Long, ByVal Tag$, ByVal Id&, ByVal COM$, XXT&, YYT&, LineSpace&) As target
Dim x&, y&, D As Object
Set D = DSTACK.Owner
Dim prive As basket
prive = players(GetCode(D))
With prive

x& = .curpos
y& = .currow
xl& = xl& + x&
yl& = yl& + y& - 1
With BoxTarget
.SZ = prive.SZ
.Comm = COM$
.Id = Id&
.Tag = Tag$
.Lx = x&
.ly = y&
.tx = xl& - 1
.ty = yl&
.back = b
.fore = f
.enable = True
.Pen = prive.mypen
.Xt = XXT&
.Yt = YYT&
.sUAddTwipsTop = prive.uMineLineSpace
If D.name = "DIS" Then
.layer = 0
ElseIf D.name = "Form1" Then
.layer = -1
ElseIf D.name = "dSprite" Then
.layer = D.Index
End If
End With
If f <> -1 Then BoxBigNew D, prive, xl& - 1, yl&, f
If b <> -1 Then BoxColorNew D, prive, xl& - 1, yl&, b
If Id& < 100 Then
    Tag$ = Left$(Tag$, xl& - x&)
    If Tag$ <> "" Then
    
    Select Case Id& Mod 10
    Case 4, 5, 6
    y& = (yl& + y&) \ 2
    Case 7, 8, 9
    y& = yl&
    Case Else
    End Select
    Select Case Id& Mod 10
    Case 2, 5, 8
    x& = (xl& + x& - Len(Tag$)) \ 2
    Case 3, 6, 9
    x& = xl& - Len(Tag$)
    Case Else
    End Select
    If (Id& Mod 10) > 0 Then
    LCTbasket D, prive, y&, x&
    D.FontTransparent = True
    PlainBaSket D, prive, Tag$, True, True
    LCTbasket D, prive, BoxTarget.ly, BoxTarget.Lx
    End If
    End If
Else
    If Tag$ <> "" Then
    Id& = Id& Mod 100
    Select Case Id& Mod 10
    Case 4, 5, 6
    y& = (yl& + y&) \ 2
    Case 7, 8, 9
    y& = yl&
    Case Else
    End Select
    f = 3
    Select Case Id& Mod 10
    Case 2, 5, 8
    f = 2
    Case 3, 6, 9
    f = 1
    Case Else
    End Select
    
    If (Id& Mod 10) > 0 Then
    LCTbasket D, prive, y&, x&
    D.FontTransparent = True
    D.CurrentX = D.CurrentX - dv15 * 2
    wwPlain DSTACK, prive, Tag$, xl& - x&, 10000, , True, f, , , True
    LCTbasket D, prive, BoxTarget.ly, BoxTarget.Lx
    End If
End If
    
End If
End With
End Function
Public Function GetTaskId() As Long
taskid = taskid + 1
If taskid = 10000 Then taskid = 1
GetTaskId = taskid

End Function
Sub Dispose()
'use strtemp
On Error Resume Next
Dim r$
While ISSTRINGA(kill2$, r$)
Kill strTemp + r$
Wend
End Sub

Sub Main()
' need to read registry form sub main
On Error Resume Next
dv15 = 1440 / DpiScrX
DisableProcessWindowsGhosting
OperatingSystem
 dv20 = 24.5
Randomize CDbl(timeGetTime)
JetPrefixUser = JetPrefixHelp
JetPostfixUser = JetPostfixHelp
JetPostfix = JetPostfixHelp
JetPrefix = JetPrefixHelp
 
basickey = "Software\m2000v4\"
' by default
'AddTwipsTop = 4 * Screen.TwipsPerPixelY
casesensitive = False
pagio$ = "LATIN"
pagiohtml$ = "DARK"
REFRESHRATE = 40
SizeDialog = 1
helpSizeDialog = 1
Settings = "time,normal,push"
selectorLastX = ScrX() / 4
selectorLastY = ScrY() / 4
AskLastX = ScrX() / 4
AskLastY = ScrY() / 4
sb2used = 0
ReDim SB(50) As String
ReDim SBC(50) As Long
ReDim sbgroup(50) As String
var2used = 0
ReDim var(50) As Variant
   StartingRes
   ''Dim iccex As tagInitCommonControlsEx
   ''With iccex
   ''    .lngSize = LenB(iccex)
   ''    .lngICC = ICC_USEREX_CLASSES
   ''End With
   ''InitCommonControlsEx iccex

clickMe2 = -1


Dim soros As New mStiva
Dim t As Long
ReDim q(0) As target

Set basestack1.Sorosref = globalstack

taskid = 999
DisableMidi
beat = 400 ' beat of 1/16
baseNote = 23
octava = 4
NOTA = 0
ENTASI = 127   '' volume
voices(0) = "CC#"
Randomize
Set TaskMaster = New TaskMaster
TaskMaster.Interval = 5
beeperBEAT = 300
MediaPlayer1.FileName = ""
defFontname = "Verdana"
my_system = OperatingPlatform
vol = 50
MediaPlayer1.setLeftVolume vol * 10
MediaPlayer1.setRightVolume vol * 10
deep = 1000
funcdeep = 128
' step one we show the first form
'Form1.Show , Form5
ReDim MyDM(1 To 1) As Byte
DXP = Screen.TwipsPerPixelX
DYP = Screen.TwipsPerPixelY
Load Form5
' Load Form1
' Form1.Hide
If Not l_complete Then
'MsgBox "Loading of Form1 not complete"
End
Else
Form1.something
CloseAllConnections  ' new for ADO we keep objects not the connections
CleanupLibHandles
If Not s_complete Then
MsgBox "Language can't go Up"
End
End If
End If
End Sub



Function IsExp(basestack As basetask, A$, r As Double, Optional ByVal noand1 As Boolean = True) As Boolean
Dim par As Long
If LastErNum = -2 Then LastErNum = 0
IsExp = IsExpA(basestack, A$, r, par, noand1)
If LastErNum = -2 Then IsExp = False
If par > 0 Then IsExp = False
End Function
Function IsExpA(bstack As basetask, aa$, RR As Double, parenthesis As Long, Optional ByVal noand As Boolean = True) As Boolean
Dim r As Double, ac As Double, po As Double, MUL As Long, R1 As Double
Dim logic As Boolean, l As Boolean

IsExpA = False
If aa$ = "" Then Exit Function
RR = 0
Do While FastSymbol(aa$, "(")
parenthesis = parenthesis + 1
Loop
po = 1
ac = 0
' sign

Do
' first loop remove sign(s)
    Do
    If FastSymbol(aa$, "-") Then
            po = -po
        ElseIf Not FastSymbol(aa$, "+") Then
            Exit Do
        End If
    Loop
    
    If logical(bstack, aa$, r) Then
        IsExpA = True
        po = po * r
    ElseIf FastSymbol(aa$, "(") Then
                            If IsExp(bstack, aa$, r) Then
                                IsExpA = True
                                po = po * r
                                If Not FastSymbol(aa$, ")") Then
                                    IsExpA = False
                                    Exit Function
                                End If
                            End If
    Else
    
    IsExpA = False
    Exit Function

   End If
:
R1 = 1
MUL = 0
''second  loop Logic...
Do
    If FastSymbol(aa$, "**") Or FastSymbol(aa$, "^") Then
            ' get from right number or expression
            If IsNumber(bstack, aa$, r) Then ' ������� �� ����� ������� � ���������
                po = po ^ r
            ElseIf FastSymbol(aa$, "(") Then  ' ����� ������� ��� ��������� ���� �� ��� ���������� ���� � IsExp ���� ��� ��������� )
                If IsExp(bstack, aa$, r) Then ' ���� �������� ��� ��������� (� IsExp ������ ��� IsExpA ��� ���� ������� ��� IsExp
                    po = po ^ r
                    If Not FastSymbol(aa$, ")") Then ' ��� ����� ��� ��������  ����� ��� ��� ������
                        IsExpA = False
                        Exit Function
                    End If
                End If
            Else
                IsExpA = False
                Exit Function
            End If
    
    ElseIf MUL > 0 Then
            ' do it before we find next / or *
            Select Case MUL
            Case 1
                po = R1 * po
            
            Case 2
                If po = 0 Then
                    'DIVISION BY ZERO
                
                    MyErMacro aa$, "division by zero", "�������� �� �� �����"
                
                    IsExpA = False
                    Exit Function
                Else
                    po = R1 / po
                End If
            Case 3
                po = R1 * po
            Case 4
                If Int(po) = 0 Then
                    'DIVISION BY ZERO
                    MyErMacro aa$, "division by zero", "�������� �� �� �����"
                    IsExpA = False
                    Exit Function
                Else
                    po = Int(Int(R1) / Int(po))
                End If
            Case 5
                If Int(po) = 0 Then
                    'DIVISION BY ZERO
                    MyErMacro aa$, "division by zero", "�������� �� �� �����"
            
                    IsExpA = False
                    Exit Function
                Else
                    po = Sgn(R1) * (Int(Abs(R1)) - Int(Int(Abs(R1) / Abs(Int(po))) * Abs(Int(po))))
                End If
            End Select
            R1 = 1
            MUL = 0
             
    ElseIf FastSymbol(aa$, "*") Then
            If logical(bstack, aa$, r) Then
                MUL = 1
                R1 = po
                po = r
            ElseIf FastSymbol(aa$, "(") Then
                If IsExp(bstack, aa$, r) Then
                    MUL = 1
                    R1 = po
                    po = r
                    If Not FastSymbol(aa$, ")") Then
                        IsExpA = False
                        Exit Function
                    End If
                End If
            Else
                IsExpA = False
                Exit Function
            End If
    ElseIf FastSymbol(aa$, "/") Then
            If logical(bstack, aa$, r) Then
                MUL = 2
                R1 = po
                po = r
            ElseIf FastSymbol(aa$, "(") Then
                If IsExp(bstack, aa$, r) Then
                    MUL = 2
                    R1 = po
                    po = r
                    If Not FastSymbol(aa$, ")") Then
                        IsExpA = False
                        Exit Function
                    End If
                End If
            Else
                IsExpA = False
                Exit Function
            End If
    ElseIf IsLabelSymbolLatin(aa$, "DIV") Or IsLabelSymbol(aa$, "���") Then
            If logical(bstack, aa$, r) Then
                MUL = 4
                R1 = po
                po = r
            ElseIf FastSymbol(aa$, "(") Then
                If IsExp(bstack, aa$, r) Then
                    MUL = 4
                    R1 = po
                    po = r
                    If Not FastSymbol(aa$, ")") Then
                        IsExpA = False
                        Exit Function
                    End If
                End If
            Else
                IsExpA = False
                Exit Function
            End If
ElseIf IsLabelSymbolLatin(aa$, "MOD") Or IsLabelSymbol(aa$, "��������") Or IsLabelSymbol(aa$, "����") Then
            If logical(bstack, aa$, r) Then
                MUL = 5
                R1 = po
                po = r
            ElseIf FastSymbol(aa$, "(") Then
                If IsExp(bstack, aa$, r) Then
                    MUL = 5
                    R1 = po
                    po = r
                    If Not FastSymbol(aa$, ")") Then
                        IsExpA = False
                        Exit Function
                    End If
                End If
            Else
                IsExpA = False
                Exit Function
            End If
ElseIf FastSymbol(aa$, ")") Then
            If parenthesis > 0 Then
                parenthesis = parenthesis - 1
                po = ac + po
                ac = 0
            Else
                aa$ = ")" & aa$
                RR = ac + po
                Exit Function
            End If
ElseIf IsLabelSymbolLatin(aa$, "XOR", , Not noand) Or IsLabelSymbol(aa$, "���", , Not noand) Then
'  good
  MUL = 3
If FastSymbol(aa$, "(") Then
    If IsExp(bstack, aa$, r) Then
    po = (ac + po)
    If po <> 0 Then po = -1
    If r <> 0 Then r = -1
  po = po Xor r
     ac = 0
        If Not FastSymbol(aa$, ")") Then
        IsExpA = False: Exit Function
        End If
   Else
   IsExpA = False: Exit Function
        End If
  ElseIf IsExp(bstack, aa$, r, False) Then
     po = (ac + po)
    If po <> 0 Then po = -1
    If r <> 0 Then r = -1
  po = po Xor r
     ac = 0
     Else
    IsExpA = False
    Exit Function
 End If


ElseIf IsLabelSymbolLatin(aa$, "OR", , Not noand) Or IsLabelSymbol(aa$, "�", , Not noand) Then
'  good
  MUL = 3
If FastSymbol(aa$, "(") Then
    If IsExp(bstack, aa$, r) Then
    po = (ac + po)
    If po <> 0 Then po = -1
    If r <> 0 Then r = -1
  po = po Or r
     ac = 0
        If Not FastSymbol(aa$, ")") Then
        IsExpA = False: Exit Function
        End If
   Else
   IsExpA = False: Exit Function
        End If
  ElseIf IsExp(bstack, aa$, r, False) Then
     po = (ac + po)
    If po <> 0 Then po = -1
    If r <> 0 Then r = -1
  po = po Or r
     ac = 0
     Else
    IsExpA = False
    Exit Function
 End If


ElseIf IsLabelSymbolLatin(aa$, "AND", , Not noand) Or IsLabelSymbol(aa$, "���", , Not noand) Then
'  good
  MUL = 3
If FastSymbol(aa$, "(") Then
    If IsExp(bstack, aa$, r) Then
    po = (ac + po)
    If po <> 0 Then po = -1
    If r <> 0 Then r = -1
  po = po And r
     ac = 0
        If Not FastSymbol(aa$, ")") Then
        IsExpA = False: Exit Function
        End If
   Else
   IsExpA = False: Exit Function
        End If
  ElseIf IsExp(bstack, aa$, r, False) Then
     po = (ac + po)
    If po <> 0 Then po = -1
    If r <> 0 Then r = -1
  po = po And r
     ac = 0
 End If
ElseIf FastSymbol(aa$, "<>") Then
'  good
  MUL = 3
If FastSymbol(aa$, "(") Then
    If IsExp(bstack, aa$, r) Then
  po = (ac + po) <> r
     ac = 0
        If Not FastSymbol(aa$, ")") Then
        IsExpA = False: Exit Function
        End If
   Else
   IsExpA = False: Exit Function
        End If
  ElseIf IsExp(bstack, aa$, r, False) Then
  po = (ac + po) <> r
     ac = 0
     Else
    IsExpA = False
    Exit Function
 End If
 
ElseIf FastSymbol(aa$, "<=") Then
'  good
  MUL = 3
   
    

If FastSymbol(aa$, "(") Then
    If IsExp(bstack, aa$, r) Then
  po = (ac + po) <= r
     ac = 0
        If Not FastSymbol(aa$, ")") Then
        IsExpA = False: Exit Function
        End If
   Else
   IsExpA = False: Exit Function
        End If
  ElseIf IsExp(bstack, aa$, r, False) Then
  po = (ac + po) <= r
     ac = 0
     Else
    IsExpA = False
    Exit Function
 End If

ElseIf FastSymbol(aa$, ">=") Then
'  good
  MUL = 3
   
    

If FastSymbol(aa$, "(") Then
    If IsExp(bstack, aa$, r) Then
  po = (ac + po) >= r
     ac = 0
        If Not FastSymbol(aa$, ")") Then
        IsExpA = False: Exit Function
        End If
   Else
   IsExpA = False: Exit Function
        End If
  ElseIf IsExp(bstack, aa$, r, False) Then
  po = (ac + po) >= r
     ac = 0
     Else
    IsExpA = False
    Exit Function
 End If
    
ElseIf FastSymbol(aa$, ">") Then
'  good
  MUL = 3
   
    

If FastSymbol(aa$, "(") Then
    If IsExp(bstack, aa$, r) Then
  po = (ac + po) > r
     ac = 0
        If Not FastSymbol(aa$, ")") Then
        IsExpA = False: Exit Function
        End If
   Else
   IsExpA = False: Exit Function
        End If
  ElseIf IsExp(bstack, aa$, r, False) Then
  po = (ac + po) > r
     ac = 0
     Else
    IsExpA = False
    Exit Function
 End If
    
ElseIf FastSymbol(aa$, "<") Then
'  good
  MUL = 3
   
    

If FastSymbol(aa$, "(") Then
    If IsExp(bstack, aa$, r) Then
  po = (ac + po) < r
     ac = 0
        If Not FastSymbol(aa$, ")") Then
        IsExpA = False: Exit Function
        End If
   Else
   IsExpA = False: Exit Function
        End If
  ElseIf IsExp(bstack, aa$, r, False) Then
  po = (ac + po) < r
     ac = 0
     Else
    IsExpA = False
    Exit Function
 End If
ElseIf FastSymbol(aa$, "==") Then
'  good
  MUL = 3
   
    

If FastSymbol(aa$, "(") Then
    If IsExp(bstack, aa$, r) Then
    If r = 0 Then
            po = (ac + po)
            If po = 0 Then
                po = True
            Else
                po = MyRound(po, 10) = 0
            End If
    Else
  po = MyRound((((ac + po) - r) / r), 10) = 0
  End If
     ac = 0
        If Not FastSymbol(aa$, ")") Then
        IsExpA = False: Exit Function
        End If
   Else
   IsExpA = False: Exit Function
        End If
  ElseIf IsExp(bstack, aa$, r, False) Then
    If r = 0 Then
            po = (ac + po)
            If po = 0 Then
                po = True
            Else
                po = MyRound(po, 10) = 0
            End If
    Else
  po = MyRound((((ac + po) - r) / r), 10) = 0
  End If
     ac = 0
     Else
    IsExpA = False
    Exit Function
 End If

ElseIf FastSymbol(aa$, "=") Then
'  good
  MUL = 3
   
    

If FastSymbol(aa$, "(") Then
    If IsExp(bstack, aa$, r) Then
  po = (ac + po) = r
     ac = 0
        If Not FastSymbol(aa$, ")") Then
        IsExpA = False: Exit Function
        End If
   Else
   IsExpA = False: Exit Function
        End If
  ElseIf IsExp(bstack, aa$, r, False) Then
  po = (ac + po) = r
     ac = 0
     Else
    IsExpA = False
    Exit Function
 End If
ElseIf FastSymbol(aa$, "-") Then
  ' second parameter push old value to ac
  ' get new one to r
  ' check if we have string logical
  ' or we have parenthesis (....
  ' or just a perform a -1*
If logical(bstack, aa$, r) Then
    R1 = -R1
    MUL = 3
    ac = ac + po
    po = r
    
 ElseIf FastSymbol(aa$, "(") Then
    If IsExp(bstack, aa$, r) Then
    R1 = -R1
    MUL = 3
    ac = ac + po
    po = r
    If Not FastSymbol(aa$, ")") Then
    IsExpA = False
    Exit Function
    End If
    End If
  Else
    R1 = -R1
  End If
ElseIf FastSymbol(aa$, "+") Then
If logical(bstack, aa$, r) Then
    
    MUL = 3
    ac = ac + po
    po = r
    ElseIf FastSymbol(aa$, "(") Then
    If IsExp(bstack, aa$, r) Then
    MUL = 3
    ac = ac + po
    po = r
    If Not FastSymbol(aa$, ")") Then
    IsExpA = False
    Exit Function
    End If
    End If
    
End If
Else
logic = True
Exit Do
End If
Loop
ac = ac + po
po = 1
Loop Until logic

RR = ac

Do While parenthesis > 0
If FastSymbol(aa$, ")") Then
parenthesis = parenthesis - 1
Else
Exit Do
End If
Loop
End Function
Function IsNumberA(A$, k As Long) As Boolean
If A$ <> "" Then
k = Val("0" & Left$(A$, InStr(2, A$ & " ", " ") - 1))


A$ = Mid$(A$, InStr(2, A$ & " ", " "))
IsNumberA = True
Else
IsNumberA = False
End If
End Function

Function IsNumberD(A$, D As Double) As Boolean
Dim a1 As Long
If A$ <> "" Then
For a1 = 1 To Len(A$) + 1
Select Case Mid$(A$, a1, 1)
Case " ", ",", ChrW(160)
If a1 > 1 Then Exit For
Case Is = Chr(2)
If a1 = 1 Then Exit Function
Exit For
End Select
Next a1
If a1 > Len(A$) Then a1 = Len(A$) + 1
D = CDbl(Val("0" & Left$(A$, a1 - 1)))
A$ = Mid$(A$, a1)
IsNumberD = True
Else
IsNumberD = False
End If
End Function
Function IsNumberLabel(A$, Label$) As Boolean
Dim a1 As Long, LI As Long, a2 As Long
LI = Len(A$)
' No zero number.
' First 1....9
' second ...to fifth (0 to 9) 99999 is the maximum
'
If LI > 0 Then
a1 = 1

While Mid$(A$, a1, 1) = " ": a1 = a1 + 1: Wend
' we start from a1
a2 = a1
If a1 > LI Then A$ = "": Exit Function
If LI > 5 + a2 Then LI = 4 + a2
If Mid$(A$, a1, 1) Like "[0-9]" Then
Do While a1 <= LI
a1 = a1 + 1
If Not Mid$(A$, a1, 1) Like "[0-9]" Then Exit Do

Loop
Label$ = Mid$(A$, a2, a1 - a2): A$ = Mid$(A$, a1)
IsNumberLabel = True
End If

End If
End Function
Function IsNumberQuery(A$, fr As Long, r As Double, lR As Long) As Boolean
Dim SG As Long, sng As Long, n$, ig$, DE$, sg1 As Long, ex$   ', e$
' ti kanei to e$
If A$ = "" Then IsNumberQuery = False: Exit Function
SG = 1
sng = fr - 1
    Do While sng < Len(A$)
    sng = sng + 1
    Select Case Mid$(A$, sng, 1)
    Case " ", "+", ChrW(160)
    Case "-"
    SG = -SG
    Case Else
    Exit Do
    End Select
    Loop
n$ = Mid$(A$, sng)

If Val("0" & Mid$(A$, sng, 1)) = 0 And Left(Mid$(A$, sng, 1), sng) <> "0" And Left(Mid$(A$, sng, 1), sng) <> "." Then
IsNumberQuery = False

Else
'compute ig$
    If Mid$(A$, sng, 1) = "." Then
    ' no long part
    ig$ = "0"
    DE$ = "."

    Else
    Do While sng <= Len(A$)
        
        Select Case Mid$(A$, sng, 1)
        Case "0" To "9"
        ig$ = ig$ & Mid$(A$, sng, 1)
        Case "."
        DE$ = "."
        Exit Do
        Case Else
        Exit Do
        End Select
       sng = sng + 1
    Loop
    End If
    ' compute decimal part
    If DE$ <> "" Then
      sng = sng + 1
        Do While sng <= Len(A$)
       
        Select Case Mid$(A$, sng, 1)
        Case " ", ChrW(160)
        If Not (sg1 And Len(ex$) = 1) Then
        Exit Do
        End If
        Case "0" To "9"
        If sg1 Then
        ex$ = ex$ & Mid$(A$, sng, 1)
        Else
        DE$ = DE$ & Mid$(A$, sng, 1)
        End If
        Case "E", "e" ' ************check it
             If ex$ = "" Then
               sg1 = True
        ex$ = "E"
        Else
        Exit Do
        End If
   
               Case "�", "�" ' ************check it
                         If ex$ = "" Then
               sg1 = True
        ex$ = "E"
        Else
        Exit Do
        End If
        
        
        Case "+", "-"
        If sg1 And Len(ex$) = 1 Then
         ex$ = ex$ & Mid$(A$, sng, 1)
        Else
        Exit Do
        End If
        Case Else
        Exit Do
        End Select
         sng = sng + 1
        Loop
        If ex$ = "E" Or ex$ = "E-" Or ex$ = "E+" Then
        sng = sng - Len(ex$)
        End If
    End If
    If ig$ = "" Then
    IsNumberQuery = False
    lR = 1
    Else
    If SG < 0 Then ig$ = "-" & ig$
    Err.clear
    On Error Resume Next
    If Len(ex$) = 1 Then
    n$ = ig$ & DE$ & ex$ + "1"
     If IsExp(basestack1, n$, r) Then
    sng = Len(ig$ & DE$ & ex$) - Len(n$)
        fr = 0
    End If
       Else
    n$ = ig$ & DE$ & ex$
    If IsExp(basestack1, n$, r) Then
    sng = Len(ig$ & DE$ & ex$) - Len(n$)
        fr = 0
    Else
    End If
    r = Val(ig$ & DE$ & ex$)
    End If
    If Err > 0 Then
    lR = 0
    Else
      'A$ = Mid$(A$, sng)
    lR = sng - fr + 1
       IsNumberQuery = True
    End If
    End If
End If
End Function


Function IsNumberOnly(A$, fr As Long, r As Double, lR As Long) As Boolean
Dim SG As Long, sng As Long, n$, ig$, DE$, sg1 As Long, ex$   ', e$
' ti kanei to e$
If A$ = "" Then IsNumberOnly = False: Exit Function
SG = 1
sng = fr - 1
    Do While sng < Len(A$)
    sng = sng + 1
    Select Case Mid$(A$, sng, 1)
    Case " ", "+", ChrW(160)
    Case "-"
    SG = -SG
    Case Else
    Exit Do
    End Select
    Loop
n$ = Mid$(A$, sng)

If Val("0" & Mid$(A$, sng, 1)) = 0 And Left(Mid$(A$, sng, 1), sng) <> "0" And Left(Mid$(A$, sng, 1), sng) <> "." Then
IsNumberOnly = False

Else
'compute ig$
    If Mid$(A$, sng, 1) = "." Then
    ' no long part
    ig$ = "0"
    DE$ = "."

    Else
    Do While sng <= Len(A$)
        
        Select Case Mid$(A$, sng, 1)
        Case "0" To "9"
        ig$ = ig$ & Mid$(A$, sng, 1)
        Case "."
        DE$ = "."
        Exit Do
        Case Else
        Exit Do
        End Select
       sng = sng + 1
    Loop
    End If
    ' compute decimal part
    If DE$ <> "" Then
      sng = sng + 1
        Do While sng <= Len(A$)
       
        Select Case Mid$(A$, sng, 1)
        Case " ", ChrW(160)
        If Not (sg1 And Len(ex$) = 1) Then
        Exit Do
        End If
        Case "0" To "9"
        If sg1 Then
        ex$ = ex$ & Mid$(A$, sng, 1)
        Else
        DE$ = DE$ & Mid$(A$, sng, 1)
        End If
        Case "E", "e" ' ************check it
             If ex$ = "" Then
               sg1 = True
        ex$ = "E"
        Else
        Exit Do
        End If
   
               Case "�", "�" ' ************check it
                         If ex$ = "" Then
               sg1 = True
        ex$ = "E"
        Else
        Exit Do
        End If
        
        
        Case "+", "-"
        If sg1 And Len(ex$) = 1 Then
         ex$ = ex$ & Mid$(A$, sng, 1)
        Else
        Exit Do
        End If
        Case Else
        Exit Do
        End Select
         sng = sng + 1
        Loop
        If ex$ = "E" Or ex$ = "E-" Or ex$ = "E+" Then
        sng = sng - Len(ex$)
        End If
    End If
    If ig$ = "" Then
    IsNumberOnly = False
    lR = 1
    Else
    If SG < 0 Then ig$ = "-" & ig$
    r = Val(ig$ & DE$ & ex$)
      'A$ = Mid$(A$, sng)
    lR = sng - fr + 1
    IsNumberOnly = True
    End If
End If
End Function


Function IsNumberD2(A$, D As Double) As Boolean
' for inline stacitems
Dim a1 As Long
If A$ <> "" Then
For a1 = 1 To Len(A$) + 1
Select Case Mid$(A$, a1, 1)
Case " ", ChrW(160)
If a1 > 1 Then Exit For
Case Is = Chr(2)
If a1 = 1 Then Exit Function
Exit For
End Select
Next a1
If a1 > Len(A$) Then a1 = Len(A$) + 1
If IsNumberOnly(A$, 1, D, a1) Then
A$ = Mid$(A$, a1)
IsNumberD2 = True
Else
IsNumberD2 = False
End If
Else
IsNumberD2 = False
End If

End Function

Function IsNumberD3(A$, fr As Long, a1 As Long) As Boolean
' for inline stacitems
Dim D As Double
If A$ <> "" Then
For a1 = fr To Len(A$) + 1
Select Case Mid$(A$, a1, 1)
Case " ", ChrW(160)
If a1 > fr Then Exit For
Case Is = Chr(2)
If a1 = fr Then Exit Function
Exit For
End Select
Next a1
If a1 > Len(A$) Then a1 = Len(A$) + 1
If IsNumberOnly(A$, fr, D, a1) Then
IsNumberD3 = True
Else
a1 = fr
IsNumberD3 = False
End If
Else
a1 = fr
IsNumberD3 = False
End If

End Function

Sub tsekme()
Dim b$, l As Double
b$ = " 12323 45.44545 -2345.343 .345 345.E-45 34.53 434 534 534 534 345"
'b$ = ""
Debug.Print b$
While IsNumberD2(b$, l)
Debug.Print l
Wend
End Sub
Function IsNumberCheck(A$, r As Double) As Boolean
Dim sng&, SG As Double, ig$, DE$, sg1 As Boolean, ex$, s$
SG = 1
Do While sng& < Len(A$)
sng& = sng& + 1
Select Case Mid$(A$, sng&, 1)
Case "#"
    If Len(A$) > sng& Then
    If MaybeIsSymbolNoSpace(Mid$(A$, sng& + 1, 1), "[0123456789ABCDEFabcdef]") Then
    s$ = "0x00" + Mid$(A$, sng& + 1, 6)
    If Len(s$) < 10 Then Exit Function
        If IsNumberCheck(s$, r) Then
        If s$ <> "" Then
          
             
        Else
            s$ = Right$("00000000" & Mid$(A$, sng& + 1, 6), 8)
            A$ = Mid$(A$, sng& + 7)
   r = SG * -(CDbl(UNPACKLNG(Right$(s$, 2)) * 65536#) + CDbl(UNPACKLNG(Mid$(s$, 5, 2)) * 256#) + CDbl(UNPACKLNG(Mid$(s$, 3, 2))))
   IsNumberCheck = True
   Exit Function
        End If
        End If
        Else
        
    End If
    Else

    '' out
    End If
    Exit Function
Case " ", "+", ChrW(160)
Case "-"
SG = -SG
Case Else
Exit Do
End Select
Loop
A$ = Mid$(A$, sng&)
sng& = 1
If Val("0" & Mid$(A$, sng&, 1)) = 0 And Left(Mid$(A$, sng&, 1), sng&) <> "0" And Left(Mid$(A$, sng&, 1), sng&) <> "." Then
IsNumberCheck = False
Else

    If Mid$(A$, sng&, 1) = "." Then

    ig$ = "0"
    DE$ = "."
    ElseIf LCase(Mid$(A$, sng&, 2)) Like "0[x�]" Then
    ig$ = "0"
    DE$ = "0x"
  sng& = sng& + 1
Else
    Do While sng& <= Len(A$)
        
        Select Case Mid$(A$, sng&, 1)
        Case "0" To "9"
        ig$ = ig$ & Mid$(A$, sng&, 1)
        Case "."
        DE$ = "."
        Exit Do
        Case Else
        Exit Do
        End Select
       sng& = sng& + 1
    Loop
    End If
    ' compute decimal part
    If DE$ <> "" Then
      sng& = sng& + 1
        Do While sng& <= Len(A$)
       
        Select Case Mid$(A$, sng&, 1)
        Case " ", ChrW(160)
        If Not (sg1 And Len(ex$) = 1) Then
        Exit Do
        End If
        Case "A" To "D", "a" To "d", "F", "f"
        If Left$(DE$, 2) = "0x" Then
        DE$ = DE$ & Mid$(A$, sng&, 1)
        End If
        Case "0" To "9"
        If sg1 Then
        ex$ = ex$ & Mid$(A$, sng&, 1)
        Else
        DE$ = DE$ & Mid$(A$, sng&, 1)
        End If
        Case "E", "e"
         If Left$(DE$, 2) = "0x" Then
         DE$ = DE$ & Mid$(A$, sng&, 1)
         Else
              If ex$ = "" Then
               sg1 = True
        ex$ = "E"
        Else
        Exit Do
        End If
        End If
        Case "�", "�"
                         If ex$ = "" Then
               sg1 = True
        ex$ = "E"
        Else
        Exit Do
        End If
        ex$ = "E"
        
        Case "+", "-"
        If sg1 And Len(ex$) = 1 Then
         ex$ = ex$ & Mid$(A$, sng&, 1)
        Else
        Exit Do
        End If
        Case Else
        Exit Do
        End Select
         sng& = sng& + 1
        Loop
        If ex$ = "E" Or ex$ = "E-" Or ex$ = "E+" Then sng& = sng& - Len(ex$)
    End If
    If ig$ = "" Then
    IsNumberCheck = False
    Else
  ''  If SG < 0 Then ig$ = "-" & ig$
    If Left$(DE$, 2) = "0x" Then
           ' r = UNPACKLNG(Left$(ex$, 8))
            If Mid$(DE$, 3) = "" Then
            r = 0
            Else
            DE$ = Right$("00000000" & Mid$(DE$, 3), 8)
            r = CDbl(UNPACKLNG(Left$(DE$, 4)) * 65536#) + CDbl(UNPACKLNG(Right$(DE$, 4)))
            End If
    Else
        If SG < 0 Then ig$ = "-" & ig$
                   On Error Resume Next
                           If ex$ = "E" Or ex$ = "E-" Or ex$ = "E+" Then
                               r = Val(ig$ & DE$ & ex$ & "0")
                               sng = sng + Len(ex$)
                           ElseIf ex$ <> "" Then
                               If Val(Mid$(ex$, 2)) > 308 Or Val(Mid$(ex$, 2)) < -324 Then
                                   r = Val(ig$ & DE$)
                                   sng = sng - Len(ex$)
                                   ex$ = ""
                                   
                               Else
                                   r = Val(ig$ & DE$ & ex$)
                               End If
                           Else
                       
                               r = Val(ig$ & DE$)
                           End If
                     If Err.Number = 6 Then
                         If Len(ex$) > 2 Then
                             ex$ = Left$(ex$, Len(ex$) - 1)
                             sng = sng - 1
                             Err.clear
                             r = Val(ig$ & DE$ & ex$)
                             If Err.Number = 6 Then
                                 sng = sng - Len(ex$)
                                  r = Val(ig$ & DE$)
                             End If
                         End If
                       MyEr "Error in exponet", "����� ���� ������"
                       IsNumberCheck = False
                       Exit Function
                     End If
           
         End If
           A$ = Mid$(A$, sng&)
           IsNumberCheck = True
End If
End If
End Function
Function IsNumber(bstack As basetask, A$, r As Double) As Boolean
Dim VR As Long, V$, n$, V1&, w1 As Long, w2 As Long, p As Double, s1$, dd As Long, dn As Long, W3 As Long
Dim PP As Double, pppp As mArray, nBstack As basetask, pppp1 As mArray, vvv As Variant
Dim anything As Object

If A$ = "" Then IsNumber = False: Exit Function
On Error Resume Next
Dim sng&, SG As Double, ig$, DE$, sg1 As Boolean, ex$, s$
Dim r2 As Double, r3 As Double, r4 As Double, par As Boolean
SG = 1

Set bstack.LastObj = Nothing
'compute the sign portion
againfordot:
Do While sng& < Len(A$)
sng& = sng& + 1
Select Case Mid$(A$, sng&, 1)
Case "#"
    If Len(A$) > sng& Then
    If MaybeIsSymbolNoSpace(Mid$(A$, sng& + 1, 1), "[0123456789ABCDEFabcdef]") Then
    s$ = "0x00" + Mid$(A$, sng& + 1, 6)
    If Len(s$) < 10 Then Exit Function
        If IsNumberCheck(s$, r) Then
        If s$ <> "" Then
          
             
        Else
            s$ = Right$("00000000" & Mid$(A$, sng& + 1, 6), 8)
            A$ = Mid$(A$, sng& + 7)
   r = SG * -(CDbl(UNPACKLNG(Right$(s$, 2)) * 65536#) + CDbl(UNPACKLNG(Mid$(s$, 5, 2)) * 256#) + CDbl(UNPACKLNG(Mid$(s$, 3, 2))))
   IsNumber = True
   Exit Function
        End If
        End If
        Else
        
    End If
    Else

    '' out
    End If
    Exit Function
Case " ", "+", ChrW(160)
Case "-"
SG = -SG
Case Else
Exit Do
End Select
Loop
A$ = Mid$(A$, sng&)
n$ = A$
w2 = Len(n$)
sng& = 1
V1& = IsLabelBig(bstack, n$, V$, par)

If V1& = 0 Then GoTo zerohere
''''''''''''''''''If NoOptimum Then If v1& > 0 Then par = False
If par Then
par = False
removethis:
V1& = Abs(V1&)
 
 If V1& = 1 Then
 GoTo LOOKFORVARNUM
 ElseIf V1& = 4 Then
 GoTo LOOKFORVARNUM4
 ElseIf V1& = 5 Or V1& = 7 Then
 GoTo LOOKFORSUBNUM
 Else
 '
 IsNumber = False
    Exit Function
 End If
 ''
End If
Select Case V1&
Case 1
Select Case V$
Case "THIS", "����"
Set bstack.LastObj = Nothing

 If bstack.UseGroupname <> "" Then
     s1$ = Left$(bstack.UseGroupname, Len(bstack.UseGroupname) - 1)
     If GetVar(bstack, s1$, W3) Then
          CopyGroup var(W3), bstack
          
    End If
    Else
    s1$ = ".DELETEME"
    If IsLabel(bstack, s1$, V$) < 0 Then
    If Len(V$) = 8 Then A$ = n$: IsNumber = False: Exit Function
    V$ = Left$(V$, Len(V$) - 9)
     If GetVar(bstack, V$, W3) Then
          CopyGroup var(W3), bstack
          
    End If
    End If
    End If
     r = SG * 0
IsNumber = True
A$ = n$
Exit Function
Case "PEN", "����"
A$ = n$
With players(GetCode(bstack.Owner))
For w1 = 0 To 15
If QBColor(w1) = .mypen Then
r = SG * w1
IsNumber = True
Exit Function
End If
Next w1
r = SG * -.mypen
IsNumber = True

Exit Function
End With
'myCompEq("�","�")
Case "HWND", "��������"
r = SG * bstack.Owner.hWnd
A$ = n$
IsNumber = True
Exit Function
Case "LOCALE", "������"
r = SG * cLid
    A$ = n$
    IsNumber = True
    Exit Function

Case "CODEPAGE", "������������"
r = SG * UserCodePage
    A$ = n$
    IsNumber = True
    Exit Function
Case "SPEECH", "�����"
  r = SG * NumVoices

    A$ = n$
    IsNumber = True
    Exit Function
Case "ERROR", "�����"
  r = SG * LastErNum1
 LastErNum1 = 0  'reset when readed
    A$ = n$
    IsNumber = True
    Exit Function
Case "SCREEN.Y", "�������.�"
  r = SG * ScrY()
    A$ = n$
    IsNumber = True
    Exit Function
Case "SCREEN.X", "�������.�"
  r = SG * ScrX()
     A$ = n$
    IsNumber = True
    Exit Function
Case "TWIPSY", "����.�������"
  r = SG * Screen.TwipsPerPixelY

    A$ = n$
    IsNumber = True
    Exit Function
Case "TWIPSX", "������.�������"
  r = SG * Screen.TwipsPerPixelX
    A$ = n$
    IsNumber = True
    Exit Function
Case "REPORTLINES", "���������������"
  r = SG * players(GetCode(bstack.Owner)).LastReportLines
    A$ = n$
    IsNumber = True
    Exit Function
Case "LINESPACE", "��������"
    r = SG * players(GetCode(bstack.Owner)).uMineLineSpace '' bstack.linespace
    A$ = n$
    IsNumber = True
    Exit Function
Case "MODE", "�����"
With players(GetCode(bstack.Owner))
If bstack.toprinter Then
    If .uMineLineSpace > .MineLineSpace Then
        r = SG * .SZ / 6
    Else
         r = SG * .SZ / 3
    End If
    Else
    If .uMineLineSpace > .MineLineSpace Then
        r = SG * .SZ / 2
    Else
         r = SG * .SZ
    End If
    
    
    End If
    End With
    A$ = n$
    IsNumber = True
    Exit Function
Case "MEMORY", "�����"
    r = SG * check_mem
    A$ = n$
    IsNumber = True
    Exit Function
Case "CHARSET", "����������"   ' charset of the object to display
  r = SG * players(GetCode(bstack.Owner)).charset
    A$ = n$
    IsNumber = True
    Exit Function
    Case "ITALIC", "������"  ' charset of the object to display
    
    r = SG * players(GetCode(bstack.Owner)).italics
    A$ = n$
    IsNumber = True
    Exit Function
    Case "BOLD", "������"  ' charset of the object to display

    r = SG * players(GetCode(bstack.Owner)).bold
    A$ = n$
    IsNumber = True
    Exit Function

Case "COLORS", "�������"
    r = SG * 2# ^ bitsPerPixel
    A$ = n$
    IsNumber = True
    Exit Function
Case "�������", "ASCENDING"
    r = 0
    A$ = n$
    IsNumber = True
    Exit Function
Case "��������", "DESCENDING"
    r = SG
    A$ = n$
    IsNumber = True
    Exit Function
'Case "�����������", "UPDATABLE"
  '  r = sg * dbUpdatableField
   ' a$ = N$
   ' IsNumber = True
   ' Exit Function

' 1 for boolean
' 2 for byte number
' 3 for long
' 4 for long long
' 5 for currency
' 6 float single
' 7 float double
' 8 date
' 9 binary
' 10 text
' 11 ole
' 12 memo
Case "BOOLEAN", "�������"
    r = SG * 1
        A$ = n$
    IsNumber = True
    Exit Function
Case "BYTE", "�����"
    r = SG * 2
        A$ = n$
    IsNumber = True
    Exit Function
Case "INTEGER", "��������"
    r = SG * 3
        A$ = n$
    IsNumber = True
    Exit Function
Case "LONG", "������"
    r = SG * 4
        A$ = n$
    IsNumber = True
    Exit Function
Case "CURRENCY", "���������"
    r = SG * 5
        A$ = n$
    IsNumber = True
    Exit Function
Case "SINGLE", "�����"
    r = SG * 6
        A$ = n$
    IsNumber = True
    Exit Function
Case "DOUBLE", "������"
    r = SG * 7
        A$ = n$
    IsNumber = True
    Exit Function
Case "DATEFIELD", "����������"
    r = SG * 8
        A$ = n$
    IsNumber = True
    Exit Function
Case "BINARY", "�������"
    r = SG * 9
        A$ = n$
    IsNumber = True
    Exit Function
Case "TEXT", "�������"
    r = SG * 10
        A$ = n$
    IsNumber = True
    Exit Function
Case "OLE"
    r = SG * 11
        A$ = n$
    IsNumber = True
    Exit Function
Case "MEMO", "��������"
    r = SG * 12
        A$ = n$
    IsNumber = True
    Exit Function
Case "REVISION", "����������"
    r = SG * Revision
    A$ = n$
    IsNumber = True
    Exit Function
  Case "BROWSER", "��������"
        
        r = SG * (Trim(LCase(Form1.view1.LocationURL)) = "about:blank" Or Form1.view1.Visible = False)
    A$ = n$
    IsNumber = True
    Exit Function
Case "VERSION", "������"
    r = SG * Val(CStr(VerMajor) & "." & CStr(VerMinor))
    A$ = n$
    IsNumber = True
    Exit Function
Case "MOTION.X", "������.�"
With bstack
If .toprinter Then
    r = 0
Else
    r = SG * bstack.Owner.Left
    End If
    End With
    A$ = n$
    IsNumber = True
    Exit Function
Case "MOTION.Y", "������.�"
With bstack
If .toprinter Then
    r = 0
Else
    r = SG * .Owner.top
    End If
    
    End With
    A$ = n$
    IsNumber = True

    Exit Function
Case "MOTION.XW", "������.��", "MOTION.WX", "������.��"
    r = SG * Form1.Left
    A$ = n$
    IsNumber = True
    Exit Function
Case "MOTION.YW", "������.��", "MOTION.WY", "������.��"
    r = SG * Form1.top
    A$ = n$
    IsNumber = True
    Exit Function
Case "FIELD", "�����"
    r = SG * result
    
    A$ = n$
    IsNumber = True
    Exit Function
Case "MOUSE.KEY", "�������.���"
  
    r = SG * mouse


       A$ = n$
    IsNumber = True
    Exit Function
Case "MOUSE", "�������"

If Not releasemouse Then
If Not Form1.Visible Then Form1.Visible = True
End If
MyDoEvents

     r = SG * MOUB

    

A$ = n$
    IsNumber = True
    Exit Function
Case "MOUSE.X", "�������.�"

With bstack
If .toprinter Then
'mouyb = Printer.CurrentY
r = Form1.PrinterDocument1.CurrentX
ElseIf .toback Then
'mouyb = mouy
r = MOUSEX(Form1.Left)
Else
'mouyb = mouy - di.top
r = MOUSEX(Form1.Left + bstack.Owner.Left)
End If
End With
      A$ = n$
    IsNumber = True
    Exit Function
Case "MOUSE.Y", "�������.�"
With bstack
If .toprinter Then

r = Form1.PrinterDocument1.CurrentY
ElseIf .toback Then
'mouyb = mouy
r = MOUSEY(Form1.top)
Else
'mouyb = mouy - di.top
r = MOUSEY(Form1.top + bstack.Owner.top)
End If
End With
       A$ = n$
    IsNumber = True
    Exit Function
Case "MOUSEA.X", "��������.�"
  
    r = SG * MOUSEX(Form1.Left)
    
      A$ = n$
    IsNumber = True
    Exit Function
Case "MOUSEA.Y", "��������.�"
 
    r = SG * MOUSEY(Form1.top)
   
       A$ = n$
    IsNumber = True
    Exit Function

Case "TRUE", "������", "������"
    r = SG * -1
    A$ = n$
    IsNumber = True
    Exit Function
Case "FALSE", "������", "������"
    r = 0
    A$ = n$
    IsNumber = True
    Exit Function
Case "STACK.SIZE", "�������.�����"
    IsNumber = True
    r = SG * bstack.soros.Total
    A$ = n$
    Exit Function
Case "ISNUM", "�����"
    IsNumber = True
      If bstack.soros.Total > 0 Then
    If bstack.soros.PopType = "N" Then r = SG * True Else r = 0
    Else
    r = 0
    End If
    A$ = n$
    Exit Function
Case "PI", "��"
    r = SG * Pi
    A$ = n$
    IsNumber = True
    Exit Function
Case "NOT", "���", "���"
    r = SG * -1
    A$ = "-" & n$
    IsNumber = True
    Exit Function
Case "ISLET", "�����"
    IsNumber = True
    If bstack.soros.Total > 0 Then
    If bstack.soros.PopType = "S" Then r = SG * True Else r = 0
    End If
    A$ = n$
    Exit Function
Case "WIDTH", "������"
    IsNumber = True
    r = SG * players(GetCode(bstack.Owner)).mx
    A$ = n$
    Exit Function
Case "POINT", "������"
'  dsprite ??
    IsNumber = True
    
    With players(GetCode(bstack.Owner))
       r = SG * -(GetPixel(bstack.Owner.hDC, .XGRAPH \ dv15, .YGRAPH \ dv15) And &HFFFFFF)
    End With
    A$ = n$
    Exit Function
Case "POS.X", "����.�"
    IsNumber = True
    r = SG * players(GetCode(bstack.Owner)).XGRAPH
    A$ = n$
    Exit Function
Case "POS.Y", "����.�"
    IsNumber = True
    r = SG * players(GetCode(bstack.Owner)).YGRAPH
    A$ = n$
    Exit Function
Case "SCALE.X", "������.�", "�.������", "X.TWIPS"
    IsNumber = True
    If bstack.toprinter Then
    r = SG * Form1.PrinterDocument1.ScaleWidth
    Else
    r = SG * players(GetCode(bstack.Owner)).MAXXGRAPH
    End If
    A$ = n$
    Exit Function
Case "SCALE.Y", "������.�", "�.������", "Y.TWIPS"
    IsNumber = True
    If bstack.toprinter Then
    r = SG * Form1.PrinterDocument1.ScaleHeight
    Else
    r = SG * players(GetCode(bstack.Owner)).MAXYGRAPH
    End If
    A$ = n$
    Exit Function
Case "EMPTY", "����"
    IsNumber = True
    r = SG * (bstack.soros.Total = 0)
    A$ = n$
    Exit Function
Case "MOVIE.COUNTER", "MEDIA.COUNTER", "MUSIC.COUNTER", "������.��������", "�������.��������"
    IsNumber = True
    r = SG * MediaPlayer1.getPositionInSec
    If MediaPlayer1.error > 0 Then
    r = SG * -1
    End If
    A$ = n$
    Exit Function
Case "PLAYSCORE", "����������"
    IsNumber = True
    
       r = SG * TaskMaster.PlayMusic
    A$ = n$
    Exit Function
Case "MOVIE", "MEDIA", "MUSIC", "������", "�������"
    IsNumber = True
    AVIRUN = MediaPlayer1.isMoviePlaying
    r = SG * AVIRUN
    A$ = n$
    Exit Function
Case "DURATION", "��������"
    IsNumber = True
    r = SG * MediaPlayer1.getLengthInMS / 1000
   
    A$ = n$
    Exit Function
Case "VOLUME", "������"
    IsNumber = True
    r = SG * CDbl(CLng(vol))
    A$ = n$
    Exit Function
Case "TAB", "�����"
    IsNumber = True
    r = SG * players(GetCode(bstack.Owner)).Column + 1  'CHANGED FROM Ver 7.1
    A$ = n$
    Exit Function
Case "HEIGHT", "����"
    IsNumber = True
    r = SG * players(GetCode(bstack.Owner)).My
    A$ = n$
    Exit Function
Case "POS", "����"
    IsNumber = True
    
    
    
    r = SG * GetRealPos(bstack.Owner)
    A$ = n$
    Exit Function
Case "ROW", "������"
    IsNumber = True
    r = SG * GetRealRow(bstack.Owner)
    A$ = n$
    Exit Function
    Case "TIMECOUNT", "������" ' ****************************
  IsNumber = True
    r = SG * prof.MARKTWO
    A$ = n$
    Exit Function

Case "TICK", "���" ' ****************************
  IsNumber = True
    r = SG * MasterTimer
    A$ = n$
    Exit Function
Case "TODAY", "������"
    IsNumber = True
    r = SG * CDbl(Date)
    A$ = n$
    Exit Function
Case "NOW", "����"
    IsNumber = True
    r = SG * CDbl(CDate(time))
    A$ = n$
     Exit Function
Case "MENU.VISIBLE", "��������.�������"  ' NEW 6.5 REV 8
    IsNumber = True
    r = SG * Form1.List1.Visible
    A$ = n$
    Exit Function
Case "MENUITEMS", "��������"
    IsNumber = True
    r = SG * Form1.List1.listcount
    A$ = n$
    Exit Function
Case "MENU", "�������"
    IsNumber = True
    r = 0
    With Form1.List1
    If .listcount > 0 Then
 
     r = SG * CDbl(.listindex + 1)
    End If
    End With
    A$ = n$
    Exit Function
Case "NUMBER", "�������", "����"
    If bstack.soros.Total = 0 Then
    A$ = n$
            MyErMacro A$, "Stack is empty", "O ����� ����� ������"
  
        IsNumber = False: Exit Function

    ElseIf bstack.soros.PopType = "N" Then
    r = SG * bstack.soros.PopVal
    A$ = n$
    IsNumber = True
    Exit Function
    Else
     A$ = n$
            MyErMacro A$, "Stack top isn't number", "� ������ ��� ����� ��� ����� �������"
  
    IsNumber = False
    End If
    Exit Function
Case Else

LOOKFORVARNUM:

If GetVar(bstack, V$, VR) Then
If Typename(var(VR)) = "Group" Then


CopyGroup var(VR), bstack


End If

r = SG * var(VR)



A$ = n$
IsNumber = True
Else
If Len(V$) > 5 Then
If Left$(V$, 5) = "THIS." Or Left$(V$, 5) = "����." Then
V$ = Mid$(V$, 5)
V1& = IsLabel(bstack, (V$), V$)
If V$ <> "" Then GoTo removethis
End If
End If
IsNumber = False  ''         " " + & String$(w2 - Len(n$), " ")
 ''If w2 >= Len(n$) Then a$ = " " & String$(w2 - Len(n$), " ") + n$ Else a$ = n$
  If w2 >= Len(n$) Then A$ = NLtrim$(A$) Else A$ = n$
   
 If FindNameForGroup(bstack, V$) Then
 MyErMacro A$, "Unknown Property " & V$, "������� �������� " & V$
 Else
MyErMacro A$, "Unknown Variable " & V$, "������� ��������� " & V$
End If
End If
Exit Function


End Select
Case 4
LOOKFORVARNUM4:
If GetVar(bstack, V$, VR) Then
r = SG * var(VR)
A$ = n$
IsNumber = True
Else
IsNumber = False
   If w2 >= Len(n$) Then A$ = " " & String$(w2 - Len(n$), " ") + n$ Else A$ = n$
 If FindNameForGroup(bstack, V$) Then
 MyErMacro A$, "Unknown Property " & V$, "������� �������� " & V$
 Else
MyErMacro A$, "Unknown Variable " & V$, "������� ��������� " & V$
End If
End If


Exit Function
Case 7
 GoTo LOOKFORSUBNUM
Case 5
On Error Resume Next
Select Case V$
Case "PARAM(", "�����("
V$ = ""
If IsStrExp(bstack, n$, s1$) Then

Do
w1 = Len(s1$)
      If IsNumberD2(s1$, p) Then
      If V$ = "" Then
        r = SG * p
        V$ = ","
      Else
        V$ = V$ + "," + CStr(p)
      End If
      Else
             ISSTRINGA s1$, s$
        If V$ = "" Then Exit Do Else V$ = V$ + ",{" + s$ + "}"
    End If
    FastSymbol s1$, ","
Loop Until Trim$(s1) = "" Or w1 = Len(s1$)
    

End If
    IsNumber = FastSymbol(n$, ")", True)
    A$ = Mid$(V$, 2) + n$
    Exit Function

Case "STACKITEM(", "���������("

If IsExp(bstack, n$, p) Then
W3 = Abs(CLng(p))
backitem:
    If bstack.soros.Total < W3 Then
    A$ = n$
            MyErMacro A$, "Stack item not found at position " & CStr(W3), "��� ������� ���� ����� ��� ���� " & CStr(W3)
  
        IsNumber = False: Exit Function

    ElseIf bstack.soros.StackItemType(W3) = "N" Then
    r = SG * bstack.soros.StackItem(W3)
    A$ = n$
    IsNumber = FastSymbol(A$, ")", True)
    Exit Function
    Else
     A$ = n$
            MyErMacro A$, "Stack item isn't number at position " & CStr(W3), "� ���� ��� ����� ��� ����� ������� ��� ���� " & CStr(W3)
  
    IsNumber = False
    End If
    Exit Function
Else
W3 = 1
GoTo backitem
End If
Case "SGN(", "���("
If IsExp(bstack, n$, p) Then
r = SG * Sgn(MyRound(p, 13))

A$ = n$
 IsNumber = FastSymbol(A$, ")", True)
 Else
 A$ = n$: MissParam A$: IsNumber = False
End If
Exit Function

Case "FRAC(", "���("
If IsExp(bstack, n$, p) Then
r = SG * MyRound(Abs(Abs(p) - Int(Abs(p))), 13)

A$ = n$
 IsNumber = FastSymbol(A$, ")", True)
 Else
 A$ = n$: MissParam A$: IsNumber = False
End If
Exit Function
Case "MATCH(", "�������("
If IsStrExp(bstack, n$, s1$) Then
If s1$ = "" Then
r = 0
A$ = n$
               IsNumber = FastSymbol(A$, ")", True)
ElseIf VALIDATEmStiva(bstack, UCase$(s1$), s$) Then   ' Only S and N
                If s$ = "" Then
                    r = 0
                Else
                   r = -SG
               End If
               Else
               r = 0
               End If
               A$ = n$
               IsNumber = FastSymbol(A$, ")", True)
Else
A$ = n$: MissParam A$
End If
Exit Function
Case "LOCALE(", "������("
If IsStrExp(bstack, n$, s1$) Then
If FastSymbol(n$, ",") Then
If IsExp(bstack, n$, p) Then
r = SG * FoundSpecificLocaleId(s1$, CLng(p))
Else
A$ = n$: MissParam A$: IsNumber = False: Exit Function
End If
Else
r = SG * FoundLocaleId(s1$)
End If
   A$ = n$

    IsNumber = FastSymbol(A$, ")", True)
End If
Exit Function
Case "FILELEN(", "�������.�����("
If IsStrExp(bstack, n$, s1$) Then
If s1$ = "" Then
r = 0
A$ = n$
               IsNumber = FastSymbol(A$, ")", True)
Else
If ExtractPath(s1$) = "" Then
                If CFname(s1$) <> "" Then
                    s1$ = CFname(s1$)
                ElseIf mylcasefILE(s1$) = ExtractName(s1$) Then
                    s1$ = mcd + s1$
                End If
End If
       r = SG * FileLen(GetDosPath(s1$))
               A$ = n$
               IsNumber = FastSymbol(A$, ")", True)
End If
Else
A$ = n$: MissParam A$
End If
Exit Function
Case "TAB(", "�����("
If IsExp(bstack, n$, p) Then

r = SG * p * (players(GetCode(bstack.Owner)).Column + 1)
   A$ = n$
    IsNumber = FastSymbol(A$, ")", True)
End If
Exit Function
Case "KEYPRESS(", "��������("
If Not IsExp(bstack, n$, p) Then
r = 0
Else
r = SG * CLng(KeyPressed(CLng(p)))

End If
 A$ = n$

    IsNumber = FastSymbol(A$, ")", True)
    Exit Function
Case "INKEY(", "�����("

BLOCKkey = True
If Not IsExp(bstack, n$, p) Then p = 50: dn = 1
If p < 50 Then p = 50
p = p / 2
    p = uintnew(p + timeGetTime)
   If dn = 1 Then r = 0 Else r = clickMe

If Not (bstack.IamThread And dn = 1) Then clickMe2 = -2
               w1 = -1
                    Do While p > uintnew(timeGetTime)
                  
                  
                 If Not bstack.IamThread Then
                    MyDoEvents
                    mywait bstack, 1
                    Else
                    
                    p = 0
                    ''If (dn = 0) Then
                    If r = clickMe2 Then Exit Do
                    
                    r = -3
                      clickMe2 = clickMe
                      
                      
                    End If
                    If clickMe2 = r Then clickMe2 = -2
                    If w1 = -1 Then
                    If clickMe2 <> -2 Then
             
              
                    w1 = clickMe2
              
                    If w1 = 19 Or w1 = 131139 Then
                    'this IS A BREAK
                    BLOCKkey = False
                  
                   Form1.GiveASoftBreak (w1 = 19)
                    End If
                    p = 0
                    End If
                    End If
                     
                Loop
                If bstack.IamThread Then
        If bstack.LastClick = w1 Then
            w1 = -1
        Else
            bstack.LastClick = w1
        End If
End If
  r = SG * w1
    
  clickMe2 = -1


A$ = n$
IsNumber = FastSymbol(A$, ")", True)
BLOCKkey = False
Exit Function
Case "�����(", "MODULE("
  MakeThisSub bstack, n$
If IsLabel(bstack, n$, s$) Then

    r = SG * True
  
    If GetlocalSub(s$, w1) Then
    
    ElseIf GetlocalSubExtra(s$, w1) Then
    
    ElseIf Not GetSub(s$, w1) Then
    r = False
    End If
    A$ = n$
    IsNumber = FastSymbol(A$, ")", True)
Else
    A$ = n$
    IsNumber = False
End If
Exit Function
Case "����(", "MDB("
If IsStrExp(bstack, n$, s$) Then
If ExtractType(s$) = "" Then s$ = s$ & ".MDB"
s$ = CFname(s$)
If s$ <> "" Then
r = CheckMine(s$)
Else
r = 0
End If
   A$ = n$
    IsNumber = FastSymbol(A$, ")", True)
End If
Exit Function
Case "ASK(", "����("
If IsStrExp(bstack, n$, AskText$) Then
If UCase(V$) = "ASK(" Then
DialogSetupLang 1
Else
DialogSetupLang 0
End If
If AskText$ = "" Then A$ = n$: ZeroParam A$: IsNumber = False: Exit Function
If FastSymbol(n$, ",") Then IsStrExp bstack, n$, AskTitle$
If FastSymbol(n$, ",") Then IsStrExp bstack, n$, AskOk$
If FastSymbol(n$, ",") Then IsStrExp bstack, n$, AskCancel$
If FastSymbol(n$, ",") Then IsStrExp bstack, n$, AskDIB$
If FastSymbol(n$, ",") Then IsStrExp bstack, n$, AskStrInput$: AskInput = True

olamazi

r = SG * Form3.NeoASK(bstack)
AskInput = False
   A$ = n$
    IsNumber = FastSymbol(A$, ")", True)
End If
Exit Function
Case "���������(", "COLLIDE("
If IsExp(bstack, n$, r) Then
If FastSymbol(n$, ",") Then
    If Not IsExp(bstack, n$, r2) Then A$ = n$: MissParam A$: IsNumber = False: Exit Function
 
    If FastSymbol(n$, ",") Then
    r = SG * CollideArea(CLng(r), CLng(r2), bstack, n$)
    Else
    r = SG * CollidePlayers(CLng(r), CLng(r2))
    End If
Else
r = SG * CollidePlayers(CLng(r), CLng(100))
End If
   A$ = n$
    IsNumber = FastSymbol(A$, ")", True)
End If
Exit Function
Case "�������.�(", "SIZE.Y("

    If IsStrExp(bstack, n$, s$) Then
    If Not FastSymbol(n$, ",") Then A$ = n$: MissParam A$: IsNumber = False: Exit Function
    If Not IsStrExp(bstack, n$, s1$) Then A$ = n$: MissParam A$: IsNumber = False: Exit Function
    If Not FastSymbol(n$, ",") Then A$ = n$: MissParam A$: IsNumber = False: Exit Function
    If Not IsExp(bstack, n$, r2) Then A$ = n$: MissParam A$: IsNumber = False: Exit Function
    r3 = 0
    If FastSymbol(n$, ",") Then
    If Not IsExp(bstack, n$, r3) Then
     A$ = n$: MissParam A$: IsNumber = False: Exit Function
    End If

    End If
    On Error Resume Next
    r = nTextY(bstack, s$, s1$, CSng(r2), r3)
    If Err.Number > 0 Then r = 0
    r = SG * r
    A$ = n$
 
    
    IsNumber = FastSymbol(A$, ")", True)
    End If
    Exit Function
Case "�������.�(", "SIZE.X("
    If IsStrExp(bstack, n$, s$) Then
    If Not FastSymbol(n$, ",") Then IsNumber = False: Exit Function
    If Not IsStrExp(bstack, n$, s1$) Then IsNumber = False: Exit Function
    If Not FastSymbol(n$, ",") Then IsNumber = False: Exit Function
    If Not IsExp(bstack, n$, r2) Then IsNumber = False: Exit Function
    r3 = 0
    If FastSymbol(n$, ",") Then If Not IsExp(bstack, n$, r3) Then IsNumber = False: Exit Function
    On Error Resume Next
    r = nText(bstack, s$, s1$, CSng(r2), r3)
    If Err.Number > 0 Then r = 0
    r = SG * r
    A$ = n$
    
    IsNumber = FastSymbol(A$, ")", True)
    End If
    Exit Function
Case "WRITABLE(", "���������("  ' �� ����� �� ����� ��� ������
    If IsStrExp(bstack, n$, s$) Then
      r = SG * WeCanWrite(s$)
   
    A$ = n$
    
    IsNumber = FastSymbol(A$, ")", True)
    Exit Function
    End If
    IsNumber = False
    Exit Function
Case "COLOR(", "COLOUR(", "�����("
    
            
    If Not ColorRGB(bstack, n$, r) Then Exit Function
     A$ = n$
    r = SG * -r

        IsNumber = FastSymbol(A$, ")", True)
        Exit Function
Case "DIMENSION(", "��������("
IsNumber = False
A$ = n$
If Abs(IsLabel(bstack, n$, s$)) > 4 Then
  
 If neoGetArray(bstack, s$, pppp) And FastSymbol(n$, ")", True) Then
    If FastSymbol(n$, ",") Then
          If IsExp(bstack, n$, p) Then
          
          pppp.SerialItem PP, CLng(p - 1), 6
          r = SG * PP
              A$ = n$
               IsNumber = FastSymbol(A$, ")", True)
          Else
              A$ = n$
           MyErMacro A$, "Can't read dimension index from array " & s$, "��� ����� �� ������� ��� ������ ��������� ��� ������ " & s$
          End If
      Else ' dimensions
      p = 0
      pppp.SerialItem PP, CLng(p), 5
         r = SG * PP
              A$ = n$
              IsNumber = FastSymbol(A$, ")", True)
      End If
      Exit Function
      Else
       n$ = A$
       End If
 Else
 n$ = A$
 End If
If IsStrExp(bstack, n$, s$) Then
    s$ = s$ & "("
    If neoGetArray(bstack, s$, pppp) Then
        If FastSymbol(n$, ",") Then
          If IsExp(bstack, n$, p) Then
            pppp.SerialItem PP, CLng(p - 1), 6
            r = SG * PP
            A$ = n$
            IsNumber = FastSymbol(A$, ")", True)
          Else
            A$ = n$
            MyErMacro A$, "Can't read dimension index from array " & s$, "��� ����� �� ������� ��� ������ ��������� ��� ������ " & s$
          End If
        Else ' dimensions
            p = 0
            pppp.SerialItem PP, CLng(p), 5
            r = SG * PP
            A$ = n$
            IsNumber = FastSymbol(A$, ")", True)
        End If
        Else
        MyErMacro A$, "Can't find array " & s$, "��� ������ ������ " & s$
    End If
End If
    Exit Function
Case "ARRAY(", "�������("
    IsNumber = False
    If IsStrExp(bstack, n$, s$) Then
    If FastSymbol(n$, ",") Then
            w1 = InStr("!" & s$, "(")
            If w1 > 0 And w1 <= Len(s$) Then
            s$ = Left$(s$, w1 - 2)
            End If
            s$ = s$ & "("
                If neoGetArray(bstack, s$, pppp) Then
                IsNumber = NeoGetArrayItem(pppp, bstack, s$, w1, n$)
                r = SG * pppp.item(w1)
                A$ = n$
                Else
                A$ = n$
                MyErMacro A$, "Can't find array " & s$, "��� ������ ������ " & s$
                End If
    Else
    A$ = n$: MissParam A$
    End If
    Else
    A$ = n$: MissParam A$
    End If
    Exit Function
Case "FUNCTION(", "���������("
IsNumber = False
    If IsStrExp(bstack, n$, s$) Then
    If IsSymbol(s$, "{") Then
            PushStage bstack, False
            s1$ = block(s$)
            FastSymbol s$, "}"
            GlobalSub "A_()", s1$, Trim$(s$)
            IsSymbol3 n$, ","
              A$ = "A_(@" & n$
            IsNumber = IsExp(bstack, A$, p)
            r = SG * p
            PopStage bstack
Else
If MaybeIsSymbol(n$, ".") Then
dd = 1
      s1$ = aheadstatus(n$, , dd)
s$ = s$ + Left$(n$, dd - 1)
n$ = Mid$(n$, dd)
End If
    If FastSymbol(n$, ",") Then
    End If
     If Right$(s$, 1) = ")" Then
        A$ = Left$(s$, Len(s$) - 1) & n$
    ElseIf InStr(s$, ").") > 0 Then
    If Not FastSymbol(n$, ")") Then
        A$ = s$ & "(@" & n$
    Else
        A$ = s$ & n$
        End If
     Else
      A$ = s$ & "(@" & n$
      End If
    IsNumber = IsExp(bstack, A$, p)
    r = SG * p
  End If
    Else
    A$ = n$: MissParam A$
    
    End If
    Exit Function
Case "DRIVE.SERIAL(", "���������.������("
IsNumber = False
    If IsStrExp(bstack, n$, s$) Then
    r = SG * DriveSerial(Left$(s$, 3))
  
    A$ = n$
    
    IsNumber = FastSymbol(A$, ")", True)
    Else
    A$ = n$: MissParam A$
    End If
    Exit Function
Case "FILE.STAMP(", "�������.������("
IsNumber = False
    If IsStrExp(bstack, n$, s$) Then
    If CFname(s$, p) <> vbNullString Then
    If p = 0 Then
    A$ = n$
    MyErMacro A$, "Can't Read File TimeStamp", "��� ����� �� ������� ��� ������������ ��� �������"
    Else
     r = SG * p
     End If
     Else
       A$ = n$: BadFilename: Exit Function
     
     End If
     A$ = n$
    
    IsNumber = FastSymbol(A$, ")", True)
    Else
    A$ = n$: MissParam A$
    End If
    Exit Function
Case "EXIST.DIR(", "�������.���������("
IsNumber = False
    If IsStrExp(bstack, n$, s$) Then
    r = SG * isdir(s$)
     A$ = n$
    
    IsNumber = FastSymbol(A$, ")", True)
    Else
    A$ = n$: MissParam A$
    End If
    Exit Function
Case "EXIST(", "�������("
IsNumber = False
    If IsStrExp(bstack, n$, s$) Then
    s$ = CFname(s$)
    If s$ <> "" Then
      r = SG * (InStr(s$, "*") = 0 And InStr(s$, "?") = 0)
      Else
  
    r = 0
    End If
   
    A$ = n$
    
    IsNumber = FastSymbol(A$, ")", True)
    Else
    A$ = n$: MissParam A$
    End If
    Exit Function
    
Case "JOYPAD(", "����("
  IsNumber = False
    If IsExp(bstack, n$, r) Then
        
    r = SG * Int(r)
    A$ = n$
    
    If r < 0 Or r > 15 Then
    
    MyErMacro A$, "Joypad number 0 to 15", "������� ����� ��� 0 ��� 15"

    Exit Function
    End If
    If Not MYJOYSTAT(r).Enabled Then
    IsNumber = False
        MyErMacro A$, "Joypad number " & CStr(r) & " isn't ready", "�� ������� ����� " & CStr(r) & " ��� ����� ������"
    Exit Function
    End If
    If Not MYJOYSTAT(r).Wait2Read Then
    PollJoypadk  ' �� �� �� �����
    
    If Not MYJOYSTAT(r).Wait2Read Then
        MyErMacro A$, "Joypad number " & CStr(r) & " isn't ready", "�� ������� ����� " & CStr(r) & " ��� ����� ������"
        
    Exit Function
    End If
    End If
    r = SG * MYJOYSTAT(r).lngButton
IsNumber = FastSymbol(A$, ")", True)
       Else
       IsNumber = False
        A$ = n$: MissParam A$
         ' IsNumber = FastSymbol(a$, ")")
  End If
  Exit Function
Case "JOYPAD.DIRECTION(", "����.����������("
  IsNumber = False
    If IsExp(bstack, n$, r) Then
    r = SG * Int(r)
    A$ = n$
    If r < 0 Or r > 15 Then
    
    MyErMacro A$, "Joypad number 0 to 15", "������� ����� ��� 0 ��� 15"
    
    Exit Function
    End If
    If Not MYJOYSTAT(r).Enabled Then
        MyErMacro A$, "Joypad number " & CStr(r) & " isn't ready", "�� ������� ����� " & CStr(r) & " ��� ����� ������"
    
    Exit Function
    End If
    If Not MYJOYSTAT(r).Wait2Read Then
    PollJoypadk  ' �� �� �� �����
    
    If Not MYJOYSTAT(r).Wait2Read Then
        MyErMacro A$, "Joypad number " & CStr(r) & " isn't ready", "�� ������� ����� " & CStr(r) & " ��� ����� ������"
    
    Exit Function
    End If
    End If
    r = SG * MYJOYSTAT(r).joyPaD
    IsNumber = FastSymbol(A$, ")", True)
       Else
        A$ = n$: MissParam A$
  End If
Case "JOYPAD.ANALOG.X(", "����.���������.�("
  IsNumber = False
    If IsExp(bstack, n$, r) Then
    r = SG * Int(r)
    A$ = n$
    If r < 0 Or r > 15 Then
    
    MyErMacro A$, "Joypad number 0 to 15", "������� ����� ��� 0 ��� 15"
    Exit Function
    End If
    If Not MYJOYSTAT(r).Enabled Then
        MyErMacro A$, "Joypad number " & CStr(r) & " isn't ready", "�� ������� ����� " & CStr(r) & " ��� ����� ������"
            Exit Function
    End If
    If Not MYJOYSTAT(r).Wait2Read Then
    PollJoypadk  ' �� �� �� �����
    
    If Not MYJOYSTAT(r).Wait2Read Then
        MyErMacro A$, "Joypad number " & CStr(r) & " isn't ready", "�� ������� ����� " & CStr(r) & " ��� ����� ������"
    Exit Function
    End If
    End If
    r = SG * MYJOYSTAT(r).AnalogX
    IsNumber = FastSymbol(A$, ")", True)
       Else
        A$ = n$: MissParam A$
  End If
Case "JOYPAD.ANALOG.Y(", "����.���������.�("
  IsNumber = False
    If IsExp(bstack, n$, r) Then
    r = SG * Int(r)
    A$ = n$
    If r < 0 Or r > 15 Then
    
    MyErMacro A$, "Joypad number 0 to 15", "������� ����� ��� 0 ��� 15"
    Exit Function
    End If
    If Not MYJOYSTAT(r).Enabled Then
        MyErMacro A$, "Joypad number " & CStr(r) & " isn't ready", "�� ������� ����� " & CStr(r) & " ��� ����� ������"
    Exit Function
    End If
    If Not MYJOYSTAT(r).Wait2Read Then
    PollJoypadk  ' �� �� �� �����
    
    If Not MYJOYSTAT(r).Wait2Read Then
        MyErMacro A$, "Joypad number " & CStr(r) & " isn't ready", "�� ������� ����� " & CStr(r) & " ��� ����� ������"
    Exit Function
    End If
    End If
    r = SG * MYJOYSTAT(r).AnalogY
    IsNumber = FastSymbol(A$, ")", True)
       Else
        A$ = n$: MissParam A$
  End If
Case "IMAGE.X(", "������.�("
IsNumber = False
    If IsStrExp(bstack, n$, s$) Then
    If Left$(s$, 4) = "cDIB" And Len(s$) > 12 Then
    r = SG * cDIBwidth(s$) * DXP
    A$ = n$
    IsNumber = FastSymbol(A$, ")", True)
     Else
            A$ = n$
            MyErMacro A$, "�� image in string", "��� ������� ������ ��� �������������"
        End If
    Else
        A$ = n$: MissParam A$
    End If
    Exit Function
Case "IMAGE.Y(", "������.�("
IsNumber = False
    If IsStrExp(bstack, n$, s$) Then
        If Left$(s$, 4) = "cDIB" And Len(s$) > 12 Then
            r = SG * cDIBheight(s$) * DYP
            A$ = n$
            IsNumber = FastSymbol(A$, ")", True)
        Else
            A$ = n$
            MyErMacro A$, "�� image in string", "��� ������� ������ ��� �������������"
        End If
    Else
        A$ = n$: MissParam A$
    End If
    Exit Function
Case "IMAGE.X.PIXELS(", "������.�.������("
IsNumber = False
    If IsStrExp(bstack, n$, s$) Then
    If Left$(s$, 4) = "cDIB" And Len(s$) > 12 Then
    r = SG * cDIBwidth(s$)
    A$ = n$
    IsNumber = FastSymbol(A$, ")", True)
     Else
            A$ = n$
            MyErMacro A$, "�� image in string", "��� ������� ������ ��� �������������"
        End If
    Else
        A$ = n$: MissParam A$
    End If
    Exit Function
Case "IMAGE.Y.PIXELS(", "������.�.������("
IsNumber = False
    If IsStrExp(bstack, n$, s$) Then
        If Left$(s$, 4) = "cDIB" And Len(s$) > 12 Then
            r = SG * cDIBheight(s$)
            A$ = n$
            IsNumber = FastSymbol(A$, ")", True)
        Else
            A$ = n$
            MyErMacro A$, "�� image in string", "��� ������� ������ ��� �������������"
        End If
    Else
        A$ = n$: MissParam A$
    End If
    Exit Function
    Case "VALID(", "������("
    A$ = n$
    w1 = 1
    s$ = aheadstatus(n$, True, w1) & "   "  ' version 6.5(11)

    If Left$(s$, 1) = "S" And Not Left$(s$, 3) = "SoN" Then
        If IsStrExp(bstack, n$, s$) Then
    
             r = SG * FastSymbol(n$, ")", True)
             If r = 0 Then
             A$ = Mid$(A$, w1)
               w1 = CLng(FastSymbol(A$, ")"))
             Else
               A$ = n$
               End If
Else
r = 1
If Len(n$) + w1 > Len(A$) Then
'false
r = 0
End If

A$ = Mid(A$, w1)
r = r * SG * FastSymbol(A$, ")", True)

       End If
    ElseIf LastErNum <> 0 Then
    GoTo jumphere
    
    ElseIf IsExp(bstack, n$, p) Then

              r = SG * FastSymbol(n$, ")", True)
              If r = 0 Then
                   A$ = Mid$(A$, w1)
                   w1 = CLng(FastSymbol(A$, ")")) ' throw it
                Else
                    A$ = n$
                End If
    Else
jumphere:
    LastErNum = 0
    A$ = Mid$(A$, w1)
      w1 = CLng(FastSymbol(A$, ")"))
          r = 0
        End If
        IsNumber = True
        LastErNum = 0
    Exit Function
Case "EVAL(", "����(", "�������("
IsNumber = False
    If IsStrExp(bstack, n$, s$) Then
    If FastSymbol(n$, ".") Then
    If MaybeIsSymbol(n$, ")") Then
            n$ = s$ + n$
        Else
        n$ = s$ + "." + n$
        End If
        If Not IsExp(bstack, n$, r) Then
          A$ = n$
            MyErMacro A$, "Wrong weak reference", "����� ������ ��������"
        Else
            r = SG * r
            A$ = n$
            IsNumber = FastSymbol(A$, ")", True)
        End If
    Else
    
            If Not IsExp(bstack, s$, r) Then
            A$ = n$
            MyErMacro A$, "Wrong expression in string", "����� ���������� ������� ��� �������������"
            Else
            r = SG * r
            A$ = n$
            IsNumber = FastSymbol(A$, ")", True)
            End If
    End If
    Else
    A$ = n$: MissParam A$
    End If
    Exit Function
Case "POINT(", "������("

    If IsStrExp(bstack, n$, s$) Then
        If Left$(s$, 4) = "cDIB" And Len(s$) > 12 Then
            If FastSymbol(n$, ",") Then
                If Not IsExp(bstack, n$, r2) Then A$ = n$: MissParam A$: Exit Function
                If FastSymbol(n$, ",") Then
                    If Not IsExp(bstack, n$, r3) Then A$ = n$: MissParam A$: Exit Function
                    r = SG * GetDIBPixel(s$, r2, r3)
                    A$ = n$
                    
                    IsNumber = FastSymbol(A$, ")", True)
                Else
                    
                     A$ = n$: MissParam A$: Exit Function
                End If
            Else
                A$ = n$: MissParam A$: Exit Function
            End If
        Else
            r = 0
         A$ = n$
         MyErMacro A$, "�� image in string", "��� ������� ������ ��� �������������"
         Exit Function
        End If
     Else
   A$ = n$
     MissParam A$
    End If
   Exit Function
Case "CTIME(", "�����("
  IsNumber = False
    If IsExp(bstack, n$, r) Then
  
    r = Abs(r)
    par = True
    If FastSymbol(n$, ",") Then
    par = IsExp(bstack, n$, r2)
    If FastSymbol(n$, ",") Then
    par = IsExp(bstack, n$, r3) And par
    If FastSymbol(n$, ",") Then
    par = IsExp(bstack, n$, r4) And par
    End If
    End If
    End If
    A$ = n$
       If Not par Then
     MissParam A$
     Exit Function
                End If
                On Error Resume Next
    r = SG * CDbl(TimeSerial(Hour(CDate(r)) + r2, Minute(CDate(r)) + r3, Second(CDate(r)) + r4))
                If Err.Number > 0 Then
    MyErMacro A$, Err.Description, "����� ������"
    Err.clear
    Exit Function
    End If
     IsNumber = FastSymbol(A$, ")", True)
      Else
   A$ = n$
     MissParam A$
    End If
    Exit Function
    
Case "CDATE(", "�����("
 IsNumber = False
    If IsExp(bstack, n$, r) Then
   
    r = Abs(r Mod 2958466)
    par = True
    If FastSymbol(n$, ",") Then
    par = IsExp(bstack, n$, r2)
    If FastSymbol(n$, ",") Then
    par = IsExp(bstack, n$, r3) And par
    If FastSymbol(n$, ",") Then
    par = IsExp(bstack, n$, r4) And par
    
    End If
    End If
    End If
    A$ = n$
    If Not par Then
     MissParam A$
     Exit Function
                End If
                On Error Resume Next
     r = SG * CDbl(DateSerial(Year(r) + r2, Month(r) + r3, Day(r) + r4))
              If Err.Number > 0 Then
    MyErMacro A$, Err.Description, "����� ������"
    Err.clear
    Exit Function
    End If
    
 IsNumber = FastSymbol(A$, ")", True)
   Else
   A$ = n$
     MissParam A$
    
    End If
    
     Exit Function
Case "TIME(", "������("
IsNumber = False
    If IsStrExp(bstack, n$, s$) Then
    On Error Resume Next
    
    r = SG * CDbl(CDate(TimeValue(s$)))
         If Err.Number > 0 Then
    A$ = n$
    MyErMacro A$, Err.Description, "����� ������"
    Err.clear
    Exit Function
    End If
    A$ = n$
    
    IsNumber = FastSymbol(A$, ")", True)
    Else
     A$ = n$
                MissParam A$
    End If
    Exit Function
Case "DATE(", "�����("
 IsNumber = False
    If IsStrExp(bstack, n$, s$) Then
    On Error Resume Next
    r = SG * CDbl(DateValue(s$))
     If Err.Number > 0 Then
    A$ = n$
    MyErMacro A$, Err.Description, "����� ������"
    Err.clear
    Exit Function
    End If
    A$ = n$
    
    IsNumber = FastSymbol(A$, ")", True)
      Else
     A$ = n$
                MissParam A$
    End If
    Exit Function
Case "VAL(", "����(", "����("
 IsNumber = False
    If IsStrExp(bstack, n$, s$) Then
    On Error Resume Next
    r = SG * Val(s$)
    If Err.Number > 0 Then
    A$ = n$
    MyErMacro A$, Err.Description, "����� ������"
    Err.clear
    Exit Function
    End If
    A$ = n$
    
    IsNumber = FastSymbol(A$, ")", True)
    Else
     A$ = n$
                MissParam A$
    End If
    Exit Function
Case "RINSTR(", "���������("
 IsNumber = False
  
      If IsStrExp(bstack, n$, s$) Then
    If FastSymbol(n$, ",") Then
    If IsStrExp(bstack, n$, s1$) Then
        If FastSymbol(n$, ",") Then
        If Not IsExp(bstack, n$, r) Then
   
              A$ = n$
                MissParam A$
        Exit Function
        End If
             r = Len(s$) - r + 1
        If r < 0 Then r = 1
        If r > Len(s$) Then r = Len(s$)
        Else
        r = Len(s$)
        End If
    r = SG * InStrRev(s$, s1$, r)
    A$ = n$
    
    IsNumber = FastSymbol(A$, ")", True)
    Else
    A$ = n$
                MissParam A$
    End If
        Else
    A$ = n$
                MissParam A$
    End If
        Else
    A$ = n$
                MissParam A$
    End If
    Exit Function

Case "INSTR(", "����("
IsNumber = False

    If IsStrExp(bstack, n$, s$) Then
    If FastSymbol(n$, ",") Then
    If IsStrExp(bstack, n$, s1$) Then
        If FastSymbol(n$, ",") Then
        If Not IsExp(bstack, n$, r) Then
          A$ = n$
                MissParam A$
         Exit Function
        End If
        Else
        r = 1
        End If
    r = SG * InStr(r, s$, s1$)
    A$ = n$
    IsNumber = FastSymbol(A$, ")", True)
    Else
    A$ = n$
                MissParam A$
    End If
        Else
    A$ = n$
                MissParam A$
    End If
        Else
    A$ = n$
                MissParam A$
    End If
    
    Exit Function

Case "RECORDS(", "��������("
 IsNumber = False

    If IsExp(bstack, n$, r) Then
        VR = r Mod 512
        If FLEN(VR) = 0 Then
            MyErMacro n$, "not valid file number", "����� ������� �������"
            A$ = n$
        Else
            r = SG * LOF(VR) / FLEN(VR)
            A$ = n$
            IsNumber = FastSymbol(A$, ")", True)
        End If
    Else
        A$ = n$
        MissParam A$
    End If
    Exit Function
Case "GROUP.COUNT(", "�����.������("


        If Abs(IsLabel(bstack, n$, s$)) = 1 Then
            If GetVar(bstack, s$, w1) Then
                If Typename(var(w1)) = "Group" Then
                
                    r = SG * var(w1).PrepareSoros(var()).Total
                Else
                A$ = n$
                MissingGroup
                Exit Function
                End If
                A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
                Exit Function
            Else
            A$ = n$
            Nosuchvariable s$
            End If
        Else
        A$ = n$
        MissingGroup
       End If
       Exit Function
Case "PARAGRAPH(", "����������("
 IsNumber = False
    w1 = Abs(IsLabel(bstack, n$, s$))
                  
        If w1 = 3 Then
            If GetVar(bstack, s$, w1) Then
                If Typename(var(w1)) = doc Then
                        If Not FastSymbol(n$, ",") Then A$ = n$: MissParam A$: Exit Function
        
                       If IsExp(bstack, n$, PP) Then
                                dn = CLng(PP)
                              r = SG * var(w1).ParagraphFromOrder(dn)           ''
                                 
                            
                                 Else
                                       MissNumExpr
                                        A$ = n$
                                        IsNumber = False
                                        Exit Function
                                 End If
         
               Else
                    MissingDoc
                                        A$ = n$
                                        IsNumber = False
                                        Exit Function
                End If
                A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
            Else
                    A$ = n$
                    MissFuncParameterStringVarMacro A$
                    
            End If
        ElseIf w1 = 6 Then
                If neoGetArray(bstack, s$, pppp) Then
                 If Not NeoGetArrayItem(pppp, bstack, s$, w2, n$) Then Exit Function
                                If Not FastSymbol(n$, ",") Then A$ = n$: MissParam A$: Exit Function
                            If IsExp(bstack, s$, PP) Then
                                dn = CLng(PP)
                                 r = SG * pppp.item(w2).ParagraphFromOrder(dn)
                                 Else
                                        MissNumExpr
                                        A$ = n$
                                        IsNumber = False
                                        Exit Function
                                 End If
                  Else
                    MissingDoc
                                        A$ = n$
                                        IsNumber = False
                                        Exit Function
                End If
                    A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
    Else
                    A$ = n$
                MissFuncParameterStringVarMacro A$
    End If
    Exit Function
Case "PARAGRAPH.INDEX(", "�������.����������("
 IsNumber = False
    w1 = Abs(IsLabel(bstack, n$, s$))
                  
        If w1 = 3 Then
            If GetVar(bstack, s$, w1) Then
                If Typename(var(w1)) = doc Then
                        If Not FastSymbol(n$, ",") Then A$ = n$: MissParam A$: Exit Function
                         w2 = Abs(IsLabel(bstack, n$, s$)) ' ONLY AN ARITHMETIC VAR.
    
                        If w2 = 1 Or w2 = 4 Then
                                If GetVar(bstack, s$, w2) Then
                                dn = var(w2)
                              r = SG * var(w1).ParagraphOrder(dn)           ''
                                 
                            
                                 Else
                                        Nosuchvariable s$
                                        A$ = n$
                                        IsNumber = False
                                        Exit Function
                                 End If
                         
                        Else
                                        MissingnumVar
                                        A$ = n$
                                        IsNumber = False
                                        Exit Function

                        End If
                Else
                    MissingDoc
                                        A$ = n$
                                        IsNumber = False
                                        Exit Function
                End If
                A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
            Else
                    A$ = n$
                    MissFuncParameterStringVarMacro A$
                    
            End If
        ElseIf w1 = 6 Then
                If neoGetArray(bstack, s$, pppp) Then
                 If Not NeoGetArrayItem(pppp, bstack, s$, w2, n$) Then Exit Function
                                If Not FastSymbol(n$, ",") Then A$ = n$: MissParam A$: Exit Function
                         w1 = Abs(IsLabel(bstack, n$, s$)) ' ONLY AN ARITHMETIC VAR..
                        If w1 = 1 Or w1 = 2 Then
                                If GetVar(bstack, s$, w1) Then
                                dn = var(w1)
                                 r = SG * pppp.item(w2).ParagraphOrder(dn)
                                 Else
                                        Nosuchvariable s$
                                        A$ = n$
                                        IsNumber = False
                                        Exit Function
                                 End If
                         
                        Else
                                        Nosuchvariable s$
                                        A$ = n$
                                        IsNumber = False
                                        Exit Function

                        End If
                Else
                    MissingDoc
                                        A$ = n$
                                        IsNumber = False
                                        Exit Function
                End If
                    A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
    Else
                    A$ = n$
                MissFuncParameterStringVarMacro A$
    End If
    Exit Function
Case "BACKWARD(", "����("
    dd = 1
    GoTo forward
Case "FORWARD(", "�������("
forward:
 IsNumber = False
    w1 = Abs(IsLabel(bstack, n$, s$))
        If w1 = 3 Then
            If GetVar(bstack, s$, w1) Then
                If Typename(var(w1)) = doc Then
                        If Not FastSymbol(n$, ",") Then A$ = n$: MissParam A$: Exit Function
                         w2 = Abs(IsLabel(bstack, n$, s$)) ' ONLY AN ARITHMETIC VAR..
                        If w2 = 1 Or w2 = 4 Then
                                If GetVar(bstack, s$, w2) Then
                                dn = var(w2)
                                If dd = 1 Then
                                var(w1).BackStep dn
                                var(w1).BackMove = True
                                Else
                                var(w1).BackMove = False
                                var(w1).Advance dn
                                End If
                                 r = SG * Not var(w1).IsEmpty
                                 '    r = SG * var(w1).ParagraphOrder(dn)          ''
                                 
                                 var(w2) = dn
                                 Else
                                        Nosuchvariable s$
                                        A$ = n$
                                        IsNumber = False
                                        Exit Function
                                 End If
                         
                        Else
                                        MissingnumVar
                                        A$ = n$
                                        IsNumber = False
                                        Exit Function

                        End If
                Else
                    MissingDoc
                                        A$ = n$
                                        IsNumber = False
                                        Exit Function
                End If
                A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
            Else
                    A$ = n$
                    MissFuncParameterStringVarMacro A$
                    
            End If
        ElseIf w1 = 6 Then
                If neoGetArray(bstack, s$, pppp) Then
                 If Not NeoGetArrayItem(pppp, bstack, s$, w2, n$) Then Exit Function
                                If Not FastSymbol(n$, ",") Then A$ = n$: MissParam A$: Exit Function
                         w1 = Abs(IsLabel(bstack, n$, s$)) ' ONLY AN ARITHMETIC VAR..
                         If w1 = 1 Or w1 = 2 Then
                                If GetVar(bstack, s$, w1) Then
                                dn = var(w1)
                                 If dd = 1 Then
                                pppp.item(w2).BackStep dn
                                pppp.item(w2).BackMove = True
                                Else
                              pppp.item(w2).BackMove = False
                                 pppp.item(w2).Advance dn
                                End If
                                r = SG * Not pppp.item(w2).IsEmpty
                                '' r = SG * pppp.item(w2).ParagraphOrder(dn)
                                
                                 var(w1) = dn
                                 Else
                                        Nosuchvariable s$
                                        A$ = n$
                                        IsNumber = False
                                        Exit Function
                                 End If
                         
                        Else
                                        Nosuchvariable s$
                                        A$ = n$
                                        IsNumber = False
                                        Exit Function

                        End If
                Else
                    MissingDoc
                                        A$ = n$
                                        IsNumber = False
                                        Exit Function
                End If
                    A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
    Else
                    A$ = n$
                MissFuncParameterStringVarMacro A$
    End If
    Exit Function
Case "DOC.PAR(", "��������.���("
 IsNumber = False
    w1 = Abs(IsLabel(bstack, n$, s$))

        If w1 = 3 Then
            If GetVar(bstack, s$, w1) Then
                If Typename(var(w1)) = doc Then
                    r = SG * var(w1).DocParagraphs
                Else
                    r = 0
                End If
                A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
            Else
                    A$ = n$
                    MissFuncParameterStringVarMacro A$
                    
            End If
        ElseIf w1 = 6 Then
                If neoGetArray(bstack, s$, pppp) Then
                 If Not NeoGetArrayItem(pppp, bstack, s$, w2, n$) Then Exit Function
                    If Typename(pppp.item(w2)) = doc Then
                      r = SG * pppp.item(w2).DocParagraphs
                      Else
                      r = 0
                      End If
                Else
                
                End If
                    A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
    Else
                    A$ = n$
                MissFuncParameterStringVarMacro A$
    End If
    Exit Function
Case "MAX.DATA(", "������.������("
 IsNumber = False
  If IsExp(bstack, n$, r) Then
  
  Do While FastSymbol(n$, ",")
  If Not IsExp(bstack, n$, p) Then A$ = n$: MissNumExpr: Exit Function
  If p > r Then r = p
  
  Loop
  r = SG * r
    A$ = n$
    IsNumber = FastSymbol(A$, ")", True)
        Else
     A$ = n$: MissNumExpr
        End If
    Exit Function
Case "MIN.DATA(", "�����.������("
 IsNumber = False
  If IsExp(bstack, n$, r) Then
  
  Do While FastSymbol(n$, ",")
  If Not IsExp(bstack, n$, p) Then A$ = n$: MissNumExpr: Exit Function
  If p < r Then r = p
  
  Loop
  r = SG * r
    A$ = n$
    IsNumber = FastSymbol(A$, ")", True)
        Else
     A$ = n$: MissNumExpr
        End If
    Exit Function
Case "MAX(", "������("
dn = 2
GoTo comp1
Case "MIN(", "�����("
dn = 1
GoTo comp1
Case "COMPARE(", "��������("
comp1:
IsNumber = False
    w1 = Abs(IsLabel(bstack, n$, s$))
    If w1 = 1 Or w1 = 4 Then dd = 1  'WE NEED NUMBERS
    If w1 = 5 Or w1 = 7 Then dd = 2 'WE NEED NUMBERS
    If w1 = 0 Then MissingnumVar: A$ = n$: Exit Function
    If (w1 = 3 Or w1 = 6) And dd > 0 Then SyntaxError: A$ = n$: Exit Function
    If dd = 1 Then
        If GetVar(bstack, s$, w1) Then
                If Not FastSymbol(n$, ",") Then MissingnumVar: A$ = n$: Exit Function
                W3 = Abs(IsLabel(bstack, n$, s1$))
            If W3 = 1 Or W3 = 4 Then
                If GetVar(bstack, s1$, w2) Then
                Select Case dn
                Case 1
                    If var(w1) < var(w2) Then
                        r = SG * var(w1)
                    Else
                        r = SG * var(w2)
                    End If
                Case 2
                    If var(w1) > var(w2) Then
                        r = SG * var(w1)
                    Else
                        r = SG * var(w2)
                    End If
                Case Else
                    If var(w1) = 0 Then
                    If var(w2) = 0 Then
                    r = 0
                    Else
                    r = SG * Sgn(0 - MyRound(var(w2), 10))
                    End If
                    Else
                    r = SG * Sgn(MyRound(((var(w1) - var(w2)) / var(w1)), 10))
                    End If
                
                
                  
                End Select
                    A$ = n$
                    IsNumber = FastSymbol(A$, ")", True)
                Exit Function
                Else
                    Nosuchvariable s1$
                    A$ = n$
                    Exit Function
                End If
            ElseIf W3 = 5 Or W3 = 7 Then
                If neoGetArray(bstack, s1$, pppp) Then
                    If Not NeoGetArrayItem(pppp, bstack, s1$, w2, n$) Then Exit Function
                    Select Case dn
                Case 1
                    If var(w1) < pppp.item(w2) Then
                        r = SG * var(w1)
                    Else
                        r = SG * pppp.item(w2)
                    End If
                Case 2
                    If var(w1) > pppp.item(w2) Then
                        r = SG * var(w1)
                    Else
                        r = SG * pppp.item(w2)
                    End If
              Case Else
                   If var(w1) = 0 Then
                            If pppp.item(w2) = 0 Then
                            r = 0
                            Else
                            r = SG * Sgn(0 - MyRound(pppp.item(w2), 10))
                            End If
                    Else
                            r = SG * Sgn(MyRound(((var(w1) - pppp.item(w2)) / var(w1)), 10))
                    End If
              
                
                    End Select
                    A$ = n$
                    IsNumber = FastSymbol(A$, ")", True)
                Else
                    Nosuchvariable s1$
                    A$ = n$
                    Exit Function
                End If
            Else
                MissingnumVar
                A$ = n$
                Exit Function
            End If
        Else
            Nosuchvariable s$
            A$ = n$
            Exit Function
        End If
        
    ElseIf dd = 2 Then
        If neoGetArray(bstack, s$, pppp) Then
            If Not NeoGetArrayItem(pppp, bstack, s$, w1, n$) Then Exit Function
            If Not FastSymbol(n$, ",") Then MissingnumVar: A$ = n$: Exit Function
                W3 = Abs(IsLabel(bstack, n$, s1$))
            If W3 = 1 Or W3 = 4 Then
                    If GetVar(bstack, s1$, w2) Then
                    Select Case dn
                    Case 1
                        If pppp.item(w1) < var(w2) Then
                            r = SG * pppp.item(w1)
                        Else
                            r = SG * var(w2)
                        End If
                    Case 2
                        If pppp.item(w1) > var(w2) Then
                            r = SG * pppp.item(w1)
                        Else
                            r = SG * var(w2)
                        End If
                    Case Else
                    
                    
                      If pppp.item(w1) = 0 Then
                            If var(w2) = 0 Then
                            r = 0
                            Else
                            r = SG * Sgn(0 - MyRound(var(w2), 10))
                            End If
                    Else
                            r = SG * Sgn(MyRound(((pppp.item(w1) - var(w2)) / pppp.item(w1)), 10))
                    End If
                        
                    End Select
                        A$ = n$
                        IsNumber = FastSymbol(A$, ")", True)
                    Else
                        MissingnumVar
                        A$ = n$
                        Exit Function
                    End If
            ElseIf W3 = 5 Or W3 = 7 Then
                    If neoGetArray(bstack, s1$, pppp) Then
                        If Not NeoGetArrayItem(pppp, bstack, s1$, w2, n$) Then Exit Function
                    Select Case dn
                    Case 1
                        If pppp.item(w1) < pppp.item(w2) Then
                            r = SG * pppp.item(w1)
                        Else
                            r = SG * pppp.item(w2)
                        End If
                    Case 2
                        If pppp.item(w1) > var(w2) Then
                            r = SG * pppp.item(w1)
                        Else
                            r = SG * pppp.item(w2)
                        End If
                    Case Else
          If pppp.item(w1) = 0 Then
                            If pppp.item(w2) = 0 Then
                            r = 0
                            Else
                            r = SG * Sgn(0 - MyRound(pppp.item(w2), 10))
                            End If
                    Else
                            r = SG * Sgn(MyRound(((pppp.item(w1) - pppp.item(w2)) / pppp.item(w1)), 10))
                    End If
                    End Select
                        A$ = n$
                        IsNumber = FastSymbol(A$, ")", True)
                    Else
                        MissingnumVar
                        A$ = n$
                        Exit Function
                    End If
            Else
                MissingnumVar
                A$ = n$
                Exit Function
            End If
        Else
            MissingnumVar
            A$ = n$
            Exit Function
        End If
    ElseIf w1 = 3 Then
            If GetVar(bstack, s$, w1) Then
            If Not FastSymbol(n$, ",") Then MissingnumVar: A$ = n$: Exit Function
                W3 = Abs(IsLabel(bstack, n$, s1$))
                If W3 = 6 Then
                    If Not neoGetArray(bstack, s1$, pppp) Then MissingStrVar: A$ = n$:  Exit Function
                    If Not NeoGetArrayItem(pppp, bstack, s1$, w2, n$) Then Exit Function

                    r = SG * StrComp(var(w1), pppp.item(w2))

                ElseIf W3 = 3 Then
                    If Not GetVar(bstack, s1$, w2) Then A$ = n$: Exit Function

                    r = SG * StrComp(var(w1), var(w2))
                            Else
                A$ = n$
                MissFuncParameterStringVarMacro A$
                Exit Function
                End If
                A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
            Else
                    A$ = n$
                    MissFuncParameterStringVarMacro A$
            End If
    ElseIf w1 = 6 Then
            If neoGetArray(bstack, s$, pppp) Then
                If Not NeoGetArrayItem(pppp, bstack, s$, w2, n$) Then Exit Function
                If Not FastSymbol(n$, ",") Then MissingnumVar: A$ = n$: Exit Function
                W3 = Abs(IsLabel(bstack, n$, s1$))
                If W3 = 6 Then
                    If Not neoGetArray(bstack, s1$, pppp1) Then MissingStrVar: A$ = n$:  Exit Function
                    If Not NeoGetArrayItem(pppp1, bstack, s1$, W3, n$) Then Exit Function

                    r = SG * StrComp(pppp.item(w2), pppp1.item(W3))
 
                ElseIf W3 = 3 Then
                    If Not GetVar(bstack, s1$, W3) Then A$ = n$: Exit Function

                    r = SG * StrComp(pppp.item(w2), var(W3))
                Else
                A$ = n$
                MissFuncParameterStringVarMacro A$
                Exit Function
                End If
                A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
            Else
                A$ = n$
                MissParam A$
            End If
    Else
                 A$ = n$
                MissParam A$
    End If
    Exit Function
Case "DOC.UNIQUE.WORDS(", "��������.���������.������("
 IsNumber = False
    w1 = Abs(IsLabel(bstack, n$, s$))
        If w1 = 3 Then
            If GetVar(bstack, s$, w1) Then
                If Typename(var(w1)) = doc Then
                    r = SG * var(w1).UniqueWords
                Else
                MissFuncParammeterdOCVar A$
               End If
                A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
            Else
                    A$ = n$
                    MissFuncParameterStringVarMacro A$
                    
            End If
        ElseIf w1 = 6 Then
                If neoGetArray(bstack, s$, pppp) Then
                 If Not NeoGetArrayItem(pppp, bstack, s$, w2, n$) Then Exit Function
                    If Typename(pppp.item(w2)) = doc Then
                      r = SG * pppp.item(w2).UniqueWords
                      Else
                       MissFuncParammeterdOCVar A$
                
                      End If
                Else
                
                End If
                    A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
    Else
                    A$ = n$
                MissParam A$
    End If
    Exit Function
    
Case "DOC.WORDS(", "��������.������("
 IsNumber = False
    w1 = Abs(IsLabel(bstack, n$, s$))
        If w1 = 3 Then
            If GetVar(bstack, s$, w1) Then
                If Typename(var(w1)) = doc Then
                    r = SG * var(w1).WordCount
                Else
                MissFuncParammeterdOCVar A$
               End If
                A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
            Else
                    A$ = n$
                    MissFuncParameterStringVarMacro A$
                    
            End If
        ElseIf w1 = 6 Then
                If neoGetArray(bstack, s$, pppp) Then
                 If Not NeoGetArrayItem(pppp, bstack, s$, w2, n$) Then Exit Function
                    If Typename(pppp.item(w2)) = doc Then
                      r = SG * pppp.item(w2).WordCount
                      Else
                       MissFuncParammeterdOCVar A$
                
                      End If
                Else
                
                End If
                    A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
    Else
                    A$ = n$
                MissParam A$
    End If
    Exit Function
    
Case "DOC.LEN(", "��������.�����("
 IsNumber = False
    w1 = Abs(IsLabel(bstack, n$, s$))
        If w1 = 3 Then
            If GetVar(bstack, s$, w1) Then
                If Typename(var(w1)) = doc Then
                    r = SG * var(w1).SizeCRLF
                Else
                    r = SG * Len(var(w1))
                End If
                A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
            Else
                    A$ = n$
                    MissFuncParameterStringVarMacro A$
                    
            End If
        ElseIf w1 = 6 Then
                If neoGetArray(bstack, s$, pppp) Then
                 If Not NeoGetArrayItem(pppp, bstack, s$, w2, n$) Then Exit Function
                    If Typename(pppp.item(w2)) = doc Then
                      r = SG * pppp.item(w2).SizeCRLF
                      Else
                      r = SG * Len(pppp.item(w2))
                      End If
                Else
                
                End If
                    A$ = n$
                IsNumber = FastSymbol(A$, ")", True)
    Else
                    A$ = n$
                MissParam A$
    End If
    Exit Function
Case "LEN.DISP(", "�����.���("
 IsNumber = False
    
    If IsStrExp(bstack, n$, s$) Then
    r = SG * RealLen(s$)
    A$ = n$
    
    IsNumber = FastSymbol(A$, ")", True)
    Else
                    A$ = n$
                MissParam A$
    End If
    Exit Function
Case "LEN(", "�����("
 IsNumber = False
    
    If IsStrExp(bstack, n$, s$) Then
    r = SG * Len(s$)
    A$ = n$
    
    IsNumber = FastSymbol(A$, ")", True)
    Else
                    A$ = n$
                MissParam A$
    End If
    Exit Function
Case "SQRT(", "����("
 IsNumber = False
    If IsExp(bstack, n$, r) Then
    A$ = n$
    If r <= 0 Then
    MyErMacro A$, "negative or zero number", "��������� � ����� �� ����"
    Exit Function
   
    End If
  
    r = SG * Sqr(r)
    
    
   IsNumber = FastSymbol(A$, ")", True)
    Else
                A$ = n$
                MissParam A$
    
    End If
     Exit Function
Case "FREQUENCY(", "���������("
IsNumber = False
    If IsExp(bstack, n$, r) Then
           If FastSymbol(n$, ",") Then
                If IsExp(bstack, n$, p) Then
                    r = SG * GetFrequency(CInt(r), CInt(p))
                    A$ = n$
                    IsNumber = FastSymbol(A$, ")", True)
                    Else
                A$ = n$
                MissParam A$
                End If
            Else
                A$ = n$
                MissParam A$
            End If
     Else
                A$ = n$
                MissParam A$
     End If
     Exit Function
Case "LOG(", "���("
IsNumber = False
    If IsExp(bstack, n$, r) Then
        If r <= 0 Then
       MyErMacro A$, "Only > zero parameter", "���� >0 ����������"
        IsNumber = False: Exit Function
    Else
    r = SG * Log(r) / Log(10#)
    A$ = n$
    End If
   IsNumber = FastSymbol(A$, ")", True)
    Else
                A$ = n$
                MissParam A$
    
    End If
    Exit Function
 Case "LN(", "��("
 IsNumber = False
    If IsExp(bstack, n$, r) Then
    If r <= 0 Then
       MyErMacro A$, "Only > zero parameter", "���� >0 ����������"
        IsNumber = False: Exit Function
    Else
    r = SG * Log(r)
    A$ = n$
    End If
    
 IsNumber = FastSymbol(A$, ")", True)
     Else
                A$ = n$
                MissParam A$
    
    End If
     Exit Function
Case "ATN(", "���.��("
IsNumber = False
    If IsExp(bstack, n$, r) Then
     A$ = n$
     r = SG * Atn(r) * 180# / Pi
        
IsNumber = FastSymbol(A$, ")", True)
     Else
                A$ = n$
                MissParam A$
    
    End If
    Exit Function
 Case "TAN(", "����("
  IsNumber = False
    If IsExp(bstack, n$, r) Then
     A$ = n$
     If r = Int(r) Then
        If r Mod 90 = 0 And r Mod 180 <> 0 Then
        MyErMacro A$, "Wrong Tan Parameter", "����� ���������� �����������"
        IsNumber = False: Exit Function
        End If
        End If
    r = Sgn(r) * Tan(r * Pi / 180#)

     If Abs(r) < 1E-16 Then r = 0
     If Abs(r) < 1 And Abs(r) + 0.0000000000001 >= 1 Then r = Sgn(r)
   r = SG * r
    
IsNumber = FastSymbol(A$, ")", True)
     Else
                A$ = n$
                MissParam A$
    
    End If
    Exit Function
 Case "COS(", "���("
 IsNumber = False
    If IsExp(bstack, n$, r) Then

    r = Cos(r * Pi / 180#)
 
    If Abs(r) < 1E-16 Then r = 0
    r = SG * r
    A$ = n$
    
  IsNumber = FastSymbol(A$, ")", True)
    Else
                A$ = n$
                MissParam A$
    
    End If
    Exit Function
 Case "SIN(", "��("
 IsNumber = False
    If IsExp(bstack, n$, r) Then
    r = Sin(r * Pi / 180#)
    ''r = Sgn(r) * Int(Abs(r) * 10000000000000#) / 10000000000000#
    If Abs(r) < 1E-16 Then r = 0
    r = SG * r
    A$ = n$
    
 IsNumber = FastSymbol(A$, ")", True)
    Else
                A$ = n$
                MissParam A$
    
    End If
    Exit Function
 Case "ABS(", "����("
   IsNumber = False
    If IsExp(bstack, n$, r) Then
    r = SG * Abs(r)
    A$ = n$
    
 IsNumber = FastSymbol(A$, ")", True)
    Else
                A$ = n$
                MissParam A$
    
    End If
    Exit Function
Case "LOWORD(", "LOWWORD(", "��������("
  IsNumber = False
If IsExp(bstack, n$, r) Then
    On Error Resume Next
    
    r = SG * Int((r - Int(r / 65536#) * 65536#))
    If Err.Number > 0 Then
    A$ = n$
    MyErMacro A$, Err.Description, "����� ������"
        Exit Function
    
    End If
    A$ = n$
    
   IsNumber = FastSymbol(A$, ")", True)
        Else
                A$ = n$
                MissParam A$
 End If
 Exit Function
Case "HIWORD(", "HIGHWORD(", "��������("
    If IsExp(bstack, n$, r) Then
    On Error Resume Next
    
    r = SG * Int(Int(r / 256) / 256)
    If Err.Number > 0 Then
    A$ = n$
    MyErMacro A$, Err.Description, "����� ������"
  
    IsNumber = False
    Exit Function
    End If
    A$ = n$
    
IsNumber = FastSymbol(A$, ")", True)
      Else
                A$ = n$
                MissParam A$
    
    End If
    Exit Function
    Case "BINARY.NEG(", "�������.����(", "�������.����������("
      IsNumber = False
    If IsExp(bstack, n$, r) Then
            On Error Resume Next
    
             r = SG * uintnew(-1) - uintnew(r)
        If Err.Number > 0 Then
            A$ = n$
            MyErMacro A$, Err.Description, "����� ������"
          
            Exit Function
            End If
    A$ = n$
    
IsNumber = FastSymbol(A$, ")", True)
   Else
                A$ = n$
                MissParam A$
    
    End If
     Exit Function
    Case "BINARY.OR(", "�������.�("
    IsNumber = False
        If IsExp(bstack, n$, r) Then
        If FastSymbol(n$, ",") Then
        If IsExp(bstack, n$, p) Then
            r = SG * uintnew((signlong(r) Or signlong(p)))
            A$ = n$
         IsNumber = FastSymbol(A$, ")", True)
           Else
                A$ = n$
                MissParam A$
        End If
          Else
                A$ = n$
                MissParam A$
       End If
         Else
                A$ = n$
                MissParam A$
       End If
       Exit Function
    Case "BINARY.AND(", "�������.���("
        If IsExp(bstack, n$, r) Then
            If FastSymbol(n$, ",") Then
                If IsExp(bstack, n$, p) Then
                    r = SG * uintnew((signlong(r) And signlong(p)))
                    A$ = n$
                    IsNumber = FastSymbol(A$, ")", True)
                Else
                    A$ = n$
                    MissParam A$
                End If
            Else
                A$ = n$
                MissParam A$
            End If
        Else
            A$ = n$
            MissParam A$
       
       End If
       Exit Function
           Case "BINARY.XOR(", "�������.���("
        If IsExp(bstack, n$, r) Then
            If FastSymbol(n$, ",") Then
                If IsExp(bstack, n$, p) Then
                    r = SG * uintnew((signlong(r) Xor signlong(p)))
                    A$ = n$
                    IsNumber = FastSymbol(A$, ")", True)
                Else
                    A$ = n$
                    MissParam A$
                End If
            Else
                A$ = n$
                MissParam A$
            End If
        Else
            A$ = n$
            MissParam A$
       
       End If
Exit Function
Case "HILOWWORD(", "�������("
 IsNumber = False
    If IsExp(bstack, n$, r) Then
        If FastSymbol(n$, ",") Then
              If IsExp(bstack, n$, p) Then
                    r = SG * (r * &H10000 + p)
                    A$ = n$
                     IsNumber = FastSymbol(A$, ")", True)
                  Else
                     A$ = n$
                    MissParam A$
                End If
        Else
             A$ = n$
             MissParam A$
        End If
     Else
             A$ = n$
             MissParam A$
      End If
     
        Exit Function
Case "BINARY.SHIFT(", "�������.��������("
IsNumber = False
   If IsExp(bstack, n$, r) Then
  
            If FastSymbol(n$, ",") Then
                    If IsExp(bstack, n$, p) Then
                         If p > 31 Or p < -31 Then
                         A$ = n$
                         MyErMacro A$, "Shift from -31 to 31", "�������� ��� -31 �� 31"
                         IsNumber = False: Exit Function
                         Else
                               If p > 0 Then
                              r = SG * uintnew((signlong(r) And signlong(2 ^ (32 - p) - 1))) * 2 ^ p
                              ElseIf p = 0 Then
                              r = SG * r
                              Else
                              p = -p
                               r = SG * uintnew((signlong(r) And signlong(uintnew(-1) - uintnew(2 ^ p - 1)))) / 2 ^ p
                              End If
                              A$ = n$
                            IsNumber = FastSymbol(A$, ")", True)
                    Exit Function
                         End If
                    Else
                          A$ = n$
                        MissParam A$
                    End If
            Else
                A$ = n$
                MissParam A$
            End If
    Else
            A$ = n$
            MissParam A$
   End If
         Exit Function
Case "BINARY.ROTATE(", "�������.����������("
IsNumber = False
        If IsExp(bstack, n$, r) Then
             If FastSymbol(n$, ",") Then
                 If IsExp(bstack, n$, p) Then
                        If p > 31 Or p < -31 Then
                            A$ = n$
                              MyErMacro A$, "Rotation from -31 to 31", "��������� ��� -31 �� 31"
                             IsNumber = False: Exit Function
                        Else
                             If p > 0 Then
                                 r = SG * (uintnew((signlong(r) And signlong(2 ^ (32 - p) - 1))) * 2 ^ p + uintnew((signlong(r) And signlong(uintnew(-1) - uintnew(2 ^ (32 - p) - 1)))) / 2 ^ (32 - p))
                     
                             ElseIf p = 0 Then
                                 r = SG * r
                             Else
                                 p = 32 + p
                                 r = SG * (uintnew((signlong(r) And signlong(2 ^ (32 - p) - 1))) * 2 ^ p + uintnew((signlong(r) And signlong(uintnew(-1) - uintnew(2 ^ (32 - p) - 1)))) / 2 ^ (32 - p))
                                 
                             End If
                        End If
                     A$ = n$
                  Else
                    A$ = n$
                    MissParam A$
                 End If
             Else
                A$ = n$
                MissParam A$
            End If
        IsNumber = FastSymbol(A$, ")", True)
        Else
            A$ = n$
            MissParam A$
        End If
       Exit Function
       
Case "SINT(", "�������.�������("
' GET AN UNSIGN AND GIVES A SIGN...AS READING BITS
 IsNumber = False
 If IsExp(bstack, n$, r) Then
    On Error Resume Next
    If r < 0 Then
    A$ = n$
      MyErMacro A$, "Unsign long can't be negative", "� �������� �������� ��� ������ �� ����� ���������"
   
    Exit Function
    End If
    r = SG * signlong(r)
    If Err.Number > 0 Then
    A$ = n$
      MyErMacro A$, "Unsign long to sign failed", "� ��������� �������� �� ������� �� �������, �������"
    IsNumber = False
    Exit Function
    End If
    A$ = n$
  IsNumber = FastSymbol(A$, ")", True)
    Exit Function
      Else
                    A$ = n$
                MissParam A$
    End If
   Exit Function
Case "USGN(", "�������("
'
IsNumber = False
 If IsExp(bstack, n$, r) Then
 A$ = n$
    On Error Resume Next
    If r > uintnew(-1) Then r = uintnew(-1)
    r = Fix(r)
    If r < 0 Then r = 0
    
    r = SG * r
    
IsNumber = FastSymbol(A$, ")", True)
    Exit Function
       Else
                    A$ = n$
                MissParam A$
    End If
    Exit Function
Case "UINT(", "�������.�������("
' READING BITS OF A SIGN AND GIVE AN UNSIGN OF SAME BITS
IsNumber = False
 If IsExp(bstack, n$, r) Then
 A$ = n$
    On Error Resume Next
    If r > 2147483647# Then
     MyErMacro A$, "Overflow long, expect lower than (2147483648)", "����������� ��������, �������� ��������� ��� (2147483648)"
      
    Exit Function
    ElseIf r < -2147483648# Then
    MyErMacro A$, "Overflow long, expect greater than (-2147483649)", "����������� ��������, �������� ���������� ��� (-2147483649)"
     IsNumber = False
    Exit Function
    End If
    r = SG * uintnew(r)
    If Err.Number > 0 Then
    MyErMacro A$, "Sign to Unsign long failed", "� ��������� �������� �� ������� �� ������� (����� �������) �������"
    IsNumber = False
    Exit Function
    
    End If
    
    
IsNumber = FastSymbol(A$, ")", True)
    Exit Function
       Else
                    A$ = n$
                MissParam A$
    End If
    Exit Function
 Case "ROUND(", "������("
   IsNumber = False
    If IsExp(bstack, n$, r) Then
    On Error Resume Next
    If FastSymbol(n$, ")") Then
            
            r = SG * MyRound(r, 13)
            A$ = n$
            IsNumber = True
    ElseIf FastSymbol(n$, ",", True) Then
        If IsExp(bstack, n$, PP) Then
        
          r = SG * MyRound(r, PP)
        
      
            A$ = n$
     IsNumber = FastSymbol(A$, ")", True)
     End If
    Else
                    A$ = n$
                MissParam A$
    
    
    End If
    End If
    Exit Function
   
 Case "INT(", "��("
   IsNumber = False
    If IsExp(bstack, n$, r) Then
    On Error Resume Next
    r = SG * Int(r)
    If Err.Number > 0 Then
    A$ = n$
    MyErMacro A$, "long conversion failed", "� ��������� �� ������� �������"
    Exit Function
    End If
    A$ = n$
 IsNumber = FastSymbol(A$, ")", True)
    Else
                    A$ = n$
                MissParam A$
    
    
    End If
    Exit Function
Case "SEEK(", "��������("
 IsNumber = False
  IsSymbol3 n$, "#"  ' drop it
    If IsExp(bstack, n$, r) Then
    VR = r Mod 512
    
    If FLEN(VR) = 0 Then
 MyErMacro n$, "not valid file number", "����� ������� �������"
A$ = n$
    ElseIf FLEN(VR) <> 1 Then
     MyErMacro n$, "not valid file TYPE", "����� ����� �������"
A$ = n$
    Else
    r = SG * Seek(VR)
    A$ = n$
  IsNumber = FastSymbol(A$, ")", True)
  End If
  
    Else
                   
                MissParam A$
    End If
    Exit Function

 Case "EOF(", "�����("
 IsNumber = False
   IsSymbol3 n$, "#"  ' drop it
    If IsExp(bstack, n$, r) Then
        VR = r Mod 512
        If FLEN(VR) = 0 Then
        MyErMacro n$, "not valid file number", "����� ������� �������"
         A$ = n$
    Else
    r = SG * (LOF(VR) < Seek(VR))
    A$ = n$
  IsNumber = FastSymbol(A$, ")", True)
  End If
  
    Else
                    A$ = n$
                MissParam A$
    End If
    
    Exit Function
Case "RANDOM(", "�������("

    If IsExp(bstack, n$, r) Then
    r = Int(r)
        If FastSymbol(n$, ",") Then
        If Not IsExp(bstack, n$, p) Then IsNumber = False: Exit Function
        p = Int(p)
        If p > r Then p = p + r: r = p - r: p = p - r
        Else
        p = 0
        
        End If
    
    r = SG * Int((r - p + 1) * Rnd + p)
       A$ = n$
    IsNumber = True
    Else
      Randomize CDbl(timeGetTime)
     r = SG * True
      A$ = n$
    End If
    IsNumber = FastSymbol(A$, ")", True)

       Exit Function
Case "CHRCODE(", "������("
 IsNumber = False
    If IsStrExp(bstack, n$, s$) Then
    r = SG * AscW(s$)
    A$ = n$
   
  
    IsNumber = FastSymbol(A$, ")", True)
    Else
                    A$ = n$
                MissParam A$
    End If
    Exit Function

Case "ASC(", "���("
 IsNumber = False
    If IsStrExp(bstack, n$, s$) Then
    r = SG * Asc(s$)
    A$ = n$
   
  
    IsNumber = FastSymbol(A$, ")", True)
    Else
                    A$ = n$
                MissParam A$
    End If
    Exit Function
Case Else
LOOKFORSUBNUM:
On Error Resume Next

s1$ = V$ & ")" ' ANY CHAR HERE

MakeThisSubNum bstack, s1$
If IsSymbol(n$, "@") Then
'is a function allways...
If GetlocalSub(s1$, V1&) Then
    GoTo contAr1
ElseIf GetSub(s1$, V1&) Then
GoTo contAr1
Else
GoTo skiperror
End If

Else
If neoGetArray(bstack, V$, pppp, , , True) Then
    GoTo contAr2
ElseIf GetlocalSub(s1$, V1&) Then
    GoTo contAr1
ElseIf neoGetArray(bstack, V$, pppp) Then
GoTo contAr2
ElseIf GetSub(s1$, V1&) Then
GoTo contAr1
Else
GoTo skiperror
End If
End If
'''ver 18
If GetSub(s1$, V1&) Then
GoTo contAr1
ElseIf neoGetArray(bstack, V$, pppp) Then
GoTo contAr2
Else
GoTo skiperror
End If

If GetSub(s1$, V1&) Then
contAr1:
s1$ = Trim$(s1$)
Set nBstack = New basetask
nBstack.reflimit = Len(VarName$)
Set nBstack.Parent = bstack
If bstack.IamThread Then Set nBstack.Process = bstack.Process
Set nBstack.Owner = bstack.Owner
nBstack.OriginalCode = V1&
nBstack.UseGroupname = sbgroup(V1&)

    If GoFunc(nBstack, s1$, n$, p) Then
    Set bstack.LastObj = nBstack.LastObj
        If InStr(V$, "%") > 0 Then
        
        r = SG * Int(p)
        Else
        r = SG * p
        End If
            A$ = n$
            IsNumber = True
    Else
  ''  a$ = n$
     IsNumber = False
    End If
    Exit Function
ElseIf neoGetArray(bstack, V$, pppp) Then
contAr2:

If FastSymbol(n$, ")") Then
IsNumber = True
p = 0
Set bstack.LastObj = pppp
A$ = n$
Exit Function
End If
pppp.SerialItem (0), dd, 5
dd = dd - 1
p = 0
PP = 0
    IsNumber = True
    w2 = 0
Do While dn <= dd
        pppp.SerialItem W3, dn, 6
        
            If IsExp(bstack, n$, p) Then
            If dn < dd Then
                If Not FastSymbol(n$, ",") Then A$ = n$: MyErMacro A$, "need index for " & V$ & ")", "���������� ������ ��� �� ������ " & V$ & ")": IsNumber = False: Exit Function
               
                Else
             If FastSymbol(n$, ",") Then
        A$ = n$: IsNumber = False
            MyErMacro A$, "too many indexes for array " & V$ & ")", "������ ������� ��� �� ������ " & V$ & ")"
            Exit Function
             
             End If
                If Not FastSymbol(n$, ")") Then A$ = n$: MissSymbol A$, ")": IsNumber = False: Exit Function
                
             
            End If
                On Error Resume Next
                If p < 0 Then
                        A$ = n$: IsNumber = False
                  MyErMacro A$, "negative index in array " & V$ & ")", "��������� ������� ��� ������ " & V$ & ")"
                Exit Function
                End If
                
            If Not pppp.PushOffset(w2, dn, CLng(p)) Then
                A$ = n$ ': IsNumber = False
                    MyErMacro A$, "index too high for array " & V$ & ")", "������� ������ ��� �� ������ " & V$ & ")"
                Exit Function
            Else
                       
                End If
            Else
             IsNumber = False
            If LastErNum = -2 Then
            Else
            A$ = n$
            MyErMacro A$, "missing index for array " & V$ & ")", "������ ������� ��� �� ������ " & V$ & ")"
            End If
            Exit Function
            End If
    dn = dn + 1
    Loop
    If Typename(pppp.item(w2)) = "Group" Then
    
      If Left$(n$, 1) = "." Then
                    
                          
                        IsNumber = SpeedGroup(bstack, pppp, "VAL", V$, n$, w2) = 1
                    If Not bstack.LastObj Is Nothing Then
                    Set bstack.LastObj = Nothing
                    Form1.refresh
                    End If
                           r = SG * bstack.LastValue
    
      Else
                      bstack.soros.CopyGroup pppp.item(w2), anything
                       Set bstack.LastObj = anything
                      
      End If
        A$ = n$
    Exit Function
    ElseIf IsObject(pppp.item(w2)) Then
    Set bstack.LastObj = pppp.item(w2)
    End If
   r = SG * pppp.item(w2)

    A$ = n$
    Exit Function
    Else
skiperror:
        A$ = n$: IsNumber = False
         If FindNameForGroup(bstack, V$) Then
 MyErMacro A$, "unknown method/array  " & V$, "������� �������/������� " & V$
 Else
     MyErMacro A$, "unknown function/array " & V$, "������� ���������/������� " & V$

End If

    
    Exit Function
    End If
    
End Select
Case Else

End Select
zerohere:
If Val("0" & Mid$(A$, sng&, 1)) = 0 And Left(Mid$(A$, sng&, 1), sng&) <> "0" And Left(Mid$(A$, sng&, 1), sng&) <> "." Then
IsNumber = False
Else

    If Mid$(A$, sng&, 1) = "." Then

    ig$ = "0"
    DE$ = "."
    ElseIf LCase(Mid$(A$, sng&, 2)) Like "0[x�]" Then
    ig$ = "0"
    DE$ = "0x"
  sng& = sng& + 1
Else
    Do While sng& <= Len(A$)
        
        Select Case Mid$(A$, sng&, 1)
        Case "0" To "9"
        ig$ = ig$ & Mid$(A$, sng&, 1)
        Case "."
        DE$ = "."
        Exit Do
        Case Else
        Exit Do
        End Select
       sng& = sng& + 1
    Loop
    End If
    ' compute decimal part
    If DE$ <> "" Then
      sng& = sng& + 1
        Do While sng& <= Len(A$)
       
        Select Case Mid$(A$, sng&, 1)
        Case " ", ChrW(160)
        If Not (sg1 And Len(ex$) = 1) Then
        Exit Do
        End If
        Case "A" To "D", "a" To "d", "F", "f"
        If Left$(DE$, 2) = "0x" Then
        DE$ = DE$ & Mid$(A$, sng&, 1)
        End If
        Case "0" To "9"
        If sg1 Then
        ex$ = ex$ & Mid$(A$, sng&, 1)
        Else
        DE$ = DE$ & Mid$(A$, sng&, 1)
        End If
        Case "E", "e"
         If Left$(DE$, 2) = "0x" Then
         DE$ = DE$ & Mid$(A$, sng&, 1)
         Else
              If ex$ = "" Then
               sg1 = True
        ex$ = "E"
        Else
        Exit Do
        End If
        End If
        Case "�", "�"
                         If ex$ = "" Then
               sg1 = True
        ex$ = "E"
        Else
        Exit Do
        End If
        ex$ = "E"
        
        Case "+", "-"
        If sg1 And Len(ex$) = 1 Then
         ex$ = ex$ & Mid$(A$, sng&, 1)
        Else
        Exit Do
        End If
        Case Else
        Exit Do
        End Select
         sng& = sng& + 1
        Loop
        If ex$ = "E" Or ex$ = "E-" Or ex$ = "E+" Then sng& = sng& - Len(ex$)
    End If
    If ig$ = "" Then
    IsNumber = False
    Else
  ''  If SG < 0 Then ig$ = "-" & ig$
    If Left$(DE$, 2) = "0x" Then
   ' r = UNPACKLNG(Left$(ex$, 8))
   If Mid$(DE$, 3) = "" Then
   r = 0
   Else
   DE$ = Right$("00000000" & Mid$(DE$, 3), 8)
   r = CDbl(UNPACKLNG(Left$(DE$, 4)) * 65536#) + CDbl(UNPACKLNG(Right$(DE$, 4)))
   End If
    Else
 If SG < 0 Then ig$ = "-" & ig$
            On Error Resume Next
            If ex$ = "E" Or ex$ = "E-" Or ex$ = "E+" Then
            r = Val(ig$ & DE$ & ex$ & "0")
            sng = sng + Len(ex$)
            ElseIf ex$ <> "" Then
                If Val(Mid$(ex$, 2)) > 308 Or Val(Mid$(ex$, 2)) < -324 Then
                    r = Val(ig$ & DE$)
                    sng = sng - Len(ex$)
                    ex$ = ""
                    
                    Else
                 r = Val(ig$ & DE$ & ex$)
                End If
            Else
        
            r = Val(ig$ & DE$)
            End If
            If Err.Number = 6 Then
                If Len(ex$) > 2 Then
                    ex$ = Left$(ex$, Len(ex$) - 1)
                    sng = sng - 1
                    Err.clear
                    r = Val(ig$ & DE$ & ex$)
                    If Err.Number = 6 Then
                        sng = sng - Len(ex$)
                         r = Val(ig$ & DE$)
                    End If
                End If
            MyEr "Error in exponet", "����� ���� ������"
          IsNumber = False
            Exit Function
            End If
    
  End If
    A$ = Mid$(A$, sng&)
    IsNumber = True
    End If
End If
End Function
Function IsPureLabel(A$, r$) As Long
Dim RR&, one As Boolean, c$
r$ = ""
If A$ = "" Then IsPureLabel = 0: Exit Function

A$ = NLtrim$(A$)
    Do While Len(A$) > 0
    c$ = myUcase(Left$(A$, 1))
    If AscW(c$) < 256 Then
        Select Case c$
        Case "."
            If one Then
            Exit Do
            Exit Do
            ElseIf r$ <> "" Then
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1
            Else
            IsPureLabel = 0
            Exit Function
            End If
        Case "A" To "Z", "�" To "�", "�", "�", "�", "�", "�", "�", "�", "�"
            If one Then
            Exit Do
            Else
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        Case "0" To "9", "_"
           If one Then
            Exit Do
            ElseIf r$ <> "" Then
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            Else
            Exit Do
            End If
            
        Case "$"
            If one Then Exit Do
            If r$ <> "" Then
            one = True
            RR& = 3 ' is string variable
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            Else
            Exit Do
            End If
        Case "%"
            If one Then Exit Do
            If r$ <> "" Then
            one = True
            RR& = 4 ' is long variable
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            Else
            Exit Do
            End If
        Case "("
            If r$ <> "" Then
                            If Mid$(A$, 2, 2) = ")@" Then
                                    r$ = r$ & "()."
                                  
                                 A$ = Mid$(A$, 4)
                               Else
                                       Select Case RR&
                                       Case 1
                                       RR& = 5 ' float array or function
                                       Case 3
                                       RR& = 6 'string array or function
                                       Case 4
                                       RR& = 7 ' long array
                                       Case Else
                                       Exit Do
                                       End Select
                                       r$ = r$ & Left$(A$, 1)
                                       A$ = Mid$(A$, 2)
                                   Exit Do
                            
                          End If
               Else
                        Exit Do
            
            End If
        Case Else
        Exit Do
        End Select
        Else
            If one Then
            Exit Do
            Else
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        End If

    Loop
    IsPureLabel = RR&
   A$ = LTrim(A$)

End Function
Function IsLabelBig(bstack As basetask, A$, rrr$, Optional nocommand As Boolean, Optional r$) As Long
Dim RR&, one As Boolean, c$, dot&, gr As Boolean, skipcase As Boolean
r$ = ""
If A$ = "" Then IsLabelBig = 0: Exit Function
A$ = NLtrim$(A$)
    Do While Len(A$) > 0
     c$ = Left$(A$, 1) 'ANYCHAR HERE
    If AscW(c$) < 256 Then
        Select Case c$
        Case "@"
           If r$ = "" Then
              A$ = Mid$(A$, 2)
              ElseIf Mid$(A$, 2, 1) <> "(" And r$ <> "" Then
            r$ = r$ & "."
              A$ = Mid$(A$, 2)
              Else
                 IsLabelBig = 0: Exit Function
            End If
        Case "?"
        If r$ = "" Then
        rrr$ = "?"
        
        IsLabelBig = 1
        Exit Function
        End If
        A$ = Mid$(A$, 2)
        Case ":"
            If one Then
  
            Exit Do
           
            ElseIf r$ <> "" Then
            If Mid$(A$, 2) <> "" Then
            If Mid$(A$, 2, 1) <> "\" And Mid$(A$, 2, 2) <> vbCrLf Then
            
                    
            Exit Do
            End If
            End If
            
            If InStr(r$, ":") > 0 Then
                IsLabelBig = 0
            Exit Function
            Else
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1
            End If
            Else
            IsLabelBig = 0
            Exit Function
            End If
        Case "."
            
            If one Then
  
            Exit Do
           ElseIf r$ <> "" Then
           
                    r$ = r$ & Left$(A$, 1)
                       A$ = Mid$(A$, 2)
           ''
           ElseIf Not Mid$(A$, 2, 1) Like "[0-9]" Then
            
                       If r$ <> "" Then
                       r$ = r$ & Left$(A$, 1)
                      RR& = 1
                                      
                            Else
                            
                            dot& = dot& + 1
                    
                            End If
                         
                         A$ = Mid$(A$, 2)
                        
                        
            Else
                         If r$ = "" And dot& > 0 Then
                                  nocommand = True
                                 rrr$ = String$(dot& + 1, ".")     ' i want this only in right position for "dir .. "
                                 r$ = rrr$
                                  A$ = Mid$(A$, 2)
                                 IsLabelBig = 1
                         Else
                              IsLabelBig = 0
                        End If
                    
            Exit Function
            End If
        Case "{" To "~", "^"
            Exit Do
        
        Case "\"
           If one Then
            Exit Do
            ElseIf r$ <> "" Or dot& Then
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            Else
              Exit Do
            End If
        Case "0" To "9", "_"  ' old ,"\"
       
           If one Then
            Exit Do
            ElseIf r$ <> "" Then
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
             nocommand = True
            RR& = 1 'is an identifier or floating point variable
            Else
            If dot& > 0 Then A$ = "." + A$: dot& = 0
            
            Exit Do
            End If
Case Is >= "A"
            If one Then
            Exit Do
            Else
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        Case "&"
        
            If one Then Exit Do
            
            If r$ <> "" Then
                'ERROR
                RR& = 0
                '' r$ = ""
                rrr$ = ""
                Exit Function
            Else
           nocommand = True
                A$ = Mid$(A$, 2)
                RR& = Abs(IsLabelBig(bstack, A$, r$))
                skipcase = True
                If RR& < 5 Then
            Dim i As Long
         
                    If GetlocalVar(r$, i) Then
                        A$ = Chr(34) + HERE$ & "." & r$ & Chr(34) + A$
                    ElseIf Left$(r$, 5) = "����." Or Left$(r$, 5) = "THIS." Then
                        If bstack.UseGroupname <> "" Then
                                 c$ = bstack.UseGroupname + Mid$(r$, 6)
                                 
                         Else
                             c$ = StripThis2(HERE$)
                             If c$ <> "" Then c$ = c$ & "." & Mid(r$, 6) Else c$ = HERE$ & "." & r$
                         End If
                    A$ = Chr(34) + c$ + Chr(34) + A$
                    
                  ElseIf InStr(VarName$, Chr(1) + r$ & " ") > 0 Then
                         A$ = Chr(34) + r$ & Chr(34) + A$
                    Else
                    '' r$ = myUcase(r$, gr)
                    
                    If r$ = "THIS" Or r$ = "����" Then
                    rrr$ = r$
                   IsLabelBig = -100
                   
                   Exit Function
                    Else
                If GetSub(r$ + ")", RR&) Then
                
                                 r$ = "{" + SB(RR&) + "} " + sbgroup(RR&)
                                 
                    RR& = 2
                    Exit Do
                    Else
                    MyErMacro A$, "can't pass reference", "��� ����� �� ���� �������"
                    End If
                    End If
                    End If
                Else
                    If FastSymbol(A$, ")") Then
                           '' r$ = myUcase(r$, gr)
                            RR& = 0
                            If Left$(r$, 5) = "����." Or Left$(r$, 5) = "THIS." Then
                            If InStr(arrname$, Chr$(13) + bstack.UseGroupname & Mid(r$, 6) + " ") > 0 Then
                                    A$ = Chr(34) + bstack.UseGroupname & Mid(r$, 6, Len(r$) - 6) + Chr(34) + A$
                                    Else
                                    RR& = 1
                                    End If
                                ElseIf InStr(arrname$, Chr$(13) + HERE$ & "." & r$ + " ") > 0 Then
  ''                              ElseIf InStr(arrname$, Chr$(13) + HERE$ & "." & myUcase(Mid$(r$, 1, Len(r$))) + " ") > 0 Then
                                    A$ = Chr(34) + HERE$ & "." & Mid$(r$, 1, Len(r$) - 1) + Chr(34) + A$
                                ElseIf InStr(arrname$, Chr(13) + r$ + " ") > 0 Then
                                    A$ = Chr(34) + Mid$(r$, 1, Len(r$) - 1) + Chr(34) + A$
                                Else
                                   RR& = 1
                                End If
                                 If RR& = 1 Then
                                 If bstack.UseGroupname <> "" Then
                                 r$ = bstack.UseGroupname + Mid$(r$, 6)
                                 Else
                                 End If
                                 If GetSub(r$ + ")", RR&) Then
                                                                  r$ = "{" + SB(RR&) + "}" + sbgroup(RR&)
                                 
                    RR& = 2
     
                    Exit Do
                    
                    Else
                    MyErMacro A$, "can't pass reference", "��� ����� �� ���� �������"
                    End If
               
                                 
                                 End If
                                 RR& = 0
                                 r$ = ""
                                Exit Do
                            End If
                    End If
                    
                    r$ = ""
                    RR& = 0
                    Exit Do
            End If
            
        Case "$"
       If one Then Exit Do
            If r$ <> "" Then
            one = True
            RR& = 3 ' is string variable
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            Else
            Exit Do
            End If
        Case "%"
            If one Then Exit Do
            If r$ <> "" Then
            one = True
            RR& = 4 ' is long variable
            r$ = r$ & Left$(A$, 1)
            nocommand = True
            A$ = Mid$(A$, 2)
            Else
            Exit Do
            End If
        Case "("
            If r$ <> "" Then
                If Mid$(A$, 2, 2) = ")@" Then
                 r$ = r$ & "()."
              A$ = Mid$(A$, 4)
                Else
                Select Case RR&
                Case 1
                RR& = 5 ' float array or function
                Case 3
                RR& = 6 'string array or function
                Case 4
                RR& = 7 ' long array
                Case Else
                Exit Do
                End Select
                r$ = r$ & Left$(A$, 1)
                A$ = Mid$(A$, 2)
               Exit Do
            
            End If
           Else
           Exit Do
            End If
        Case Else
        Exit Do
        End Select
        Else
            If one Then
            Exit Do
            Else
            gr = True
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        End If
    Loop
    If skipcase Then
    rrr$ = r$
    Else
    rrr$ = myUcase(r$, gr)
    End If
   If dot& Then
   nocommand = True
                           If r$ <> "" Then
     
                        RR& = bstack.GetDotNew(rrr$, dot&) * RR&

                        nocommand = RR&
                           Else
                          If dot& > 1 Then rrr$ = String$(dot&, ".") + rrr$: If RR& = 0 Then RR& = 1
                          End If
    
    
   End If
   
    IsLabelBig = RR&
    nocommand = IsLabelBig And (Len(r$) = 1 Or nocommand)
 '' a$ = LTrim(a$)

End Function
Function IsLabel(bstack As basetask, A$, rrr$) As Long
Dim RR&, one As Boolean, c$, dot&, gr As Boolean, skipcase As Boolean, r$
r$ = ""
If A$ = "" Then IsLabel = 0: Exit Function
A$ = NLtrim$(A$)
    Do While Len(A$) > 0
     c$ = Left$(A$, 1) 'ANYCHAR HERE
    If AscW(c$) < 256 Then
        Select Case c$
        Case "@"
           If r$ = "" Then
              A$ = Mid$(A$, 2)
              ElseIf Mid$(A$, 2, 1) <> "(" And r$ <> "" Then
            r$ = r$ & "."
              A$ = Mid$(A$, 2)
              Else
                 IsLabel = 0: Exit Function
            End If
        Case "?"
        If r$ = "" Then
        rrr$ = "?"
        
        IsLabel = 1
        Exit Function
        End If
        A$ = Mid$(A$, 2)
        Case ":"
            If one Then
  
            Exit Do
           
            ElseIf r$ <> "" Then
            If Mid$(A$, 2) <> "" Then
            If Mid$(A$, 2, 1) <> "\" And Mid$(A$, 2, 2) <> vbCrLf Then
            
                    
            Exit Do
            End If
            End If
            
            If InStr(r$, ":") > 0 Then
                IsLabel = 0
            Exit Function
            Else
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1
            End If
            Else
            IsLabel = 0
            Exit Function
            End If
        Case "."
            
            If one Then
  
            Exit Do
           ElseIf r$ <> "" Then
           
                    r$ = r$ & Left$(A$, 1)
                       A$ = Mid$(A$, 2)
           ''
           ElseIf Not Mid$(A$, 2, 1) Like "[0-9]" Then
            
                       If r$ <> "" Then
                       r$ = r$ & Left$(A$, 1)
                      RR& = 1
                                      
                            Else
                            
                            dot& = dot& + 1
                    
                            End If
                         
                         A$ = Mid$(A$, 2)
                        
                        
            Else
                         If r$ = "" And dot& > 0 Then
                                 rrr$ = String$(dot& + 1, ".")     ' i want this only in right position for "dir .. "
                                 r$ = rrr$
                                  A$ = Mid$(A$, 2)
                                 IsLabel = 1
                         Else
                              IsLabel = 0
                        End If
                    
            Exit Function
            End If
        Case "{" To "~", "^"
            Exit Do
        
        Case "\"
           If one Then
            Exit Do
            ElseIf r$ <> "" Or dot& Then
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            Else
              Exit Do
            End If
        Case "0" To "9", "_"  ' old ,"\"
       
           If one Then
            Exit Do
            ElseIf r$ <> "" Then
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            Else
            If dot& > 0 Then A$ = "." + A$: dot& = 0
            
            Exit Do
            End If
Case Is >= "A"
            If one Then
            Exit Do
            Else
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        Case "&"
        
            If one Then Exit Do
            
            If r$ <> "" Then
                'ERROR
                RR& = 0
                '' r$ = ""
                rrr$ = ""
                Exit Function
            Else
                A$ = Mid$(A$, 2)
                RR& = Abs(IsLabel(bstack, A$, r$))
                skipcase = True
                If RR& < 5 Then
            Dim i As Long
         
                    If GetlocalVar(r$, i) Then
                        A$ = Chr(34) + HERE$ & "." & r$ & Chr(34) + A$
                    ElseIf Left$(r$, 5) = "����." Or Left$(r$, 5) = "THIS." Then
                        If bstack.UseGroupname <> "" Then
                                 c$ = bstack.UseGroupname + Mid$(r$, 6)
                                 
                         Else
                             c$ = StripThis2(HERE$)
                             If c$ <> "" Then c$ = c$ & "." & Mid(r$, 6) Else c$ = HERE$ & "." & r$
                         End If
                    A$ = Chr(34) + c$ + Chr(34) + A$
                    
                  ElseIf InStr(VarName$, Chr(1) + r$ & " ") > 0 Then
                         A$ = Chr(34) + r$ & Chr(34) + A$
                    Else
                    '' r$ = myUcase(r$, gr)
                    
                    If r$ = "THIS" Or r$ = "����" Then
                    rrr$ = r$
                   IsLabel = -100
                   
                   Exit Function
                    Else
                If GetSub(r$ + ")", RR&) Then
                
                                 r$ = "{" + SB(RR&) + "} " + sbgroup(RR&)
                                 
                    RR& = 2
                    Exit Do
                    Else
                    MyErMacro A$, "can't pass reference", "��� ����� �� ���� �������"
                    End If
                    End If
                    End If
                Else
                    If FastSymbol(A$, ")") Then
                           '' r$ = myUcase(r$, gr)
                            RR& = 0
                            If Left$(r$, 5) = "����." Or Left$(r$, 5) = "THIS." Then
                            If InStr(arrname$, Chr$(13) + bstack.UseGroupname & Mid(r$, 6) + " ") > 0 Then
                                    A$ = Chr(34) + bstack.UseGroupname & Mid(r$, 6, Len(r$) - 6) + Chr(34) + A$
                                    Else
                                    RR& = 1
                                    End If
                                ElseIf InStr(arrname$, Chr$(13) + HERE$ & "." & r$ + " ") > 0 Then
  ''                              ElseIf InStr(arrname$, Chr$(13) + HERE$ & "." & myUcase(Mid$(r$, 1, Len(r$))) + " ") > 0 Then
                                    A$ = Chr(34) + HERE$ & "." & Mid$(r$, 1, Len(r$) - 1) + Chr(34) + A$
                                ElseIf InStr(arrname$, Chr(13) + r$ + " ") > 0 Then
                                    A$ = Chr(34) + Mid$(r$, 1, Len(r$) - 1) + Chr(34) + A$
                                Else
                                   RR& = 1
                                End If
                                 If RR& = 1 Then
                                 If bstack.UseGroupname <> "" Then
                                 r$ = bstack.UseGroupname + Mid$(r$, 6)
                                 Else
                                 End If
                                 If GetSub(r$ + ")", RR&) Then
                                                                  r$ = "{" + SB(RR&) + "}" + sbgroup(RR&)
                                 
                    RR& = 2
     
                    Exit Do
                    
                    Else
                    MyErMacro A$, "can't pass reference", "��� ����� �� ���� �������"
                    End If
               
                                 
                                 End If
                                 RR& = 0
                                 r$ = ""
                                Exit Do
                            End If
                    End If
                    
                    r$ = ""
                    RR& = 0
                    Exit Do
            End If
            
        Case "$"
       If one Then Exit Do
            If r$ <> "" Then
            one = True
            RR& = 3 ' is string variable
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            Else
            Exit Do
            End If
        Case "%"
            If one Then Exit Do
            If r$ <> "" Then
            one = True
            RR& = 4 ' is long variable
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            Else
            Exit Do
            End If
        Case "("
            If r$ <> "" Then
                If Mid$(A$, 2, 2) = ")@" Then
                 r$ = r$ & "()."
              A$ = Mid$(A$, 4)
                Else
                Select Case RR&
                Case 1
                RR& = 5 ' float array or function
                Case 3
                RR& = 6 'string array or function
                Case 4
                RR& = 7 ' long array
                Case Else
                Exit Do
                End Select
                r$ = r$ & Left$(A$, 1)
                A$ = Mid$(A$, 2)
               Exit Do
            
            End If
           Else
           Exit Do
            End If
        Case Else
        Exit Do
        End Select
        Else
            If one Then
            Exit Do
            Else
            gr = True
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        End If
    Loop
    If skipcase Then
    rrr$ = r$
    Else
    rrr$ = myUcase(r$, gr)
    End If
   If dot& Then
                           If r$ <> "" Then
     
                        RR& = bstack.GetDotNew(rrr$, dot&) * RR&
                           Else
                          If dot& > 1 Then rrr$ = String$(dot&, ".") + rrr$: If RR& = 0 Then RR& = 1
                          End If
    
    
   End If
   
    IsLabel = RR&

 '' a$ = LTrim(a$)

End Function

Function IsLabelDIM(bstack As basetask, A$, r$) As Long
Dim RR&, one As Boolean, c$, dot&, gr As Boolean, skipcase As Boolean
r$ = ""
If A$ = "" Then IsLabelDIM = 0: Exit Function
A$ = NLtrim$(A$)
    Do While Len(A$) > 0
     c$ = Left$(A$, 1) 'ANYCHAR HERE
    If AscW(c$) < 256 Then
        Select Case c$
        Case "@"
           If r$ = "" Then
              A$ = Mid$(A$, 2)
              ElseIf Mid$(A$, 2, 1) <> "(" And r$ <> "" Then
            r$ = r$ & "."
              A$ = Mid$(A$, 2)
              Else
                 IsLabelDIM = 0: Exit Function
            End If
        Case "?"
        If r$ = "" Then
        r$ = "?"
        IsLabelDIM = 1
        Exit Function
        End If
        A$ = Mid$(A$, 2)
        Case ":"
            If one Then
  
            Exit Do
           
            ElseIf r$ <> "" Then
            If Mid$(A$, 2) <> "" Then
            If Mid$(A$, 2, 1) <> "\" And Mid$(A$, 2, 2) <> vbCrLf Then
            
                    
            Exit Do
            End If
            End If
            
            If InStr(r$, ":") > 0 Then
                IsLabelDIM = 0
            Exit Function
            Else
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1
            End If
            Else
            IsLabelDIM = 0
            Exit Function
            End If
        Case "."
            
            If one Then
  
            Exit Do
           ElseIf r$ <> "" Then
           
                    r$ = r$ & Left$(A$, 1)
                       A$ = Mid$(A$, 2)
           ''
           ElseIf Not Mid$(A$, 2, 1) Like "[0-9]" Then
            
                       If r$ <> "" Then
                       r$ = r$ & Left$(A$, 1)
                      RR& = 1
                                      
                            Else
                            
                            dot& = dot& + 1
                    
                            End If
                         
                         A$ = Mid$(A$, 2)
                        
                        
            Else
                         If r$ = "" And dot& > 0 Then
                     
                             
                                 r$ = String$(dot& + 1, ".")
                                  A$ = Mid$(A$, 2)
                                 IsLabelDIM = 1
                         Else
                              IsLabelDIM = 0
                        End If
                    
            Exit Function
            End If
        Case "{" To "~", "^"
            Exit Do
        
        Case "\"
           If one Then
            Exit Do
            ElseIf r$ <> "" Or dot& Then
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            Else
              Exit Do
            End If
        Case "0" To "9", "_"  ' old ,"\"
       
           If one Then
            Exit Do
            ElseIf r$ <> "" Then
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
             RR& = 1 'is an identifier or floating point variable
            Else
            If dot& > 0 Then A$ = "." + A$: dot& = 0
            
            Exit Do
            End If
Case Is >= "A"
            If one Then
            Exit Do
            Else
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        Case "&"
        
            If one Then Exit Do
            
            If r$ <> "" Then
            
                RR& = 0
     
              r$ = ""
                Exit Function
            Else
                A$ = Mid$(A$, 2)
                RR& = Abs(IsLabelDIM(bstack, A$, r$))
                skipcase = True
                If RR& < 5 Then
            Dim i As Long
         
                    If GetlocalVar(r$, i) Then
                        A$ = Chr(34) + HERE$ & "." & r$ & Chr(34) + A$
                    ElseIf Left$(r$, 5) = "����." Or Left$(r$, 5) = "THIS." Then
                        If bstack.UseGroupname <> "" Then
                                 c$ = bstack.UseGroupname + Mid$(r$, 6)
                                 
                         Else
                             c$ = StripThis2(HERE$)
                             If c$ <> "" Then c$ = c$ & "." & Mid(r$, 6) Else c$ = HERE$ & "." & r$
                         End If
                    A$ = Chr(34) + c$ + Chr(34) + A$
                    
                  ElseIf InStr(VarName$, Chr(1) + r$ & " ") > 0 Then
                         A$ = Chr(34) + r$ & Chr(34) + A$
                    Else
                    '' r$ = myUcase(r$, gr)
                    
                    If r$ = "THIS" Or r$ = "����" Then
                
                   IsLabelDIM = -100
                   
                   Exit Function
                    Else
                If GetSub(r$ + ")", RR&) Then
                
                                 r$ = "{" + SB(RR&) + "} " + sbgroup(RR&)
                                 
                    RR& = 2
                    Exit Do
                    Else
                    MyErMacro A$, "can't pass reference", "��� ����� �� ���� �������"
                    End If
                    End If
                    End If
                Else
                    If FastSymbol(A$, ")") Then
                           '' r$ = myUcase(r$, gr)
                            RR& = 0
                            If Left$(r$, 5) = "����." Or Left$(r$, 5) = "THIS." Then
                            If InStr(arrname$, Chr$(13) + bstack.UseGroupname & Mid(r$, 6) + " ") > 0 Then
                                    A$ = Chr(34) + bstack.UseGroupname & Mid(r$, 6, Len(r$) - 6) + Chr(34) + A$
                                    Else
                                    RR& = 1
                                    End If
                                ElseIf InStr(arrname$, Chr$(13) + HERE$ & "." & r$ + " ") > 0 Then
  ''                              ElseIf InStr(arrname$, Chr$(13) + HERE$ & "." & myUcase(Mid$(r$, 1, Len(r$))) + " ") > 0 Then
                                    A$ = Chr(34) + HERE$ & "." & Mid$(r$, 1, Len(r$) - 1) + Chr(34) + A$
                                ElseIf InStr(arrname$, Chr(13) + r$ + " ") > 0 Then
                                    A$ = Chr(34) + Mid$(r$, 1, Len(r$) - 1) + Chr(34) + A$
                                Else
                                   RR& = 1
                                End If
                                 If RR& = 1 Then
                                 If bstack.UseGroupname <> "" Then
                                 r$ = bstack.UseGroupname + Mid$(r$, 6)
                                 Else
                                 End If
                                 If GetSub(r$ + ")", RR&) Then
                                                                  r$ = "{" + SB(RR&) + "}" + sbgroup(RR&)
                                 
                    RR& = 2
     
                    Exit Do
                    
                    Else
                    MyErMacro A$, "can't pass reference", "��� ����� �� ���� �������"
                    End If
               
                                 
                                 End If
                                 RR& = 0
                                 r$ = ""
                                Exit Do
                            End If
                    End If
                    
                    r$ = ""
                    RR& = 0
                    Exit Do
            End If
            
        Case "$"
       If one Then Exit Do
            If r$ <> "" Then
            one = True
            RR& = 3 ' is string variable
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            Else
            Exit Do
            End If
        Case "%"
            If one Then Exit Do
            If r$ <> "" Then
            one = True
            RR& = 4 ' is long variable
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            Else
            Exit Do
            End If
        Case "("
            If r$ <> "" Then
                If Mid$(A$, 2, 2) = ")@" Then
                 r$ = r$ & "()."
              A$ = Mid$(A$, 4)
                Else
                Select Case RR&
                Case 1
                RR& = 5 ' float array or function
                Case 3
                RR& = 6 'string array or function
                Case 4
                RR& = 7 ' long array
                Case Else
                Exit Do
                End Select
                r$ = r$ & Left$(A$, 1)
                A$ = Mid$(A$, 2)
               Exit Do
            
            End If
           Else
           Exit Do
            End If
        Case Else
        Exit Do
        End Select
        Else
            If one Then
            Exit Do
            Else
            gr = True
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        End If
    Loop
    If Not skipcase Then r$ = myUcase(r$, gr)
   If dot& Then
                           If r$ <> "" Then
                           If dot& = 1 Then
                           r$ = "THIS." + r$
                           RR& = -RR&
                           Else
                        RR& = bstack.GetDotNew(r$, dot&) * RR&
                        End If
                           Else
                          If dot& > 1 Then r$ = String$(dot&, ".") + r$: If RR& = 0 Then RR& = 1
                          End If
    
    
   End If
    IsLabelDIM = RR&
End Function

Function IsLabelOnly(A$, r$) As Long

Dim RR&, one As Boolean, c$, dot&
r$ = ""
If A$ = "" Then IsLabelOnly = 0: Exit Function
A$ = NLtrim$(A$)
    Do While Len(A$) > 0
     c$ = Left$(A$, 1) 'ANYCHAR HERE
    If AscW(c$) < 256 Then
        Select Case c$
        Case "@"
           If r$ = "" Then
              A$ = Mid$(A$, 2)
              ElseIf Mid$(A$, 2, 1) <> "(" And r$ <> "" Then
            r$ = r$ & "."
              A$ = Mid$(A$, 2)
              Else
                 IsLabelOnly = 0: Exit Function
            End If
        Case "."
            If one Then
            Exit Do
           ElseIf r$ <> "" Then
                    r$ = r$ & Left$(A$, 1)
                       A$ = Mid$(A$, 2)
                    
           ElseIf Not Mid$(A$, 2, 1) Like "[0-9]" Then
            
                       If r$ <> "" Then
                       r$ = r$ & Left$(A$, 1)
                      RR& = 1
                                      
                            Else
                            
                            dot& = dot& + 1
                    
                            End If
                         
                         A$ = Mid$(A$, 2)
                        
                        
            Else
            If r$ = "" And dot& > 0 Then

            r$ = String$(dot& + 1, ".")
            A$ = Mid$(A$, 2)
           IsLabelOnly = 1
            Else
          
            IsLabelOnly = 0
           End If
            Exit Function
            End If
     Case "\", "{" To "~", "^"
Exit Do
        
        Case "0" To "9", "_"
       
           If one Then
            Exit Do
            ElseIf r$ <> "" Then
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
               RR& = 1 'is an identifier or floating point variable
            Else
            If dot& > 0 Then A$ = "." + A$: dot& = 0
            
            Exit Do
            End If
Case Is >= "A"
            If one Then
            Exit Do
            Else
            
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
      Case "&"
            If r$ = "" Then RR& = 2:    A$ = Mid$(A$, 2)
            Exit Do
       Case "$"
       If one Then Exit Do
            If r$ <> "" Then
            one = True
            RR& = 3 ' is string variable
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            Else
            Exit Do
            End If
        Case "%"
            If one Then Exit Do
            If r$ <> "" Then
            one = True
            RR& = 4 ' is long variable
            r$ = r$ & Left$(A$, 1)
        
            A$ = Mid$(A$, 2)
            Else
            Exit Do
            End If
        Case "("
            If r$ <> "" Then
                If Mid$(A$, 2, 2) = ")@" Then
                 r$ = r$ & "()."
              A$ = Mid$(A$, 4)
                Else
                Select Case RR&
                Case 1
                RR& = 5 ' float array or function
                Case 3
                RR& = 6 'string array or function
                Case 4
                RR& = 7 ' long array
                Case Else
                Exit Do
                End Select
                r$ = r$ & Left$(A$, 1)
                A$ = Mid$(A$, 2)
               Exit Do
            
            End If
           Else
           Exit Do
            End If
        Case Else
        Exit Do
        End Select
        Else
            If one Then
            Exit Do
            Else
             r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        End If
    Loop
    IsLabelOnly = RR&
   
End Function
Function IsLabelSYMB(A$, r$) As Boolean
Dim RR&, one As Boolean, c$
r$ = ""
If A$ = "" Then IsLabelSYMB = 0: Exit Function
A$ = NLtrim$(A$)
    Do While Len(A$) > 0
     c$ = myUcase(Left$(A$, 1))
    If AscW(c$) < 256 Then
        Select Case c$
        Case "."
            If one Then
            Exit Do
            ElseIf r$ <> "" Then
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1
            Else
            IsLabelSYMB = 0
            Exit Function
            End If
        Case "A" To "Z", "�" To "�", "�", "�", "�", "�", "�", "�", "�", "�"
            If one Then
            Exit Do
            Else
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        
        Case Else
        Exit Do
        End Select
                Else
            If one Then
            Exit Do
            Else
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        
        End If
    Loop
    
    IsLabelSYMB = RR&
   A$ = LTrim(A$)

End Function
Function IsLabelSYMB2(A$, r$) As Boolean
'without ucase
Dim RR&, one As Boolean, c$
r$ = ""
If A$ = "" Then IsLabelSYMB2 = 0: Exit Function
A$ = NLtrim$(A$)
    Do While Len(A$) > 0
     c$ = Left$(A$, 1)
    If AscW(c$) < 256 Then
        Select Case c$
        Case "."
            If one Then
            Exit Do
            ElseIf r$ <> "" Then
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1
            Else
            IsLabelSYMB2 = 0
            Exit Function
            End If
        Case "A" To "Z", "a" To "z"
            If one Then
            Exit Do
            Else
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        
        Case Else
        Exit Do
        End Select
                Else
            If one Then
            Exit Do
            Else
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        
        End If
    Loop
    IsLabelSYMB2 = RR&
   A$ = LTrim(A$)

End Function
Function IsLabelSYMB3old(A$, r$) As Boolean
A$ = LTrim(A$)
If r$ = "" Then Exit Function
If A$ + " " Like r$ + "*" Then
IsLabelSYMB3old = True
A$ = Mid$(A$, Len(r$) + 1)
End If
End Function
Function IsLabelSYMB3(A$, r$) As Boolean
Dim RR&, c$, LB As Long, mb As Long, LLB As Long
A$ = LTrim(A$)
LLB = Len(A$)
r$ = ""
If LLB = 0 Then IsLabelSYMB3 = 0: Exit Function
mb = 0   'INDICATE LEFT SPACES
LB = 1
    Do While LB <= LLB
     c$ = Mid$(A$, LB, 1)
    If AscW(c$) < 256 Then
        Select Case c$
        Case " ", ChrW(160)
        If LB - mb > 1 Then
        LB = LB - 1
        Exit Do
        Else
        mb = LB
        End If
        Case "."
         If LB > mb Then
            RR& = 1
            Else
            IsLabelSYMB3 = 0
            Exit Function
            End If
        Case "A" To "Z", "a" To "z"
     
            RR& = 1 'is an identifier or floating point variable
        Case Else
        LB = LB - 1
        Exit Do
        End Select
                Else
  
           RR& = 1 'is an identifier or floating point variable
   
        
        End If
        LB = LB + 1
    Loop
    r$ = Mid$(A$, mb + 1, LB - mb)
    IsLabelSYMB3 = RR&
  If LB > 0 Then A$ = Mid$(A$, LB + 1)

End Function
Function IsLabelSYMB33(A$, r$, CHARS As Long) As Boolean
Dim RR&, c$, LB As Long, mb As Long, LLB As Long
''A$ = LTrim(A$)
LLB = Len(A$)
r$ = ""
If LLB = 0 Then IsLabelSYMB33 = 0: Exit Function
mb = 0   'INDICATE LEFT SPACES
LB = 1
    Do While LB <= LLB
     c$ = Mid$(A$, LB, 1)
    If AscW(c$) < 256 Then
        Select Case c$
        Case " ", ChrW(160)
        If LB - mb > 1 Then
        LB = LB - 1
        Exit Do
        Else
        mb = LB
        End If
        Case "."
         If LB > mb Then
            RR& = 1
            Else
            IsLabelSYMB33 = 0
            Exit Function
            End If
        Case "A" To "Z", "a" To "z"
     
            RR& = 1 'is an identifier or floating point variable
        Case Else
        LB = LB - 1
        Exit Do
        End Select
                Else
  
           RR& = 1 'is an identifier or floating point variable
   
        
        End If
        LB = LB + 1
     If LB - mb >= CHARS Then Exit Do
    Loop
    r$ = Mid$(A$, mb + 1, LB - mb)
    IsLabelSYMB33 = RR&
   If RR& <> 0 Then
   CHARS = LB + 1
  
 End If
End Function

Function IsLabelA(where$, A$, r$) As Long
' for left side...no &

Dim RR&, one As Boolean, c$, gr As Boolean
r$ = ""
If A$ = "" Then IsLabelA = 0: Exit Function
A$ = NLtrim$(A$)
    Do While Len(A$) > 0
    c$ = Left$(A$, 1)
    If AscW(c$) < 256 Then
        Select Case c$
        Case "@"
            If Mid$(A$, 2, 1) <> "(" And r$ <> "" Then
              where$ = r$
            r$ = ""
            A$ = Mid$(A$, 2)
            Else
              IsLabelA = 0: Exit Function
            End If
        Case "?"
        If r$ = "" Then
        r$ = "?"
        A$ = Mid$(A$, 2)
        IsLabelA = 1
        Exit Function
        Else
        IsLabelA = 1
        Exit Function
        End If
        Case "."
            If one Then
            Exit Do
            Exit Do
            ElseIf r$ <> "" And Len(A$) > 1 Then
            If Mid$(A$, 2, 2) = ". " Or Mid$(A$, 2, 1) = " " Then Exit Do
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1
            Else
            IsLabelA = 0
            Exit Function
            End If
      Case "&"
            If r$ = "" Then RR& = 2:    A$ = Mid$(A$, 2)
            Exit Do
    Case "\", "{" To "~", "^"
        Exit Do
        
        Case "0" To "9", "_"
           If one Then
            Exit Do
            ElseIf r$ <> "" Then
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            Else
            Exit Do
            End If
        Case Is >= "A"
            If one Then
            Exit Do
            Else
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        Case "$"
            If one Then Exit Do
            If r$ <> "" Then
            one = True
            RR& = 3 ' is string variable
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            Else
            Exit Do
            End If
        Case "%"
            If one Then Exit Do
            If r$ <> "" Then
            one = True
            RR& = 4 ' is long variable
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            Else
            Exit Do
            End If
        Case "("
            If r$ <> "" Then
                            If Mid$(A$, 2, 2) = ")@" Then
                                    r$ = r$ & "()."
                                  
                                 A$ = Mid$(A$, 4)
                               Else
                                       Select Case RR&
                                       Case 1
                                       RR& = 5 ' float array or function
                                       Case 3
                                       RR& = 6 'string array or function
                                       Case 4
                                       RR& = 7 ' long array
                                       Case Else
                                       Exit Do
                                       End Select
                                       r$ = r$ & Left$(A$, 1)
                                       A$ = Mid$(A$, 2)
                                   Exit Do
                            
                          End If
               Else
                        Exit Do
            
            End If
        Case Else
        Exit Do
        End Select
        Else
            If one Then
            Exit Do
            Else
            gr = True
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        End If

    Loop
r$ = myUcase(r$, gr)

    IsLabelA = RR&
   'a$ = LTrim(a$)

End Function

Function IsLabelDot(where$, A$, r$) As Long
' for left side...no &

Dim RR&, one As Boolean, c$, firstdot$, gr As Boolean
r$ = ""
If A$ = "" Then IsLabelDot = 0: Exit Function

A$ = NLtrim$(A$)
    Do While Len(A$) > 0
    c$ = Left$(A$, 1)
    If AscW(c$) < 256 Then
        Select Case c$
        Case "@"
            If Mid$(A$, 2, 1) <> "(" And r$ <> "" Then
              where$ = r$
            r$ = ""
            A$ = Mid$(A$, 2)
            Else
              IsLabelDot = 0: A$ = firstdot$ + A$: Exit Function
            End If
        Case "?"
        If r$ = "" And firstdot$ = "" Then
        r$ = "?"
        A$ = Mid$(A$, 2)
        IsLabelDot = 1
        Exit Function
    
        ElseIf firstdot$ = "" Then
        IsLabelDot = 1
        Exit Function
        Else
        IsLabelDot = 0
        Exit Function
        End If
        Case "."
            If one Then
            Exit Do
            Exit Do
            ElseIf r$ <> "" And Len(A$) > 1 Then
            If Mid$(A$, 2, 2) = ". " Or Mid$(A$, 2, 1) = " " Then Exit Do
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1
            Else
            firstdot$ = firstdot$ + "."
            A$ = Mid$(A$, 2)
            End If
       Case "\", "{" To "~", "^"
        Exit Do

        Case "0" To "9", "_"
           If one Then
            If firstdot$ <> "" Then A$ = firstdot$ + A$
            Exit Do
            ElseIf r$ <> "" Then
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            Else
            Exit Do
            End If
        Case Is >= "A"
            If one Then
            Exit Do
            Else
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        Case "$"
            If one Then Exit Do
            If r$ <> "" Then
            one = True
            RR& = 3 ' is string variable
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            Else
            Exit Do
            End If
        Case "%"
            If one Then Exit Do
            If r$ <> "" Then
            one = True
            RR& = 4 ' is long variable
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            Else
            Exit Do
            End If
        Case "("
            If r$ <> "" Then
                            If Mid$(A$, 2, 2) = ")@" Then
                                    r$ = r$ & "()."
                                  
                                 A$ = Mid$(A$, 4)
                               Else
                                       Select Case RR&
                                       Case 1
                                       RR& = 5 ' float array or function
                                       Case 3
                                       RR& = 6 'string array or function
                                       Case 4
                                       RR& = 7 ' long array
                                       Case Else
                                       Exit Do
                                       End Select
                                       r$ = r$ & Left$(A$, 1)
                                       A$ = Mid$(A$, 2)
                                   Exit Do
                            
                          End If
               Else
                        Exit Do
            
            End If
        Case Else
        Exit Do
        End Select
        Else
            If one Then
            Exit Do
            Else
            gr = True
            r$ = r$ & Left$(A$, 1)
            A$ = Mid$(A$, 2)
            RR& = 1 'is an identifier or floating point variable
            End If
        End If

    Loop
       r$ = firstdot$ + myUcase(r$, gr)
    IsLabelDot = RR&
   'a$ = LTrim(a$)

End Function
Function IsStrExp(basestack As basetask, aa$, RR$) As Boolean
If Left$(aheadstatus(aa$, False), 1) <> "S" Then IsStrExp = False: Exit Function
If LastErNum = -2 Then LastErNum = 0 ': LastErNum1 = 0
Dim ac$, fault As Boolean
' uink$ = "" 'MINK$
fault = False
IsStrExp = False
'' FastSymbol aa$, "+"   '' maybe but not sure if it is ok.
Do While IsString(basestack, aa$, RR$)
fault = False
IsStrExp = True
ac$ = ac$ & RR$
If Not FastSymbol(aa$, "+") Then Exit Do
fault = True
Loop
If fault Then
If LastErNum = -2 Then
Exit Function
Else
aa$ = "+" & aa$
End If
End If
RR$ = ac$
 End Function
Function GrabFrame() As String
Dim p As New cDIBSection
p.CreateFromPicture hDCToPicture(GetDC(0), (AVI.Left + Form1.Left) / DXP, (AVI.top + Form1.top) / DYP, AVI.Width / DXP, AVI.Height / DYP)
If p.Height > 0 Then

GrabFrame = DIBtoSTR(p)
End If
End Function

Function IsString(bstackstr As basetask, A$, r$) As Boolean
Dim nBstack As basetask
Dim p As Double, PP As Double, pppp As mArray, ms As mStiva
Dim q$, w As Long, w1&, w2 As Long, s$, par As Boolean
Dim q1$, q2$, W3 As Long, dn As Long, dd As Long, bs As basetask
Set bstackstr.LastObj = Nothing
If IsSymbol3(A$, "{") Then
     r$ = blockString(A$)
     IsString = FastSymbol(A$, "}")
     Exit Function
End If
r$ = ""
w2 = Len(A$)
w1& = IsLabelBig(bstackstr, A$, q$, par)
''''''''If NoOptimum Then If w1& > 0 Then par = False
If w1& <= 0 Or par Then
If w1& = 0 Then GoTo contstr
If w1& = -100 Then
    w1& = 0
    r$ = "deleteme"
      If bstackstr.GetDotNew(r$, 1) Then
      If r$ = "THIS.deleteme" Then
      r$ = Left$(bstackstr.UseGroupname, Len(bstackstr.UseGroupname) - 1)
       ElseIf bstackstr.UseGroupname <> "" Then
           If Len(r$) = 8 Then IsString = False: Exit Function
           r$ = Left$(r$, Len(r$) - 9)
           If InStr(r$, ".") = 0 Then
            If HERE$ <> "" Then r$ = HERE$ + "." + r$
           End If
           
       Else
       If Len(r$) = 8 Then
       Set bs = bstackstr.Parent
       Do While Not (bs Is Nothing)
        If bs.GetDotNew(r$, 1) Then
                     If Len(r$) = 8 Then
                     Set bs = bs.Parent
                     Else
                     r$ = HERE$ + "." + Left$(r$, Len(r$) - 9)
                     Set bs = Nothing
                     Exit Do
                     End If
Else
r$ = ""
Exit Do
        End If
       Loop
       Else
  r$ = HERE$ + "." + Left$(r$, Len(r$) - 9)
  End If
  End If
           IsString = True
  
        Exit Function
    ElseIf bstackstr.UseGroupname <> "" Then
        r$ = Left$(bstackstr.UseGroupname, Len(bstackstr.UseGroupname) - 1)
         IsString = True
         Exit Function

    End If
    r$ = ""
End If
w1& = Abs(w1&)
Select Case w1&
Case 2
r$ = q$
IsString = True
Exit Function
Case 3
GoTo itisavar
Case 5
GoTo rvalObjectstring
Case 6
GoTo itisarrayorfunction
Case Else
         IsString = False
        Exit Function

End Select
End If
Select Case w1&
Case 5
            ' check again
rvalObjectstring:
            If Left$(aheadstatus(q$ + Split(A$, Chr$(13))(0), False), 1) = "S" Then

            If neoGetArray(bstackstr, q$, pppp) Then
                If NeoGetArrayItem(pppp, bstackstr, q$, w, A$) Then
                        If Typename(pppp.item(w)) = "Group" Then
                        IsString = SpeedGroup(bstackstr, pppp, "VAL$", q$, A$, w) = 1
                        r$ = bstackstr.LastValue
                        Exit Function
                        End If
                End If
                End If
            Else
                     IsString = False
                    Exit Function
            
            End If
    Case 3
    IsString = False
    Select Case q$
    Case "ABOUT$", "����$"
            r$ = feedback$
            feedback$ = ""
             IsString = True
                              Exit Function
    Case "CONTROL$"
                  On Error Resume Next
                  If Screen.ActiveForm Is Nothing Then
                  r$ = ""
                  Else
                  Select Case Screen.ActiveForm.name
                  Case "AVI"
                  r$ = "AVI"
                  Case "Form1"
                    r$ = "Main"
                  Case "Form4"
                  r$ = "Help"
                  Case Else
                  r$ = ""
                  End Select
                  End If
                      IsString = True
                              Exit Function
     Case "�����$"
                  On Error Resume Next
                  If Screen.ActiveForm Is Nothing Then
                  r$ = ""
                  Else
                  Select Case Screen.ActiveForm.name
                  Case "AVI"
                  r$ = "������"
                  Case "Form1"
                    r$ = "�����"
                  Case "Form4"
                  r$ = "�������"
                  Case Else
                  r$ = ""
                  End Select
                  End If
                 IsString = True
                              Exit Function
                           
    Case "THREADS$"
                               r$ = bstackstr.Parent.ThreadsStr(1)
                               IsString = True
                              Exit Function
  Case "������$"
                               r$ = bstackstr.Parent.ThreadsStr
                               IsString = True
                              Exit Function
    Case "LAN$", "������$"
    r$ = getIP
      IsString = True
     Exit Function
    Case "GRABFRAME$", "��������$"
                              If AVIUP Then
                              If MediaPlayer1.MovieHeight > 0 Then
                              r$ = GrabFrame
                              End If
                              End If
                             IsString = True
                            Exit Function
    Case "��������$", "TEMPNAME$"
                             r$ = GetTempFileName
                            IsString = True
                            Exit Function
    Case "TEMPORARY$", "���������$"  ' �Ѹ���� ��� ����� �� ���������$
                            r$ = strTemp  '����� ����� � �������
                            IsString = True
                            Exit Function
    Case "USER.NAME$", "�����.������$"
                             r$ = Originalusername
                            IsString = True
                            Exit Function
    Case "COMPUTER$", "�����������$"
                             r$ = strMachineName
                            IsString = True
                            Exit Function
    Case "CLIPBOARD$", "��������$"
                            r$ = GetTextData(CF_UNICODETEXT)
                            If r$ = "" Then r$ = Clipboard.GetText
                            IsString = True
                            Exit Function
    Case "CLIPBOARD.IMAGE$", "��������.������$"
                        r$ = GetImage()
                         IsString = True
                         Exit Function

    Case "����������$", "PARAMETERS$"
                        r$ = para$
                        IsString = True
                        Exit Function
    Case "OS$", "��$"
                        r$ = os
                        IsString = True
                        Exit Function
    Case "������$", "COMMAND$"
                        r$ = LASTPROG$
                    IsString = True
                    Exit Function
    Case "�����$"
                     r$ = LastErNameGR
                      LastErNum1 = 0
                        LastErNameGR = ""
                     LastErName = ""
                    IsString = True
                    Exit Function
    Case "ERROR$"
                     r$ = LastErName
                      LastErNum1 = 0
                     LastErNameGR = ""
                     LastErName = ""
                    IsString = True
                    Exit Function
    Case "MODULE$", "�����$"
                    r$ = HERE$ ''''''''''''' �������� ��� Here$ (������� ��������)
                                '''''''''''' ����� ������ � ���� �� ��� ����� ���� ��� ����������
                                '''''''''''' �� �������� ����� ����, ���� �� ������� ����� �� �����
                                '''''''''''' ��� ������ �� ����� ��� ������ �������.
                                '''''''''''' ������ �� ������� �������� �� �� ����� ������� �����
                                '''''''''''' �� ����� ������ ����� "���� �����"
                    IsString = True
                    Exit Function
    Case "PRINTERNAME$", "���������$"  ' ��� ������ ���� ��� � �����
                    r$ = pname & " (" & port & ")"
                    IsString = True
                    Exit Function
    Case "PROPERTIES$", "���������$"
                If ThereIsAPrinter Then
                If UBound(MyDM) = 1 Then
                    PrinterDim pw, ph, psw, psh, pwox, phoy
                End If
                r$ = ARRAYtoStr(MyDM())
                Else
                r$ = ""
                End If
                    IsString = True
                    Exit Function
    Case "MOVIE.STATUS$", "���������.�������$"
                   r$ = MediaPlayer1.getStatus
                IsString = True
                Exit Function
    Case "MOVIE.DEVICE$", "�������.��������$"
                   r$ = MediaPlayer1.getDeviceName
                IsString = True
                Exit Function
    Case "MOVIE.ERROR$", "�����.�������$"
                   r$ = MediaPlayer1.checkError
                IsString = True
                Exit Function
    Case "PLATFORM$", "���������$"
                r$ = platform
                IsString = True
                Exit Function

    Case "FONTNAME$", "�������������$"
    With bstackstr
                 If .tolayer > 0 Then
                 r$ = Form1.dSprite(.tolayer).Font.name
                 ElseIf .toback Then
                 r$ = Form1.Font.name
                 ElseIf .toprinter Then
                 r$ = Form1.PrinterDocument1.Font.name
                 Else
                r$ = Form1.DIS.Font.name
                End If
                End With
                 IsString = True
                 Exit Function
    Case "BROWSER$", "��������$"
                r$ = Form1.view1.LocationURL
                IsString = True
                Exit Function

    Case "SPRITE$", "���������$"
                r$ = BACKSPRITE
                BACKSPRITE = ""
                IsString = True
                Exit Function
    Case "APPDIR$", "��������.���$"
                r$ = GetLongName(App.path)
                If Right(r$, 1) <> "\" Then r$ = r$ + "\"
                IsString = True
                Exit Function
    Case "DIR$", "���$"
    
                r$ = UserPath
    
                IsString = True
                Exit Function
    Case "KEY$", "���$"
                ' this is because i do a pretty new functionality...form1 can minimized..without own titlebar or controls.

                    If Not Form1.Visible Then Form1.Visible = True: MyDoEvents
                  ''  If Not bstackstr.toprinter Then bstackstr.Owner.refresh
                ' so if we need a keystroke to read then we go ton non minimized status.
                r$ = UINKEY$  ' look if we have some keys here
                If r$ = "" Or r$ = Chr(0) + Chr(0) Then
                Do
               ProcTask2 bstackstr

           
                       If uintnew(timeGetTime) > k1 Then RRCOUNTER = 0
            
                If RRCOUNTER = 0 Then
                    k1 = uintnew(timeGetTime + REFRESHRATE): RRCOUNTER = 1
                 If bstackstr.Owner.Visible Then bstackstr.Owner.refresh
                  End If
                r$ = INKEY$  ' (inkey$ has autorepeat...)
                Loop Until r$ <> ""
                UINK$ = UINK$ & r$   ' so we send it there
                End If
                IsString = True
                Exit Function
    Case "INKEY$", "�����$"
     If Not releasemouse Then
If Not Form1.Visible Then Form1.Visible = True
 MyDoEvents2 bstackstr.Owner
Else

           If uintnew(timeGetTime) > k1 Then RRCOUNTER = 0
            
                If RRCOUNTER = 0 Then
                    k1 = uintnew(timeGetTime + REFRESHRATE): RRCOUNTER = 1
                 If bstackstr.Owner.Visible Then bstackstr.Owner.refresh
                  End If
                If Not bstackstr.IamThread Then MyDoEvents
End If
                r$ = UINKEY$

                If r$ = "" Then
           '     Sleep 10
              ''MyDoEvents
          
                    r$ = INKEY$
                     If r$ = "" Then
                     UINK$ = UINK$ & Chr(0) + Chr(0)
                     Else
                     UINK$ = UINK$ & r$
                     End If
                ElseIf r$ = Chr(0) + Chr(0) Then
                r$ = ""
                End If
                IsString = True
                Exit Function
    Case "LETTER$", "������$"
                If bstackstr.soros.Total = 0 Then
                ElseIf bstackstr.soros.PopType = "S" Then
                r$ = bstackstr.soros.PopStr
                IsString = True
                Exit Function
                End If
    Case Else
itisavar:
                If GetVar(bstackstr, q$, w) Then
                r$ = var(w)
                IsString = True
                
                Else
                     IsString = False
                     ' MAKE LENGTH EQUAL...
                     If w2 >= Len(A$) Then A$ = q$ + A$
                    
                             If FindNameForGroup(bstackstr, q$) Then
                             MyErMacro A$, "Unknown property  " & q$, "������� �������� " & q$
                             Else
                                MyErMacro A$, "Unknown variable " & q$, "������� ��������� " & q$
                            
                            End If
                    End If
                
                Exit Function
    End Select
                A$ = q$ & A$
                               
    Exit Function
    
Case 6
    IsString = False
    Select Case q$
Case "FORMAT$(", "�����$("
    r$ = enthesi(bstackstr, A$)
    IsString = FastSymbol(A$, ")", True)
    Exit Function
Case "EVAL$(", "����$(", "�������$("
If IsStrExp(bstackstr, A$, q$) Then
If FastSymbol(A$, ".") Then
If MaybeIsSymbol(A$, ")") Then
A$ = q$ + A$
Else
    A$ = q$ + "." + A$
    End If
   If Not IsStrExp(bstackstr, A$, r$) Then
      IsString = False: Exit Function
    End If
    
    Else
    r$ = q$
End If

Else
r$ = ""
End If
    IsString = FastSymbol(A$, ")", True)
    Exit Function
Case "STACKTYPE$(", "����������$("
If IsExp(bstackstr, A$, p) Then
W3 = Abs(CLng(p))
backitem1:
    If bstackstr.soros.Total < W3 Then
 
            MyErMacro A$, "Stack item not found at position " & CStr(W3), "��� ������� �������� ����� ��� ���� " & CStr(W3)
  
        IsString = False: Exit Function

    ElseIf bstackstr.soros.StackItemType(W3) = "*" Then
    Set bstackstr.LastObj = bstackstr.soros.StackItem(W3)
    r$ = Typename$(bstackstr.LastObj)
    Set bstackstr.LastObj = Nothing
    IsString = FastSymbol(A$, ")", True)
    ElseIf bstackstr.soros.StackItemType(W3) = "?" Then
    r$ = "(?)"
    ElseIf bstackstr.soros.StackItemType(W3) = "S" Then
    s$ = CStr(bstackstr.soros.StackItem(W3))
    r$ = ""
    Select Case Abs(IsLabel(bstackstr, s$, q2$))
    Case 1, 3, 4
    If GetGlobalVar(s$, w2) Then r$ = "ReferVar"
    Case 5, 6, 7
    If CopyArrayItemsNoFormated(s$) <> "" Then r$ = "ReferArray"
    End Select
    If r$ = "" Then r$ = "String"
            IsString = FastSymbol(A$, ")", True)
    ElseIf bstackstr.soros.StackItemType(W3) = "N" Then
    
    r$ = "Number"
        IsString = FastSymbol(A$, ")", True)
    Else
            MyErMacro A$, "Stack item isn't known object at position " & CStr(W3), "To �������� ��� ����� ��� ����� ������ ����������� ��� ���� " & CStr(W3)
  
    IsString = False
    End If
    Exit Function
Else
W3 = 1
GoTo backitem1
End If

Case "STACKITEM$(", "���������$("
If IsExp(bstackstr, A$, p) Then
W3 = Abs(CLng(p))
backitem2:
    If bstackstr.soros.Total < W3 Then
 
            MyErMacro A$, "Stack item not found at position " & CStr(W3), "��� ������� ���� ����� ��� ���� " & CStr(W3)
  
        IsString = False: Exit Function

    ElseIf bstackstr.soros.StackItemType(W3) = "S" Then
    r$ = bstackstr.soros.StackItem(W3)
    IsString = FastSymbol(A$, ")", True)
    Exit Function
    Else
            MyErMacro A$, "Stack item isn't string at position " & CStr(W3), "� ���� ��� ����� ��� ����� ������ ��� ���� " & CStr(W3)
  
    IsString = False
    End If
    Exit Function
Else
W3 = 1
GoTo backitem2
End If
Case "�����$(", "WEAK$("
                r$ = Funcweak(bstackstr, A$)

                 IsString = FastSymbol(A$, ")") And r$ <> ""
             
                Exit Function
Case "�����$(", "SPEECH$("
           If IsExp(bstackstr, A$, p) Then
                       
                        r$ = VoiceName(p)
                       
                        End If
                        IsString = FastSymbol(A$, ")")
             
                Exit Function
Case "ASK$(", "����$("
If IsStrExp(bstackstr, A$, AskText$) Then
If UCase(q$) = "ASK$(" Then
DialogSetupLang 1
Else
DialogSetupLang 0
End If
If AskText$ = "" Then ZeroParam A$: IsString = False: Exit Function
If FastSymbol(A$, ",") Then IsStrExp bstackstr, A$, AskTitle$
If FastSymbol(A$, ",") Then IsStrExp bstackstr, A$, AskOk$
If FastSymbol(A$, ",") Then IsStrExp bstackstr, A$, AskCancel$
If FastSymbol(A$, ",") Then IsStrExp bstackstr, A$, AskDIB$
If FastSymbol(A$, ",") Then IsStrExp bstackstr, A$, AskStrInput$: AskInput = True

olamazi

If Form3.NeoASK(bstackstr) Then
r$ = AskResponse$
Else
r$ = AskResponse$
End If
AskInput = False
    IsString = FastSymbol(A$, ")", True)
End If
Exit Function
    Case "LOCALE$(", "������$("
         If IsExp(bstackstr, A$, p) Then

    r$ = GetlocaleString(CLng(p))
     IsString = FastSymbol(A$, ")")
       End If
       
        Exit Function
 
    Case "SHORTDIR$(", "������.���������$("
         If IsStrExp(bstackstr, A$, q$) Then
      

    r$ = GetDosPath(q$)
     IsString = FastSymbol(A$, ")")
       End If
       
        Exit Function
 
     Case "FILTER$(", "������$("
     If IsStrExp(bstackstr, A$, q$) Then
       If FastSymbol(A$, ",") And IsStrExp(bstackstr, A$, q1$) Then
       
     IsString = True
    r$ = CleanStr(q$, q1$)
    
       End If
    End If
    If Not FastSymbol(A$, ")") Then IsString = False
    Exit Function
        Case "�����$(", "SPEECH$("
           If IsExp(bstackstr, A$, p) Then
                       
                        r$ = VoiceName(p)
                       
                        End If
                        IsString = FastSymbol(A$, ")")
             
                Exit Function
   
    
     Case "������$(", "FILE$("
     If Left$(UCase(q$), 1) = "F" Then
DialogSetupLang 1

Else
DialogSetupLang 0

End If
        If IsStrExp(bstackstr, A$, r$) Then
                       If IsSelectorInUse Then
 IsString = False
MyErMacro A$, "File/Folder Selector in Use", "� ��������� �������/������� ����� �� �����"
Exit Function
End If

If r$ = "" Then
r$ = LoadFileCaption
End If
If FastSymbol(A$, ",") Then
If IsStrExp(bstackstr, A$, q1$) Then
' ok
Else
 IsString = False
MissParam A$
Exit Function
End If
Else
q1$ = "GSB"
End If
                        r$ = mylcasefILE(GetFile(bstackstr, r$, mcd, q1$))
                       Else
                       
                        r$ = mylcasefILE(GetFile(bstackstr, r$, mcd, "GSB"))
                        End If
                        IsString = FastSymbol(A$, ")")
             
                Exit Function
Case "PARAM$(", "�����$("
q1$ = ""
If IsStrExp(bstackstr, A$, q2$) Then

Do
w1 = Len(q2$)
      If IsNumberD2(q2$, p) Then
      If q1$ = "" Then Exit Do Else q1$ = q1$ + "," + CStr(p)
      
      Else
             ISSTRINGA q2$, s$
        If q1$ = "" Then
                r$ = s$
        q1$ = ","
        Else
        q1$ = q1$ + ",{" + s$ + "}"
        End If
    End If
    FastSymbol q2$, ","
Loop Until Trim$(q2$) = "" Or w1 = Len(q2$)
End If
    IsString = FastSymbol(A$, ")", True)
    A$ = Mid$(q1$, 2) + A$
    Exit Function
Case "LAZY$(", "���$("
   If MaybeIsSymbol(A$, "&") Then
            If IsStrExp(bstackstr, A$, q2$) Then
                    FastSymbol q2$, "{"
                    r$ = block$(q2$)
               
            Else
                    IsString = False
                    ' missing function
                    Exit Function
            End If
            If Left$(r$, 10) = "'11001EDIT" Then
                s$ = GetNextLine(r$) + vbCrLf
            Else
                s$ = ""
            End If
    Else
         w = 1
         q1$ = aheadstatus(A$, , w)
         If w > 0 Then q2$ = Left$(A$, w - 1) Else q2$ = "0"
         A$ = Mid$(A$, w)
         While FastSymbol(A$, ",")
            w = 1
            q1$ = aheadstatus(A$, , w)
            If w > 0 Then q2$ = q2$ + "," + Left$(A$, w - 1) Else q2$ = q2$ + ",0"
            A$ = Mid$(A$, w)
         Wend
         r$ = "=" + q2$: q2$ = "}" + bstackstr.UseGroupname
         s$ = ""
   End If
 
If Trim$(r$ + q2$) <> "" Then
   ' r$ = "{����� " + Chr(34) + HERE$ & Chr(34) + vbCrLf + r$ + q2$
   If q$ = "���$(" Then
   If HERE$ = "" Then
    r$ = "{" + s$ + "����� {}" + vbCrLf + r$ + q2$
   Else
    r$ = "{" + s$ + "����� " + HERE$ + vbCrLf + r$ + q2$
    End If
    Else
    If HERE$ = "" Then
    r$ = "{" + s$ + "MODULE {}" + vbCrLf + r$ + q2$
   Else
    r$ = "{" + s$ + "MODULE " + HERE$ + vbCrLf + r$ + q2$
    End If
    End If
    Else
    r$ = "{}"
    End If
     IsString = FastSymbol(A$, ")")
       
       
        Exit Function
    Case "INPUT$(", "��������$("
      IsSymbol3 A$, "#"  ' drop it
    If IsExp(bstackstr, A$, p) Then
    p = Abs(p) Mod 512
    PP = FLEN(p)
    If Uni(p) And PP = 1 Then PP = 2
    
    If FastSymbol(A$, ",") Then
    If Not IsExp(bstackstr, A$, PP) Then
    MyErMacro A$, "missing parameter for length in chars", "������ ��������� ��� ����� �� ����������"
    IsString = False: Exit Function
    End If
    End If
    r$ = Space$(PP)
    On Error Resume Next
    If Uni(p) Then
    getUniString CLng(p), r$
    Else
    Get #p, , r$   ' reading aS ansi
    End If
    End If
    If Err.Number = 0 Then
    IsString = FastSymbol(A$, ")")
    End If
     Exit Function
    Case "MEMBER.TYPE$(", "������.�����$("
     If Abs(IsLabel(bstackstr, A$, s$)) = 1 Then
            If GetVar(bstackstr, s$, w1) Then
                If Typename(var(w1)) = "Group" Then
                If FastSymbol(A$, ",") Then
                If IsExp(bstackstr, A$, p) Then
                Set ms = var(w1).PrepareSoros(var())
                If p < 1 Or p > ms.Total Then
                OutOfLimit
                Exit Function
                
                End If
                s$ = ms.StackItem(CLng(p))
                If Left$(s$, 1) = "*" Then s$ = Mid$(s$, 2)
                q1$ = Split(s$)(1)
                s$ = Split(s$)(0)
                If Right$(s$, 2) = "()" Then
                    
                    If InStr(arrname$, Left$(s$, Len(s$) - 1)) > 0 Then
                        If Right$(s$, 3) = "$()" Then
                            r$ = "Array String"
                        ElseIf Right$(s$, 3) = "%()" Then
                            r$ = "Array Integer"
                        Else
                             r$ = "Array Double"
                            
                        End If
                    End If
                Else
                W3 = Val(q1$)
                
                    r$ = Typename(var(W3))
                        If r$ = "VarItemObject" Then
                     r$ = var(W3).Typename
                     End If
                    End If
                Else
                MissNumExpr
                Exit Function
                End If
                Else
                MissNumExpr
                Exit Function
                End If
                Else

                MissingGroup
                Exit Function
                End If
 
                IsString = FastSymbol(A$, ")", True)
                Exit Function
            Else
        
            Nosuchvariable s$
            End If
        Else
         MissingGroup
       End If
       Exit Function
    Case "MEMBER$(", "�����$("
     If Abs(IsLabel(bstackstr, A$, s$)) = 1 Then
            If GetVar(bstackstr, s$, w1) Then
                  If Typename(var(w1)) = "Group" Then
                If FastSymbol(A$, ",") Then
                If IsExp(bstackstr, A$, p) Then
                Set ms = var(w1).PrepareSoros(var())
                If p < 1 Or p > ms.Total Then
                OutOfLimit
                Exit Function
                
                End If
                 s$ = ms.StackItem(CLng(p))
                If Left$(s$, 1) = "*" Then s$ = Mid$(s$, 2)
                         r$ = Split(s$)(0)
                   
                Else
                MissNumExpr
                Exit Function
                End If
                Else
                MissNumExpr
                Exit Function
                End If
                Else

                MissingGroup
                Exit Function
                End If
 
                IsString = FastSymbol(A$, ")", True)
                Exit Function
            Else
        
            Nosuchvariable s$
            End If
        Else
         MissingGroup
       End If
       Exit Function
    
    
     Case "PIPENAME$(", "�����$("
                If IsStrExp(bstackstr, A$, r$) Then
                        r$ = validpipename(r$)
                        IsString = True
                ElseIf IsExp(bstackstr, A$, p) Then  ' ����� ��� p, ��� ��� �������� �� �������� �������
                                                    ' ������� �� ������� ����������� ���� ��� �������!
                                                    '
                        r$ = validpipename("M" & Trim$(Str$(p)))
                        IsString = True
                End If
                If Not FastSymbol(A$, ")") Then IsString = False
                Exit Function
    Case "FILE.TYPE$(", "�����.�������$("
                If IsStrExp(bstackstr, A$, r$) Then
                        r$ = ExtractType(r$)
                        IsString = True
                        If Not FastSymbol(A$, ")") Then IsString = False
                        Exit Function
                End If
                Exit Function
       Case "FILE.NAME.ONLY$(", "�����.�������.����$("
                If IsStrExp(bstackstr, A$, r$) Then
                        r$ = ExtractNameOnly(r$)
                        IsString = True
                        If Not FastSymbol(A$, ")") Then IsString = False
                        Exit Function
                End If
                Exit Function
       Case "FILE.NAME$(", "�����.�������$("
                If IsStrExp(bstackstr, A$, r$) Then
                        r$ = ExtractName(r$)
                        IsString = True
                        If Not FastSymbol(A$, ")") Then IsString = False
                        Exit Function
                End If
                Exit Function
    Case "FILE.PATH$(", "�����.�������$("
                If IsStrExp(bstackstr, A$, r$) Then
                        r$ = ExtractPath(r$)  ' ����� ����� �� ������� �� �������!
                        IsString = True
                        If Not FastSymbol(A$, ")") Then IsString = False
                        Exit Function
                End If
                Exit Function
    Case "������$("
                If IsStrExp(bstackstr, A$, r$) Then
                        r$ = DriveType(Left$(r$, 3))  'greek response
                        IsString = True
                        If Not FastSymbol(A$, ")") Then IsString = False
                        Exit Function
                End If
                Exit Function
    Case "DRIVE$("
                If IsStrExp(bstackstr, A$, r$) Then
                        r$ = DriveTypee(Left$(r$, 3))
                        IsString = True
                        If Not FastSymbol(A$, ")") Then IsString = False
                        Exit Function
                End If
                Exit Function
    Case "������.�������$(", "FILE.TITLE$("
                If IsStrExp(bstackstr, A$, r$) Then
                        If r$ <> "" Then r$ = FileNameType(r$)
                        IsString = True
                        If Not FastSymbol(A$, ")") Then IsString = False
                        Exit Function
                End If
    Case "��������.�������$(", "FILE.APP$("
                If IsStrExp(bstackstr, A$, r$) Then
                        If r$ <> "" Then r$ = myRegister(r$)
                        IsString = True
                        If Not FastSymbol(A$, ")") Then IsString = False
                        Exit Function
                End If
    Case "HIDE$(", "�����$("
                If IsStrExp(bstackstr, A$, r$) Then
                    If FastSymbol(A$, ",") Then
                        If IsStrExp(bstackstr, A$, q$) Then
                            If FastSymbol(A$, ",") Then
                                If IsExp(bstackstr, A$, p) Then
                                    r$ = mycoder.encryptline(r$, q$, CLng(p))
                                    IsString = True
                                    If Not FastSymbol(A$, ")") Then IsString = False
                                    Exit Function
                                End If
                            End If
                        End If
                    End If
                End If
                Exit Function
    Case "LEFTPART$(", "�������������$("
     IsString = False
    If IsStrExp(bstackstr, A$, s$) Then
    If FastSymbol(A$, ",") Then
    If IsStrExp(bstackstr, A$, q$) Then
    r$ = GetStrUntil(q$, s$)
   
    IsString = FastSymbol(A$, ")")
    ElseIf IsExp(bstackstr, A$, p) Then
    r$ = GetStrUntil(ChrW$(Abs(p) And &HFFFF&), s$)
    IsString = FastSymbol(A$, ")")
    
    End If
    End If
    End If

    Exit Function
        Case "RIGHTPART$(", "���������$("
     IsString = False
    If IsStrExp(bstackstr, A$, s$) Then
    If FastSymbol(A$, ",") Then
    If IsStrExp(bstackstr, A$, q$) Then
    DropLeft q$, s$
    r$ = s$
        IsString = FastSymbol(A$, ")")
    ElseIf IsExp(bstackstr, A$, p) Then
    DropLeft ChrW$(Abs(p) And &HFFFF&), s$
    r$ = s$
        IsString = FastSymbol(A$, ")")
    
    End If
    End If
    End If

    Exit Function
    Case "ARRAY$(", "�������$("
    
    If IsStrExp(bstackstr, A$, s$) Then
       If FastSymbol(A$, ",") Then
                            w = InStr("!" & s$, "(")
                        If w > 0 And w <= Len(s$) Then
                        s$ = Left$(s$, w - 2)
                        End If
                        If Right$("!" & s$, 1) = "$" Then
                        
                        Else
                        
                        s$ = s$ & "$"
                        End If
                     s$ = s$ + "("
                        If neoGetArray(bstackstr, s$, pppp) Then
                             IsString = NeoGetArrayItem(pppp, bstackstr, s$, w, A$)
                     
                         r$ = pppp.item(w)
                         Else
                         MyErMacro A$, "Can't find array " & s$, "��� ������ ������ " & s$
                         End If
                             Else
            IsString = False
            End If
            Else
            IsString = False
    End If
    Exit Function
    Case "TYPE$(", "�����$("
    w1 = Abs(IsLabel(bstackstr, A$, s$))
    If w1 > 4 Then
    If neoGetArray(bstackstr, s$, pppp) Then
                    If Not NeoGetArrayItem(pppp, bstackstr, s$, w2, A$) Then Exit Function
                    r$ = Typename(pppp.item(w2))
                        If r$ = "VarItemObject" Then
                     r$ = pppp.item(w2).Typename
                     End If
                    IsString = FastSymbol(A$, ")")
    Else
    Nosuchvariable s$
    End If
    ElseIf w1 > 0 Then
    If GetVar(bstackstr, s$, w1) Then
                    r$ = Typename(var(w1))
                        If r$ = "VarItemObject" Then
                     r$ = var(w1).Typename
                     End If
                    IsString = FastSymbol(A$, ")")
                    
    Else
    Nosuchvariable s$
    End If
    Else
    SyntaxError
    End If
    Exit Function
    Case "PARAGRAPH$(", "����������$("
 
        w1 = Abs(IsLabel(bstackstr, A$, s$))
        If w1 = 3 Then
            If GetVar(bstackstr, s$, w1) Then
                    ' GET PARAGRAPH ORDER NUMBER
                    If Not FastSymbol(A$, ",") Then
                        MissParam A$
                        Exit Function
                    End If
                    If FastSymbol(A$, "(") Then
                    
                    W3 = Abs(IsLabel(bstackstr, A$, s$))
                    If W3 = 1 Or W3 = 4 Then
                    If Not GetVar(bstackstr, s$, W3) Then Nosuchvariable s$: Exit Function
                    If Not FastSymbol(A$, ")") Then SyntaxError: Exit Function
                    dd = 1
                    Else
                    MissingnumVar
                     Exit Function
                    End If
                    ElseIf Not IsExp(bstackstr, A$, p) Then
                      MissNumExpr
                      Exit Function
                    End If
                        If Typename(var(w1)) = doc Then
                        r$ = var(w1).TextParagraphOrder(CLng(p))
                        If FastSymbol(A$, ",") Then
                            If Not IsExp(bstackstr, A$, PP) Then MissNumExpr: Exit Function
                            If PP < 0 Then
                                If dd = 1 Then
                                        dd = var(W3)
                                        p = dd
                                             If var(w1).InvalidPara(CLng(p)) Then
                                        MissingDocRef
                                        Exit Function
                                        End If
                                         If var(w1).BackMove Then
                                        var(W3) = var(w1).BackStep(dd)
                                        Else
                                        var(W3) = var(w1).Advance(dd)
                                        End If
                                 
                                        
                                        r$ = var(w1).RemoveDocParaIndex(CLng(p))
                                Else
                                        r$ = var(w1).TextParagraphOrderRemove(CLng(p))
                                End If
                            Else
                                 If dd = 1 Then
                                    dd = var(W3)
                                            p = dd
                                      If var(w1).InvalidPara(dd) Then
                                        MissingDocRef
                                        Exit Function
                                        End If
                                            If var(w1).BackMove Then
                                            var(W3) = var(w1).BackStep(dd)
                                            Else
                                            var(W3) = var(w1).Advance(dd)
                                            End If
                                            
                                                r$ = Mid$(var(w1).TextParagraph(CLng(p)), CLng(PP))
                                    Else
                                
                                r$ = Mid$(var(w1).TextParagraphOrder(CLng(p)), CLng(PP))
                                End If
                            End If
                        Else
                                        If dd = 1 Then
                                    dd = var(W3)
                                            p = dd
                                               If var(w1).InvalidPara(dd) Then
                                        MissingDocRef
                                        Exit Function
                                        End If
                                            If var(w1).BackMove Then
                                            var(W3) = var(w1).BackStep(dd)
                                            Else
                                            var(W3) = var(w1).Advance(dd)
                                            End If
                                                r$ = var(w1).TextParagraph(CLng(p))
                                    Else
                        
                        r$ = var(w1).TextParagraphOrder(CLng(p))
                        End If
                        End If
                        Else
                            MissingDoc
                            Exit Function
                        End If
                    
                    IsString = FastSymbol(A$, ")", True)
            Else
                    
                    MissFuncParameterStringVarMacro A$
                    Exit Function
            End If
        ElseIf w1 = 6 Then
            If neoGetArray(bstackstr, s$, pppp) Then
                    If Not NeoGetArrayItem(pppp, bstackstr, s$, w2, A$) Then Exit Function
                    If Not FastSymbol(A$, ",") Then
                    MissParam A$
                    Exit Function
                    End If
                    
                    If FastSymbol(A$, "(") Then
                    
                    W3 = Abs(IsLabel(bstackstr, A$, s$))
                    If W3 = 1 Or W3 = 4 Then
                    If Not GetVar(bstackstr, s$, W3) Then Nosuchvariable s$: Exit Function
                     If Not FastSymbol(A$, ")") Then SyntaxError: Exit Function
                    dd = 1
                    Else
                    MissingnumVar
                     Exit Function
                    End If
                    ElseIf Not IsExp(bstackstr, A$, p) Then
                      MissNumExpr
                      Exit Function
                    End If
                        If Typename(pppp.item(w2)) = doc Then
                         If FastSymbol(A$, ",") Then
                            If Not IsExp(bstackstr, A$, PP) Then MissNumExpr: Exit Function
                                If PP < 0 Then
                                        If dd = 1 Then
                                                dd = var(W3)
                                                p = dd
                                                   If pppp.item(w2).InvalidPara(dd) Then
                                                    MissingDocRef
                                                    Exit Function
                                                    End If
                                                If pppp.item(w2).BackMove Then
                                                var(W3) = pppp.item(w2).BackStep(dd)
                                                Else
                                                var(W3) = pppp.item(w2).Advance(dd)
                                                End If
                                                r$ = pppp.item(w2).RemoveDocParaIndex(CLng(p))
                                        Else
                                                r$ = pppp.item(w2).TextParagraphOrderRemove(CLng(p))
                                        End If
                                Else
                                   If dd = 1 Then
                                    dd = var(W3)
                                            p = dd
                                                 If pppp.item(w2).InvalidPara(dd) Then
                                                    MissingDocRef
                                                    Exit Function
                                                    End If
                                            If pppp.item(w2).BackMove Then
                                            var(W3) = pppp.item(w2).BackStep(dd)
                                            Else
                                            var(W3) = pppp.item(w2).Advance(dd)
                                            End If
                                        r$ = Mid$(pppp.item(w2).TextParagraph(CLng(p)), CLng(PP))
                                    Else
                                r$ = Mid$(pppp.item(w2).TextParagraphOrder(CLng(p)), CLng(PP))
                                End If
                                End If
                            Else
                            If dd = 1 Then
                                    dd = var(W3)
                                            p = dd
                                                 If pppp.item(w2).InvalidPara(dd) Then
                                                    MissingDocRef
                                                    Exit Function
                                                    End If
                                            If pppp.item(w2).BackMove Then
                                            var(W3) = pppp.item(w2).BackStep(dd)
                                            Else
                                            var(W3) = pppp.item(w2).Advance(dd)
                                            End If
                                r$ = pppp.item(w2).TextParagraph(CLng(p))
                                            Else
                                r$ = pppp.item(w2).TextParagraphOrder(CLng(p))
                                End If
                            End If
                        Else
                            MissingDoc
                            Exit Function
                        End If
                    
                    IsString = FastSymbol(A$, ")", True)
            Else
                    MissParam A$
            End If
        End If
    Exit Function
Case "UNION.DATA$(", "�����.������$("


  
  Do
  If IsStrExp(bstackstr, A$, s) Then
  
  ElseIf IsExp(bstackstr, A$, p) Then
  s = ChrW(p)
  Else
  s = ChrW(0)
  End If
  r$ = r$ + s
  
  Loop Until Not FastSymbol(A$, ",") Or A$ = ""

    IsString = FastSymbol(A$, ")", True)

    Exit Function
Case "MAX.DATA$(", "������.������$("

  If IsStrExp(bstackstr, A$, r$) Then
  
  Do While FastSymbol(A$, ",")
  If Not IsStrExp(bstackstr, A$, s) Then MissStringExpr: Exit Function
  If r$ < s Then r$ = s
  
  Loop

    IsString = FastSymbol(A$, ")", True)
        Else
      MissStringExpr
        End If
    Exit Function
Case "MIN.DATA$(", "�����.������$("
 IsString = False
  If IsStrExp(bstackstr, A$, r$) Then
  
  Do While FastSymbol(A$, ",")
  If Not IsStrExp(bstackstr, A$, s) Then MissStringExpr: Exit Function
  If r$ > s Then r$ = s
  
  Loop

    IsString = FastSymbol(A$, ")", True)
        Else
      MissStringExpr
        End If
    Exit Function
    Case "FUNCTION$(", "���������$("
    If IsStrExp(bstackstr, A$, s$) Then
        If IsSymbol(s$, "{") Then
            PushStage bstackstr, False
            GlobalSub "A$()", block(s$)
            IsSymbol3 A$, ","
              A$ = "A$(@" & A$
            IsString = IsStrExp(bstackstr, A$, r$)
            
            PopStage bstackstr
            Else
            If MaybeIsSymbol(A$, ".") Then
                dd = 1
                      q1$ = aheadstatus(A$, , dd)
                s$ = s$ + Left$(A$, dd - 1)
                A$ = Mid$(A$, dd)
            End If
                 If FastSymbol(A$, ",") Then
                End If
                
              
                    If Right$(s$, 1) = ")" Then
                        A$ = Left$(s$, Len(s$) - 1) & A$
                   ElseIf InStr(s$, ").") > 0 Then     ''''''Or A$ Like ".*"
                   FastSymbol A$, ")"
                     A$ = s$ & A$
                    Else
               If Right$("!" & s$, 1) = "$" Then
                    A$ = s$ & "(@" & A$  '' i put a @ from 102
                Else
                 A$ = s$ & "$(" & A$
                    End If
                End If
        IsString = IsStrExp(bstackstr, A$, r$)
     End If
     End If
    Exit Function
    Case "HEX$(", "������$("
    If IsExp(bstackstr, A$, p) Then
    r$ = PACKLNG$(p)
    If FastSymbol(A$, ",") Then
    If Not IsExp(bstackstr, A$, p) Then
      MyErMacro A$, "missing parameter 1 to 4 (bytes)", "������ ��������� 1 ��� 4"
        IsString = False: Exit Function
    ElseIf Int(p) < 1 Or Int(p) > 4 Then
         MyErMacro A$, "parameter 1 to 4 (bytes)", "��������� 1 ��� 4"
        IsString = False: Exit Function
Else
    r$ = Right$(r$, p * 2)
    End If
    End If
     IsString = True
                         If Not FastSymbol(A$, ")") Then IsString = False
                        Exit Function
    End If
    Case "SHOW$(", "������$("
    If IsStrExp(bstackstr, A$, r$) Then
        If FastSymbol(A$, ",") Then
            If IsStrExp(bstackstr, A$, q$) Then
                If FastSymbol(A$, ",") Then
                    If IsExp(bstackstr, A$, p) Then
                        r$ = mycoder.decryptline(r$, q$, CLng(p))
                        IsString = True
                         If Not FastSymbol(A$, ")") Then IsString = False
                        Exit Function
                    End If
                End If
            End If
        End If
    End If
    Exit Function
    Case "MENU$(", "�������$(", "��������$("
    If IsExp(bstackstr, A$, p) Then
    p = Abs(CLng(p))
    With Form1.List1
        If p > 0 And .listcount >= p Then
            r$ = .List(CLng(p) - 1)
            IsString = True
        End If
    End With
    End If
    If Not FastSymbol(A$, ")") Then IsString = False
    Exit Function
    Case "REPLACE$(", "������$("
    
    If IsStrExp(bstackstr, A$, q$) Then
       If FastSymbol(A$, ",") And IsStrExp(bstackstr, A$, q1$) Then
            If FastSymbol(A$, ",") And IsStrExp(bstackstr, A$, q2$) Then
     IsString = True
    r$ = Replace$(q2$, q$, q1$)    'ReplaceStr(Q$, q1$, Q2$)
       End If
       End If
    End If
    If Not FastSymbol(A$, ")") Then IsString = False
    Exit Function
    Case "PATH$(", "�����$("
      If IsExp(bstackstr, A$, p) Then
    IsString = True
    r$ = GetSpecialfolder(CLng(p))
    AddDirSep r$
    ElseIf IsStrExp(bstackstr, A$, q$) Then
     IsString = True
     
    r$ = ExtractPath$(q$)
    End If
    If Not FastSymbol(A$, ")") Then IsString = False
    Exit Function
    Case "UCASE$(", "���$("
    If IsStrExp(bstackstr, A$, q$) Then
      IsString = True
      If FastSymbol(A$, ",") And IsExp(bstackstr, A$, p) Then
            If p <> 0 Then
            r$ = kUpper(Convert3(q$, CLng(p)), p)
            Else
            r$ = kUpper(Convert3(q$, CLng(cLid)), CDbl(cLid))
            End If
      Else
     r$ = myUcase$(q$)
     
     End If
    End If
    If Not FastSymbol(A$, ")") Then IsString = False
    Exit Function
    Case "LCASE$(", "���$("
     If IsStrExp(bstackstr, A$, q$) Then
   IsString = True
      If FastSymbol(A$, ",") And IsExp(bstackstr, A$, p) Then
      If p <> 0 Then
      r$ = klower(Convert3(q$, CLng(p)), p)
      Else
      r$ = klower(Convert3(q$, CLng(cLid)), CDbl(cLid))
      End If
      Else
     r$ = myLcase$(q$)
     
     End If
    
    End If
    
    
    If Not FastSymbol(A$, ")") Then IsString = False
    Exit Function
    Case "STRING$(", "����$("
    If IsStrExp(bstackstr, A$, q$) Then
    If FastSymbol(A$, ",") And IsExp(bstackstr, A$, p) Then
    p = Int(Abs(p))
    r$ = ""
    While p > 0
    r$ = r$ & q$
    p = p - 1
    Wend
     IsString = True
    End If
    If Not FastSymbol(A$, ")") Then IsString = False
     Exit Function
    End If
       IsString = False
    Exit Function
    Case "MID$(", "���$("
 
    If IsStrExp(bstackstr, A$, q$) Then
    If FastSymbol(A$, ",") And IsExp(bstackstr, A$, p) Then
    p = Abs(p)
    If p = 0 Then
    MyEr "Zero pos in mid$ not allowed", "�������� ���� ���� ���$ ��� �����������)"
    IsString = False
    Exit Function
    Else
    r$ = Mid$(q$, p)
    IsString = True
    End If
    End If
    If FastSymbol(A$, ",") And IsExp(bstackstr, A$, p) Then
    p = Abs(p)
    r$ = Left$(r$, p)
    End If
    If Not FastSymbol(A$, ")") Then IsString = False
    End If
    IsString = True
    Exit Function
    
    Case "LEFT$(", "����$("
 
    If IsStrExp(bstackstr, A$, q$) Then
    If FastSymbol(A$, ",") And IsExp(bstackstr, A$, p) Then
    p = Abs(p)
    r$ = Left$(q$, p)
     IsString = True
    End If
    If Not FastSymbol(A$, ")") Then IsString = False
    End If
    Exit Function
    Case "RIGHT$(", "����$("

    If IsStrExp(bstackstr, A$, q$) Then
    If FastSymbol(A$, ",") And IsExp(bstackstr, A$, p) Then
    p = Abs(p)
    r$ = Right$(q$, p)
     IsString = True
    End If
    If Not FastSymbol(A$, ")") Then IsString = False
    End If
    Exit Function
    Case "SND$(", "���$("
     If IsStrExp(bstackstr, A$, q$) Then
        r$ = CFname(q$ & ".WAV")
         If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
        IsString = True
        Exit Function
    Else
        IsString = False
    Exit Function
    End If
    Case "BMP$(", "���$("
     If IsStrExp(bstackstr, A$, q$) Then
        r$ = CFname(q$ & ".BMP")
        If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
        IsString = True
        Exit Function
    Else
        IsString = False
    Exit Function
    End If
     Case "JPG$(", "����$("
     If IsStrExp(bstackstr, A$, q$) Then
        r$ = CFname(q$ & ".JPG")
        If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
        IsString = True
        Exit Function
    Else
        IsString = False
    Exit Function
    End If
    Case "TRIM$(", "����$("
    If IsStrExp(bstackstr, A$, q$) Then
        r$ = Trim$(q$)
        If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
        IsString = True
        Exit Function
    Else

        IsString = False
    Exit Function
    End If
Case "QUOTE$(", "��������$("

r$ = ""
q1$ = ""
Do
If IsStrExp(bstackstr, A$, q$) Then
 r$ = r$ & q1$ & Chr(34) + q$ & Chr(34)
ElseIf IsExp(bstackstr, A$, p) Then
        r$ = r$ & q1$ & CStr(p)
        Else
        IsString = False: Exit Function
        End If
        If Not FastSymbol(A$, ",") Then Exit Do
        q1$ = ","
        Loop
        If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
        IsString = True
        Exit Function
 
Case "�����$(", "STACK$("
r$ = ""
Do
If IsStrExp(bstackstr, A$, q$) Then
 r$ = r$ & Sput(q$)
ElseIf IsExp(bstackstr, A$, p) Then
        r$ = r$ & " " & Trim$(Str$(p))
        Else
        IsString = False: Exit Function
        End If
        If Not IsSymbol3(A$, ",") Then Exit Do
        Loop
        If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
        IsString = True
        Exit Function
Case "ADD.LICENCE$(", "����.�����$("
If IsStrExp(bstackstr, A$, q$) Then
If FastSymbol(A$, ",") Then
If IsStrExp(bstackstr, A$, q1$) Then
Err.clear
On Error Resume Next
        r$ = Licenses.Add(q$, q1$)
        If Err.Number > 0 Then MissLicence: Err.clear
       If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
        IsString = True
End If
Else
Err.clear
On Error Resume Next
        r$ = Licenses.Add(q$)
        If Err > 0 Then MissLicence: Err.clear
        
       If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
        IsString = True


End If
End If

        Exit Function
Case "ENVELOPE$(", "�������$("
If IsStrExp(bstackstr, A$, q$) Then
    If FastSymbol(A$, ",") Then
            If Not IsStrExp(bstackstr, A$, q1$) Then IsString = False: Exit Function
            Else
            q1$ = ""
            End If
            If VALIDATE(q$, UCase$(q1$), q2$) Then ' Only S and N
               r$ = q2$
               Else
               r$ = ""
               End If
    Else
' STACK$(BSTACKSTR)
                If FastSymbol(A$, ",") Then
                If Not IsStrExp(bstackstr, A$, q1$) Then IsString = False: Exit Function
                Else
                q1$ = ""
                End If

                If VALIDATEmStiva(bstackstr, UCase$(q1$), q2$) Then
                   r$ = q2$
                   Else
                   r$ = ""
                   End If

    End If
         If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
        IsString = True
        Exit Function
Case "FIELD$(", "�����$("
    If IsStrExp(bstackstr, A$, q$) Then
        If FastSymbol(A$, ",") Then
           If Not IsExp(bstackstr, A$, p) Then
           IsString = False
           Exit Function
           End If
           p = Abs(p)
        Else
           IsString = False
           Exit Function
        End If
        r$ = Left$(Trim$(q$), p)
        r$ = r$ & Space$(p - Len(r$))
        If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
        IsString = True
        Exit Function
    Else

        IsString = False
    Exit Function
    End If
    
    Case "DRW$(", "���$("
    If IsStrExp(bstackstr, A$, q$) Then
        r$ = CFname(q$ & ".WMF")
        If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
        IsString = True
        Exit Function
    Else

        IsString = False
    Exit Function
    End If
    Case "TIME$(", "������$("
    If IsExp(bstackstr, A$, p) Then
       r$ = Format(p, "SHORT TIME")
        If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
        IsString = True
        Exit Function
    Else

        IsString = False
    Exit Function
    End If
    Case "DATE$(", "�����$("
    If IsExp(bstackstr, A$, p) Then

        r$ = Format(CDbl(CDate(p)), "SHORT DATE")
        
        If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
        IsString = True
        Exit Function
    Else

        IsString = False
    Exit Function
    End If
    Case "STR$(", "�����$("
    If IsExp(bstackstr, A$, p) Then
        If FastSymbol(A$, ",") Then
            If IsStrExp(bstackstr, A$, q$) Then
            r$ = Format(p, q$)
            Else
            IsString = False
            Exit Function
            End If
        Else
        r$ = Str(p)
        End If
        If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
    IsString = True
    Exit Function
    ElseIf IsStrExp(bstackstr, A$, r$) Then
        If FastSymbol(A$, ",") Then
            If IsStrExp(bstackstr, A$, q$) Then
            r$ = Format(r$, q$)
                        ElseIf IsExp(bstackstr, A$, PP) Then
                        If PP = 0 Then
                        r$ = Convert2(r$, cLid)
                        Else
            r$ = Convert2(r$, CLng(PP))
            End If
            Else
            IsString = False
            Exit Function
            End If
        Else
        r$ = StrConv(r$, vbFromUnicode)
        End If
            If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
    IsString = True
    Exit Function
    Else
    IsString = False
    Exit Function
    End If
    Case "CHRCODE$(", "������$("
    If IsExp(bstackstr, A$, p) Then
    r$ = ChrW$(cUint(p))
    If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
    IsString = True
    Exit Function
    Else
    IsString = False
    Exit Function
    End If
    Case "CHR$(", "���$("
    If IsExp(bstackstr, A$, p) Then
        If FastSymbol(A$, ",") Then
                If IsExp(bstackstr, A$, PP) Then
                
                     r$ = ChrW$(AscW(StrConv(ChrW$(p Mod 256), 64, CLng(PP))))
                Else
                        IsString = False: Exit Function
                End If
        Else
     ''       If bstackstr.Owner.Font.CharSet = 0 Then
               '' r$ = ChrW$(p Mod 256)
       ''     Else
                 r$ = ChrW$(AscW(StrConv(ChrW$(p Mod 256), 64, cLid)))
         ''   End If
        End If
    If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
    IsString = True
    Exit Function
    ElseIf IsStrExp(bstackstr, A$, q$) Then 'CONVERT TO ASCII
            If FastSymbol(A$, ",") Then
                If IsExp(bstackstr, A$, PP) Then
                     r$ = Convert3(q$, CLng(PP)) 'StrConv(Q$, 64, CLng(pp))
                Else
                        IsString = False: Exit Function
                End If
        Else
        r$ = StrConv(q$, vbUnicode)
        End If
    If Not FastSymbol(A$, ")") Then IsString = False: Exit Function
    IsString = True
    Exit Function
    Else
    IsString = False
    Exit Function
    End If
    Case Else
    
itisarrayorfunction:
    MakeThisSubNum bstackstr, q$
    q1$ = q$
    
    If Right$(q1$, 1) <> ")" Then q1$ = q1$ + ")"
    
            If IsSymbol(A$, "@") Then
            'is a function allways...
            If GetlocalSub(q1$, w1&) Then
                GoTo contStrFun
            ElseIf GetSub(q1$, w1&) Then
                GoTo contStrFun
            Else
                GoTo skiperrorStr
            End If
            
            Else
            If neoGetArray(bstackstr, q$, pppp, , , True) Then
                GoTo contStrArr
            ElseIf GetlocalSub(q1$, w1&) Then
                GoTo contStrFun
            ElseIf neoGetArray(bstackstr, q$, pppp) Then
                GoTo contStrArr
            ElseIf GetSub(q1$, w1&) Then
                GoTo contStrFun
            Else
                GoTo skiperrorStr
            End If
            End If
    
    
        If GetSub(q1$, w1&) Then
contStrFun:
            Set nBstack = New basetask
            nBstack.reflimit = Len(VarName$)
            Set nBstack.Parent = bstackstr
            Set nBstack.Owner = bstackstr.Owner
            nBstack.UseGroupname = sbgroup(w1&)
            nBstack.OriginalCode = w1&
            If GoFunc(nBstack, q1$, A$, s$) Then
                Set bstackstr.LastObj = nBstack.LastObj
                r$ = s$
                IsString = True
            Else
                IsString = False
                End If
            Exit Function
        ElseIf neoGetArray(bstackstr, q$, pppp) Then
contStrArr:
            If FastSymbol(A$, ")") Then
                IsString = True
                p = 0
                Set bstackstr.LastObj = pppp
                Exit Function
            End If
            pppp.SerialItem (0), dd, 5
            dd = dd - 1
            p = 0
            PP = 0
        IsString = True
        w2 = 0
        Do While dn <= dd
        pppp.SerialItem W3, dn, 6
        If IsExp(bstackstr, A$, p) Then
        If dn < dd Then
            If Not FastSymbol(A$, ",") Then MyErMacro A$, "need index for " & q$ & ")", "���������� ������ ��� �� ������ " & q$ & ")": IsString = False: Exit Do
            Else
            If FastSymbol(A$, ",") Then
            IsString = False
            MyErMacro A$, "too many indexes for array " & q$ & ")", "������ ������� ��� �� ������ " & q$ & ")"
        Exit Function
        End If
            If Not FastSymbol(A$, ")") Then MissSymbol A$, ")": IsString = False: Exit Function
        End If
            On Error Resume Next
        If Not pppp.PushOffset(w2, dn, CLng(p)) Then
        
            MyErMacro A$, "index too high for array " & q$ & ")", "������� ������ ��� �� ������ " & q$ & ")"
            IsString = False: Exit Function
        Else
            End If
              Else
        IsString = False
        
          MyErMacro A$, "missing index for array " & q$ & ")", "������ ������� ��� �� ������ " & q$ & ")"
        Exit Function
    
        End If
        dn = dn + 1
        Loop
                r$ = pppp.item(w2)
            IsString = True
        Exit Function
            Else  '......
skiperrorStr:
         If FindNameForGroup(bstackstr, q$) Then
 MyErMacro A$, "unknown method/array  " & q$, "������� �������/������� " & q$
 Else
     MyErMacro A$, "unknown function/array " & q$, "������� ���������/������� " & q$

End If
    Exit Function
    End If
            
    End Select
Case Else
contstr:
w = 0
If q$ <> "" Then A$ = q$ & " " & A$
q$ = ""
End Select
If A$ = "" Then IsString = False: Exit Function
Select Case Asc(A$)
Case 1
q$ = Chr(1)
Case 2
'
r$ = Mid$(A$, 2, 8)
r$ = Mid$(A$, 10, UNPACKLNG(r$))
A$ = Mid$(A$, Len(r$) + 10)
IsString = True
Exit Function
Case 34
q$ = Chr(34)

End Select
If q$ = "" Or Len(A$) < 2 Then IsString = False: Exit Function

w = InStr(2, A$, q$)
If w = 0 And Len(q$) = 1 Then
MyErMacro A$, "No closed string, open with " & q$, "������� �������������, �� " & q$
IsString = False: Exit Function
End If

If w = 0 Then IsString = False: Exit Function
r$ = Mid$(A$, 2, w - 2)
A$ = NLtrim$(Mid$(A$, w + 1))
IsString = True

End Function
Function ISSTRINGA(bb$, r$) As Boolean
'
Dim q$, w As Long, A$
A$ = LTrim(bb$)
r$ = ""
If A$ = "" Then Exit Function
Select Case Asc(A$)
Case 1
q$ = Chr(1)
Case 2
r$ = Mid$(A$, 2, 8)
r$ = Mid$(A$, 10, UNPACKLNG(r$))
bb$ = Mid$(A$, Len(r$) + 10)
ISSTRINGA = True
Exit Function
Case 34
q$ = Chr(34)
End Select
If q$ = "" Or Len(A$) < 2 Then ISSTRINGA = False: Exit Function

w = InStr(2, A$, q$, vbBinaryCompare)
If w = 0 Then ISSTRINGA = False: Exit Function
r$ = Mid$(A$, 2, w - 2)
bb$ = NLtrim$(Mid$(A$, w + 1))

ISSTRINGA = True

End Function
Function IsOperator(A$, c$) As Boolean
IsOperator = False
Dim n$
  If A$ <> "" Then
If Left$(A$, Len(c$)) = c$ Then  ' no letters in operator so no UCASE
' check next charcter
n$ = Left$(Mid$(A$, Len(c$) + 1, 1) & " ", 1)
    If Not InStr(novalidstr, n$) > 0 Then
    
    A$ = NLtrim$(Mid$(A$, Len(c$) + 1))
    IsOperator = True
    End If
End If
End If
End Function
Function codeW(A$) As Long
If A$ <> "" Then
If Asc(A$) < 128 Then codeW = 1
End If
End Function
Function placeme$(gre$, Eng$, code As Long)
If code = 1 Then placeme$ = Eng$ Else placeme$ = gre$
End Function

Function IsSymbol(A$, c$, Optional mis As Boolean = False) As Boolean
Dim b$
b$ = NLtrim$(A$)
  If b$ <> "" Then
If myUcase(Left$(b$, Len(c$))) = c$ Then
If c$ <> "{" Then
A$ = NLtrim$(Mid$(b$, Len(c$) + 1))
Else
A$ = Mid$(b$, Len(c$) + 1)
End If
IsSymbol = True

 Else
 If mis Then
 MyErMacro A$, "missing " & c$, "������ " & c$
 End If
IsSymbol = False
End If
Else
 If mis Then
 MyErMacro A$, "missing " & c$, "������ " & c$
 End If
IsSymbol = False
End If
End Function

Function IsSymbol2(A$, c$) As Boolean
Dim i As Long
If A$ = "" Then Exit Function
i = InStr(1, A$, c$)
If i = 0 Then Exit Function
If i = 1 Then
IsSymbol2 = True
Else
IsSymbol2 = Trim$(Mid$(A$, 1, i - 1)) = ""
End If
End Function

Function IsSymbol3(A$, c$, Optional mis As Boolean = False) As Boolean
' SAME AS FASTSYMB WITHOUT
Dim i As Long
If A$ = "" Then Exit Function
i = MyTrimL(A$)
If i > Len(A$) Then Exit Function
Select Case Len(c$)
Case 1
If InStr(c$, Mid$(A$, i, 1)) > 0 Then
A$ = Mid$(A$, i + 1)
IsSymbol3 = True
ElseIf mis Then
MyErMacro A$, "missing " & c$, "������ " & c$
End If
Case 2
If InStr(c$, Mid$(A$, i, 2)) > 0 Then
A$ = Mid$(A$, i + 2)
IsSymbol3 = True
ElseIf mis Then
MyErMacro A$, "missing " & c$, "������ " & c$
End If
Case 3
If InStr(c$, Mid$(A$, i, 3)) > 0 Then
A$ = Mid$(A$, i + 3)
IsSymbol3 = True
ElseIf mis Then
MyErMacro A$, "missing " & c$, "������ " & c$
End If
Case 4
If InStr(c$, Mid$(A$, i, 4)) > 0 Then
A$ = Mid$(A$, i + 4)
IsSymbol3 = True
ElseIf mis Then
MyErMacro A$, "missing " & c$, "������ " & c$
End If
Case Else
If InStr(c$, Mid$(A$, i, Len(c$))) > 0 Then
A$ = Mid$(A$, i + Len(c$))
IsSymbol3 = True
ElseIf mis Then
MyErMacro A$, "missing " & c$, "������ " & c$
End If
End Select

End Function
'


Function FastSymbol(A$, c$, Optional mis As Boolean = False) As Boolean

Dim i As Long
If A$ = "" Then Exit Function
i = MyTrimL(A$)
If i > Len(A$) Then Exit Function
Select Case Len(c$)
Case 1
If InStr(c$, Mid$(A$, i, 1)) > 0 Then
A$ = LTrim(Mid$(A$, i + 1))
FastSymbol = True
ElseIf mis Then
MyErMacro A$, "missing " & c$, "������ " & c$
End If
Case 2
If InStr(c$, Mid$(A$, i, 2)) > 0 Then
A$ = LTrim(Mid$(A$, i + 2))
FastSymbol = True
ElseIf mis Then
MyErMacro A$, "missing " & c$, "������ " & c$
End If
Case 3
If InStr(c$, Mid$(A$, i, 3)) > 0 Then
A$ = LTrim(Mid$(A$, i + 3))
FastSymbol = True
ElseIf mis Then
MyErMacro A$, "missing " & c$, "������ " & c$
End If
Case 4
If InStr(c$, Mid$(A$, i, 4)) > 0 Then
A$ = LTrim(Mid$(A$, i + 4))
FastSymbol = True
ElseIf mis Then
MyErMacro A$, "missing " & c$, "������ " & c$
End If
Case Else
If InStr(c$, Mid$(A$, i, Len(c$))) > 0 Then
A$ = LTrim(Mid$(A$, i + Len(c$)))
FastSymbol = True
ElseIf mis Then
MyErMacro A$, "missing " & c$, "������ " & c$
End If
End Select
End Function
Function MaybeIsSymbol(A$, c$) As Boolean
Dim i As Long
If A$ = "" Then Exit Function
i = MyTrimL(A$)
If i > Len(A$) Then Exit Function
MaybeIsSymbol = InStr(c$, Mid$(A$, i, 1)) > 0

End Function
Function MaybeIsSymbolNoSpace(A$, c$) As Boolean
MaybeIsSymbolNoSpace = Left$(A$, 1) Like c$
End Function
Function IsLabelSymbolNew(A$, gre$, Eng$, code As Long, Optional mis As Boolean = False, Optional ByVal Bypass As Boolean = False, Optional checkonly As Boolean = False, Optional free As Boolean = True) As Boolean
' code 2  gre or eng, set new value to code 1 or 0
' 0 for gre
' 1 for eng
' return true if we have label
Dim what As Boolean
Select Case code
Case 0
IsLabelSymbolNew = IsLabelSymbol3(1032, A$, gre$, mis, Bypass, checkonly, free)
Case 1
IsLabelSymbolNew = IsLabelSymbol3(1033, A$, Eng$, mis, Bypass, checkonly, free)
Case 2
what = IsLabelSymbol3(1032, A$, gre$, mis, Bypass, checkonly, free)
If what Then
code = 0
IsLabelSymbolNew = what
Exit Function
End If
what = IsLabelSymbol3(1033, A$, Eng$, mis, Bypass, checkonly, free)
If what Then code = 1
IsLabelSymbolNew = what
End Select

End Function

Function IsLabelSymbol3(ByVal code As Double, A$, c$, Optional mis As Boolean = False, Optional ByVal Bypass As Boolean = False, Optional checkonly As Boolean = False, Optional needspace As Boolean = False) As Boolean
Dim TEST$, what$, pass As Long
If Bypass Then Exit Function

If A$ <> "" And c$ <> "" Then
    TEST$ = A$
    If Right$(c$, 1) <= "9" Then
        If FastSymbol(TEST$, c$) Then
            If needspace Then
                If TEST$ = "" Then
                ElseIf Asc(TEST$) < 36 Then
                ElseIf InStr(":;\',", Left$(TEST$, 1)) > 0 Then ' : ; ,
                Else
                    Exit Function
                End If
            End If
            If Not checkonly Then A$ = TEST$
            IsLabelSymbol3 = True
        Else
            If mis Then MyErMacro A$, "missing " & c$, "������ " & c$
        End If
        Exit Function
    Else
        'this cant find B16
        pass = Len(c$)
        IsLabelSymbol3 = IsLabelSYMB33(TEST$, what$, pass)
    End If
    If what$ = "" Then
        If mis Then GoTo theremiss
        Exit Function
    End If
    If code = 1032 Then
        what$ = myUcase(what$, True)
    Else
        what$ = UCase(what$)
    End If
    If what$ = c$ Then
        TEST$ = Mid$(TEST$, pass)
        If needspace Then
            If TEST$ = "" Then
            ElseIf Asc(TEST$) < 36 Then
            ElseIf InStr(":;\',", Left$(TEST$, 1)) > 0 Then
            ' : ; ,
            Else
                IsLabelSymbol3 = False
                Exit Function
            End If
        End If
        If checkonly Then
          '  A$ = what$ & TEST$
          Else
           A$ = TEST$
        End If
  
       Else
             If mis Then
theremiss:
           ''  MyErMacro a$, "missing " & c$, "������ " & c$
                 MyEr "missing " & c$, "������ " & c$
              End If
            IsLabelSymbol3 = False
            End If

End If
End Function
Function IsLabelSymbol(A$, c$, Optional mis As Boolean = False, Optional ByVal Bypass As Boolean = False, Optional checkonly As Boolean = False) As Boolean
Dim TEST$, what$, pass As Long
If Bypass Then Exit Function

  If A$ <> "" And c$ <> "" Then
TEST$ = A$
pass = Len(c$)
IsLabelSymbol = IsLabelSYMB33(TEST$, what$, pass)

        If myUcase(what$) = c$ Then
        If checkonly Then
     '   A$ = what$ & " " & TEST$
        Else
                    A$ = Mid$(TEST$, pass)
          End If
  
             Else
             If mis Then
                 MyErMacro A$, "missing " & c$, "������ " & c$
              End If
            IsLabelSymbol = False
            End If

End If
End Function
Function IsLabelSymbolLatin(A$, c$, Optional mis As Boolean = False, Optional ByVal Bypass As Boolean = False, Optional checkonly As Boolean = False) As Boolean
Dim TEST$, what$, pass As Long
If Bypass Then Exit Function

  If A$ <> "" And c$ <> "" Then
TEST$ = A$
pass = Len(c$)
IsLabelSymbolLatin = IsLabelSYMB33(TEST$, what$, pass)

        If UCase(what$) = c$ Then
        If checkonly Then
      '  A$ = what$ & " " & TEST$
        Else
                    A$ = Mid$(TEST$, pass)
          End If
  
             Else
             If mis Then
                 MyErMacro A$, "missing " & c$, "������ " & c$
              End If
            IsLabelSymbolLatin = False
            End If

End If
End Function
Function IsLabelSymbolOLD(A$, c$, Optional mis As Boolean = False, Optional ByVal Bypass As Boolean = False, Optional checkonly As Boolean = False) As Boolean
Dim TEST$, what$, pass As Long
If Bypass Then Exit Function

  If A$ <> "" And c$ <> "" Then
TEST$ = A$
IsLabelSymbolOLD = IsLabelSYMB(TEST$, what$)
        If UCase(what$) = c$ Then
        If checkonly Then
        A$ = UCase(what$) & " " & TEST$
        Else
                    A$ = TEST$
          End If
  
             Else
             If mis Then
                 MyErMacro A$, "missing " & c$, "������ " & c$
              End If
            IsLabelSymbolOLD = False
            End If

End If
End Function

Function interpret(bstack As basetask, b$) As Boolean
Dim di As Object, myobject As Object
Set di = bstack.Owner
Dim prive As basket
'b$ = Trim$(b$)
Dim w$, ww#, LLL As Long, sss As Long, V As Long, p As Double, SS$, ohere$
Dim pppp As mArray, i1 As Long
Dim R1 As Long, r2 As Long
' uink$ = ""
di.FontTransparent = True
ohere$ = HERE$
HERE$ = ""

sss = Len(b$)
Do While Len(b$) <> LLL

If LastErNum <> 0 Then Exit Do
LLL = Len(b$)
If FastSymbol(b$, "{") Then
If Not interpret(bstack, block(b$)) Then interpret = False: HERE$ = ohere$: Exit Function
If FastSymbol(b$, "}") Then
LLL = Len(b$)
sss = LLL
Else
interpret = False: HERE$ = ohere$: Exit Function
End If
End If
If FastSymbol(b$, vbCrLf) Then
UINK$ = ""
sss = LLL
End If
If FastSymbol(b$, ":") Then
sss = LLL
UINK$ = ""
End If
If NOEXECUTION Then interpret = False: HERE$ = ohere$: Exit Function
If b$ = "" Then interpret = True: HERE$ = ohere$: Exit Function
If IsSymbol(b$, "@") Then
i1 = IsLabelA(HERE$, b$, w$)
w$ = "@" + w$
GoTo PROCESSCOMMAND   'IS A COMMAND
Else
i1 = IsLabelA(HERE$, b$, w$)
End If
  If trace And (bstack.Process Is Nothing) Then
    Form2.Label1(0) = HERE$
    Form2.Label1(1) = w$
    Form2.Label1(2) = GetStrUntil(vbCrLf, b$ & vbCrLf, False)
 TestShowSub = ""
 TestShowStart = 0
    Set Form2.Process = bstack
    stackshow bstack
    If Not Form1.Visible Then
    Form1.Show , Form5   'OK
    End If

    If STbyST Then
        STbyST = False
        If Not STEXIT Then
        If Not STq Then
        Form2.gList4.listindex = 0
        End If
        End If
        Do
        MyDoEvents1 Form1
        BLOCKkey = False
        MyDoEvents
        Loop Until STbyST Or STq Or STEXIT Or NOEXECUTION Or myexit(bstack)
            If Not STEXIT Then
        If Not STq Then
        Form2.gList4.listindex = 0
        End If
        End If
        STq = False
        If STEXIT Then
        NOEXECUTION = True
        trace = False
        STEXIT = False
        Exit Function
        End If
    End If
Sleep 5
   '' SleepWaitNO 5
    If STEXIT Then
    
    trace = False
    STEXIT = False
    Exit Function
    Else
    
    End If
End If
Select Case i1
Case 2
MyEr "No with reference in left side of assignment", "��� �� ������� ���� �������� �����"
interpret = False
Exit Function
Case 1

    If sss = LLL Then
    SS$ = ""
    If MaybeIsSymbol(b$, "=-+*/<~") Then
            If FastSymbol(b$, "=") Then
                If GetVar(bstack, w$, V) Then
                    If IsExp(bstack, b$, p) Then
            If Typename(var(V)) = "Group" Then             '' Group 2 Group
                        If Not bstack.LastObj Is Nothing Then
                                If Typename(bstack.LastObj) = "Group" Then
                                  Set myobject = bstack.LastObj
                                        Set bstack.LastObj = Nothing
                                    UnFloatGroupReWriteVars bstack, w$, V, myobject
      
                                Else

                                
                                  interpret = False
                                End If
                        Else  '' make an upgrade
                               interpret = False

                        End If
                        ElseIf VarType(var(V)) = vbLong Then
                                                    If Not bstack.LastObj Is Nothing Then
                                If Typename(bstack.LastObj) = "Group" Then
                                      Set myobject = bstack.LastObj
                                        Set bstack.LastObj = Nothing
                                    UnFloatGroup bstack, w$, V, myobject  ' global??
                                    Set myobject = Nothing
                             
                                Else
                                interpret = False
                                End If
                                Else
                                var(V) = CLng(p)
                                End If
                    Else
                    
                    var(V) = p
                    End If
                    Else
                    If LastErNum <> -2 Then NoValueForvariable w$
                    
                    Exit Do
                    End If
                ElseIf IsExp(bstack, b$, p) Then
                interpret = True
                 If Not bstack.LastObj Is Nothing Then
                                If Typename(bstack.LastObj) = "Group" Then
                                    
                                        
                                GlobalMoveGroup bstack, w$
                                Else
                                SyntaxError
                                End If
                Else
                    GlobalVar w$, p
                    End If
                    
                ElseIf LastErNum = 0 Then
                ' I have to place here new error no value for
                ' see lastErNum
                ' �� ���� ���� ��� �� ��� �� ����...������� �� LastErNum
                SyntaxError
                interpret = False
                Exit Function
                Else
               Exit Do
                End If
                w$ = " "
                   interpret = True
                                
            ElseIf FastSymbol(b$, "+=") Then
                 SS$ = "+"
                 ElseIf FastSymbol(b$, "/=") Then
                 SS$ = "/"
                 ElseIf FastSymbol(b$, "-=") Then
                 SS$ = "-"
                 ElseIf FastSymbol(b$, "*=") Then
                 SS$ = "*"
                 ElseIf IsOperator(b$, "++") Then
                 SS$ = "++"
                 ElseIf IsOperator(b$, "--") Then
                 SS$ = "--"
                 ElseIf IsOperator(b$, "-!") Then
                 SS$ = "-!"
                    ElseIf IsOperator(b$, "~") Then
                    SS$ = "!!"
                 ElseIf FastSymbol(b$, "<=") Then
                 SS$ = "="
                 End If
    End If
    If SS$ <> "" Then
            If GetVar(bstack, w$, V) Then
                If Len(SS$) = 1 Then
                            If IsExp(bstack, b$, p) Then
                                    On Error Resume Next
                            If VarType(var(V)) = vbLong Then
                               Select Case SS$
                                Case "="
                                var(V) = CLng(p)
                                Case "+"
                                var(V) = CLng(p) + var(V)
                                Case "*"
                                 var(V) = CLng(p) * var(V)
                                Case "-"
                                var(V) = var(V) - CLng(p)
                                Case "/"
                                If p = 0 Then
                                   interpret = False
                                   Exit Do
                                End If
                                ' only
                                 var(V) = var(V) \ CLng(p)
                                            
                                                    
                            End Select
                                        If Err.Number = 6 Then
                                        ' �����������
                                                                interpret = False
                                                                Exit Function
                                                    End If
                            Else
                                    Select Case SS$
                                        Case "="
                                        var(V) = p
                                        Case "+"
                                        var(V) = p + var(V)
                                        Case "*"
                                         var(V) = p * var(V)
                                        Case "-"
                                        var(V) = var(V) - p
                                        Case "/"
                                                    If p = 0 Then
                                                            interpret = False
                                                            Exit Function
                                                    End If
                                        
                                                    var(V) = var(V) / p
                                                    
                                              
                              
                                    End Select
                                    End If
                                        
                            Else
                            If LastErNum <> -2 Then
                                      NoValueForvariable w$
                                           interpret = False
                                         Exit Function
                                    Else
                          interpret = True
                          Exit Do
                                        End If
                            End If
                Else
                If SS$ = "++" Then
                var(V) = 1 + var(V)
                ElseIf SS$ = "--" Then
                var(V) = var(V) - 1
                  ElseIf SS$ = "-!" Then
                var(V) = -var(V)
                  Else
           
                      var(V) = -1 - (var(V) <> 0)

                End If
                End If
        sss = Len(b$)
                Else
                               interpret = False
                    Exit Function
                End If
            Else
          '**********************************************************
PROCESSCOMMAND:
       
            If Trim(w$) <> "" Then
      
            Select Case w$
        Dim x1 As Long, y1 As Long
        Dim x2 As Long, y2 As Long, SBR$, nd&
            Case " ", ChrW(160)
            ' nothing
          '  SSS = Len(B$)
            Case "SLOW", "����"
            extreme = False
            SLOW = True
            interpret = True
            HERE$ = ohere$
            Exit Function
            Case "FAST", "�������"
            If FastSymbol(b$, "!") Then extreme = True Else extreme = False
            SLOW = False
            interpret = True
            HERE$ = ohere$
            Exit Function
            Case "USER", "�������"
      
               SS$ = PurifyPath(GetStrUntil("\", Trim$(GetNextLine(b$) + "\")))
               
                 If SS$ <> "" Then
                    dset
                    
                    userfiles = GetSpecialfolder(CLng(26)) & "\M2000_USER\"
                    
                    If Not isdir(userfiles) Then MkDir userfiles
                
                    
                    SS$ = AddBackslash(userfiles + SS$)
                    
                    If PathMakeDirs(SS$) Or isdir(SS$) Then
                    userfiles = SS$
                    mcd = userfiles
                    Original bstack, "CLS"
                    Else

                    PlainBaSket di, players(GetCode(di)), "Bad User Name"
                    End If
                    Else
                    SS$ = UCase(userfiles)
                    DropLeft "\M2000_USER\", SS$
                    If SS$ = "" Then
                    
                    Else
                    
                    PlainBaSket di, players(GetCode(di)), GetStrUntil("\", SS$)
                    End If
                    End If
                     interpret = True
            Exit Function
            Case "TARGET", "������"
           ' If di.name <> "DIS" And di.name <> "dSprite" Then interpret = False: here$ = OHERE$: Exit Function
                If Abs(IsLabel(bstack, b$, w$)) = 1 Then
                    If Not GetVar(bstack, w$, V) Then 'getvar
                     V = GlobalVar(w$, 0)
                  ''  x1 = GetVar(bstack, W$, v)
                      End If
                Else
                    interpret = False
                   HERE$ = ohere$: Exit Function
                End If
                If Not FastSymbol(b$, ",") Then
                  interpret = False
                  Exit Do
                ElseIf IsStrExp(bstack, b$, SS$) Then  ' COMMAND
                If SS$ = "" Then interpret = False: HERE$ = ohere$: Exit Function
                x1 = 1
                y1 = 1
                x2 = -1
                y2 = -1
                nd& = 0
                SBR$ = ""
                  With players(GetCode(di))
                If FastSymbol(b$, ",") Then If IsExp(bstack, b$, p) Then x1 = Abs(p) Mod (.mx + 1)
                If FastSymbol(b$, ",") Then If IsExp(bstack, b$, p) Then y1 = Abs(p) Mod (.My + 1)
                If FastSymbol(b$, ",") Then If IsExp(bstack, b$, p) Then x2 = CLng(p)
                If FastSymbol(b$, ",") Then If IsExp(bstack, b$, p) Then y2 = CLng(p)
                If FastSymbol(b$, ",") Then If IsExp(bstack, b$, p) Then nd& = Abs(p)
                If FastSymbol(b$, ",") Then If Not IsStrExp(bstack, b$, SBR$) Then interpret = False: HERE$ = ohere$: Exit Function
                Targets = False
             
             
                ReDim Preserve q(UBound(q()) + 1)
              
                q(UBound(q()) - 1) = BoxTarget(bstack, x1, y1, x2, y2, SBR$, nd&, SS$, .Xt, .Yt, .uMineLineSpace)
                End With
                var(V) = UBound(q()) - 1
                Targets = True
                ElseIf IsExp(bstack, b$, p) Then
                  q(var(V)).enable = Not (p = 0)
                  RTarget bstack, q(var(V))
                Else
                interpret = False
                HERE$ = ohere$:             Exit Function
                End If
                Case "���������", "SWITCHES"
                    If IsStrExp(bstack, b$, SS$) Then
                    Switches SS$
                End If
                Case "MONITOR", "�������"
                    If IsSupervisor Then
                    prive = players(GetCode(di))
                    wwPlain bstack, prive, "Default Code Page:" & GetACP, bstack.Owner.Width, 1000, True
                    wwPlain bstack, prive, "App Path", bstack.Owner.Width, 1000, True
                    wwPlain bstack, prive, PathFromApp("m2000"), bstack.Owner.Width, 1000, True
                    wwPlain bstack, prive, "Register gsb", bstack.Owner.Width, 1000, True
                    wwPlain bstack, prive, myRegister("gsb"), bstack.Owner.Width, 1000, True
                    wwPlain bstack, prive, "Temporary", bstack.Owner.Width, 1000, True
                    wwPlain bstack, prive, LONGNAME(strTemp), bstack.Owner.Width, 1000, True
                    wwPlain bstack, prive, "Current directory", bstack.Owner.Width, 1000, True
                    wwPlain bstack, prive, mcd, bstack.Owner.Width, 1000, True
                    players(GetCode(di)) = prive
                    Else
                    BadCommand
                    End If
                Case "�������", "SCRIPT"
                If IsLabelOnly(b$, SS$) Then
                 If GetSub(myUcase(SS$, True), nd&) Then
                           b$ = vbCrLf + SB(nd&) & b$
                   Else
                   b$ = SS$ + " " + b$
                   If IsStrExp(bstack, b$, w$) Then
                           b$ = vbCrLf + w$ + b$
                   Else
                   ' skip
                   End If
                   End If
                ElseIf IsStrExp(bstack, b$, w$) Then
                           b$ = vbCrLf + w$ + b$
                   End If
        
                Case "�����", "END"
                    If NORUN1 Then NORUN1 = False: interpret = True: b$ = "": Exit Function   ' send environment....to hell
                    ExTarget = True: INK$ = Chr(27):   UINK$ = Chr(27)     ' send escape...for any good reason...
                Case Else
                    LastErNum = 0 ' LastErNum1 = 0
                    LastErName = ""   ' every command from Query call identifier
                    LastErNameGR = ""  ' interpret is like execute without if for repeat while select structures
                    If Not Identifier(bstack, w$, b$) Then
                    If NOEXECUTION Then
                    MyEr "", ""
                    interpret = False
                    End If
                    HERE$ = ohere$: Exit Function
                    End If
                    
                End Select
                End If
            End If
        Else
        If w$ <> "" Then
        b$ = w$ & " " & b$
        If Abs(IsLabel(bstack, b$, w$)) Then
        b$ = w$ & " " & b$
         If FindNameForGroup(bstack, w$) Then
 MyEr "Unknown Property " & w$, "������� �������� " & w$
 Else
MyEr "Unknown Variable " & w$, "������� ��������� " & w$
End If

        
        Else

       SyntaxError
        End If
        b$ = ""
        interpret = False
        Exit Function
        End If
    End If
Case 3

SS$ = ""
         If MaybeIsSymbol(b$, "=<") Then
            If FastSymbol(b$, "<=") Then
                SS$ = "g"  'global
            ElseIf FastSymbol(b$, "=") Then
            SS$ = "="
            ElseIf IsOperator(b$, "[") Then
            ' for documents
            ' a$[10]  for documents means the paragraph order numaner
            ' a$[10,5] then 5th char in 10 paragraph
            ' for normal string is an error
            SS$ = "" ' closed for now
            End If
        End If
       

If SS$ <> "" Then
            If SS$ = "=" Then
                If GetVar(bstack, w$, V) Then
                    If IsStrExp(bstack, b$, SS$) Then
                         CheckVar var(V), SS$
                    Else
                       NoValueForvariable w$
                    Exit Do  '???
                    End If
                ElseIf IsStrExp(bstack, b$, SS$) Then
                    GlobalVar w$, SS$
                ElseIf LastErNum = 0 Then
                                    
                    SyntaxError
                    interpret = False
                    Exit Function
                    Else
                   Exit Do  '???
                End If
          
            Else
            ' one now option
                If GetVar(bstack, w$, V) Then
                        If IsStrExp(bstack, b$, SS$) Then
                             CheckVar var(V), SS$
                        Else
                            NoValueForvariable w$
                        Exit Do
                        End If
                Else
                    Nosuchvariable w$
                End If
        End If
End If
          
Case 4
If FastSymbol(b$, "=") Then '................................
           
            If GetVar(bstack, w$, V) Then
                If IsExp(bstack, b$, p) Then
                var(V) = Int(p)
                Else
                  MissNumExpr
                Exit Do
                End If
            ElseIf IsExp(bstack, b$, p) Then
                GlobalVar w$, p
                ElseIf LastErNum = 0 Then
                                
                SyntaxError
                interpret = False
                Exit Function
                Else
               Exit Do
            End If
 Else
    If FastSymbol(b$, "+=") Then
    SS$ = "+"
    ElseIf FastSymbol(b$, "/=") Then
    SS$ = "/"
    ElseIf FastSymbol(b$, "-=") Then
    SS$ = "-"
    ElseIf FastSymbol(b$, "*=") Then
    SS$ = "*"
    ElseIf IsOperator(b$, "++") Then
    SS$ = "++"
    ElseIf IsOperator(b$, "--") Then
    SS$ = "--"
    ElseIf IsOperator(b$, "-!") Then
    SS$ = "-!"
         ElseIf IsOperator(b$, "~") Then
        SS$ = "!!"
    ElseIf FastSymbol(b$, "<=") Then
    SS$ = "="
    End If
        If SS$ = "" Then
                 MyEr "No value for variable " & w$, "����� ���� � ��������� " & w$
                    interpret = False
                     Exit Function
    End If
    If GetVar(bstack, w$, V) Then
        If Len(SS$) = 1 Then
                    If IsExp(bstack, b$, p) Then
                            On Error Resume Next
                            Select Case SS$
                            Case "="
                            var(V) = Int(p)
                                Case "+"
                                var(V) = Int(p) + var(V)
                                Case "*"
                                 var(V) = Int(Int(p) * var(V))
                                Case "-"
                                var(V) = var(V) - Int(p)
                                Case "/"
                                If p = 0 Then
                                   interpret = False
                                 Exit Function
                                End If
                                 var(V) = var(V) \ Int(p)
                                 Case "!"
                                 var(V) = -1 - (var(V) <> 0)
                            End Select
                            If Err.Number = 6 Then
                            interpret = False
                            Exit Function
                            End If
                If VarType(var(V)) <> vbLong Then var(V) = MyRound(var(V), 13)
                    Else
                                   interpret = False
                                 Exit Function
                    End If
        Else
        If SS$ = "++" Then
        var(V) = 1 + var(V)
        ElseIf SS$ = "--" Then
        var(V) = var(V) - 1
        ElseIf SS$ = "-!" Then
        var(V) = -var(V)
        Else

                      var(V) = -1 - (var(V) <> 0)
        End If
        End If
    Else
                   interpret = False
        Exit Function
    End If
End If
Case 5

If neoGetArray(bstack, w$, pppp) Then
    If FastSymbol(b$, ")") Then
    'need to found an expression
        If FastSymbol(b$, "=") Then
            If IsExp(bstack, b$, p) Then
                If Not bstack.LastObj Is Nothing Then
                    bstack.LastObj.CopyArray pppp
                    Set bstack.LastObj = Nothing
                    GoTo loopcontinue1
                End If
            Else
                SyntaxError
            End If
            interpret = False
            Exit Function
        End If
        End If
If Not NeoGetArrayItem(pppp, bstack, w$, V, b$) Then interpret = False: HERE$ = ohere$: Exit Function
On Error Resume Next
If MaybeIsSymbol(b$, ":+-*/!") Then
With pppp
        If IsOperator(b$, "++") Then
            .item(V) = .item(V) + 1
            GoTo loopcontinue1
        ElseIf IsOperator(b$, "--") Then
            .item(V) = .item(V) - 1
            GoTo loopcontinue1
        ElseIf IsOperator(b$, "+=") Then
            If Not IsExp(bstack, b$, p) Then interpret = False: HERE$ = ohere$: Exit Function
            .item(V) = .item(V) + p
        ElseIf IsOperator(b$, "-=") Then
            If Not IsExp(bstack, b$, p) Then interpret = False: HERE$ = ohere$: Exit Function
            .item(V) = .item(V) - p
        ElseIf IsOperator(b$, "*=") Then
            If Not IsExp(bstack, b$, p) Then interpret = False: HERE$ = ohere$: Exit Function
            .item(V) = .item(V) * p
        ElseIf IsOperator(b$, "/=") Then
            If Not IsExp(bstack, b$, p) Then interpret = False: HERE$ = ohere$: Exit Function
            If p = 0 Then
             MyEr "division by zero", "�������� �� �� �����"
             Else
             .item(V) = pppp.item(V) / p
            End If
        ElseIf IsOperator(b$, "-!") Then
            .item(V) = -.item(V)
            GoTo loopcontinue1
        ElseIf IsOperator(b$, "~") Then
            .item(V) = -1 - (.item(V) <> 0)
            GoTo loopcontinue1
      ElseIf FastSymbol(b$, ":=") Then

    If IsExp(bstack, b$, p) Then
        .item(V) = p
    ElseIf IsStrExp(bstack, b$, SS$) Then
      If Not IsObject(.item(V)) Then
          .item(V) = SS$
          Else
        CheckVar .item(V), SS$
        
        End If

    Else
        Exit Do
    End If
    If FastSymbol(b$, ",") Then V = V + 1: GoTo contarr1
    GoTo loopcontinue1
        End If
.item(V) = MyRound(.item(V), 13)
GoTo loopcontinue1
End With
End If


If IsOperator(b$, ".") Then

If Typename(pppp.item(V)) = "Group" Then
interpret = SpeedGroup(bstack, pppp, "", w$, b$, V)
GoTo loopcontinue1
End If

ElseIf Not FastSymbol(b$, "=") Then
HERE$ = ohere$: Exit Function
End If

If Not IsExp(bstack, b$, p) Then HERE$ = ohere$: Exit Function
pppp.item(V) = p
Do While FastSymbol(b$, ",")
If pppp.UpperMonoLimit > V Then
V = V + 1
If Not IsExp(bstack, b$, p) Then HERE$ = ohere$: Exit Function
pppp.item(V) = p
Else
Exit Do
End If
Loop
Else
interpret = False: HERE$ = ohere$: Exit Function
End If
Case 6
If neoGetArray(bstack, w$, pppp) Then
    If FastSymbol(b$, ")") Then
    'need to found an expression
        If FastSymbol(b$, "=") Then
            If IsStrExp(bstack, b$, SS$) Then
                If Not bstack.LastObj Is Nothing Then
                    bstack.LastObj.CopyArray pppp
                    Set bstack.LastObj = Nothing
                    GoTo loopcontinue1
                End If
            Else
                SyntaxError
            End If
               interpret = False
            Exit Function
        End If
        End If
If Not NeoGetArrayItem(pppp, bstack, w$, V, b$) Then interpret = False: HERE$ = ohere$: Exit Function
On Error Resume Next
If Not FastSymbol(b$, "=") Then
    If FastSymbol(b$, ":=") Then
contarr1:
    SS$ = Left$(aheadstatus(b$), 1)
        If SS$ = "S" Then
        If Not IsStrExp(bstack, b$, SS$) Then interpret = False: HERE$ = ohere$: Exit Function
        Else
        If Not IsExp(bstack, b$, p) Then interpret = False: HERE$ = ohere$: Exit Function
        SS$ = Trim$(Str$(p))
        End If
             If Not IsObject(pppp.item(V)) Then
          pppp.item(V) = SS$
          Else
        CheckVar pppp.item(V), SS$
        
        End If
        Do While FastSymbol(b$, ",")
        If pppp.UpperMonoLimit > V Then
        V = V + 1
          SS$ = Left$(aheadstatus(b$), 1)
                        If SS$ = "S" Then
        If Not IsStrExp(bstack, b$, SS$) Then interpret = False: HERE$ = ohere$: Exit Function
        Else
        If Not IsExp(bstack, b$, p) Then interpret = False: HERE$ = ohere$: Exit Function
        SS$ = Trim$(Str$(p))
        End If
        
                If Not IsObject(pppp.item(V)) Then
                  pppp.item(V) = SS$
                  Else
                CheckVar pppp.item(V), SS$
                
                End If
        Else
        Exit Do
        End If
        Loop
   
     
        
    Else
    interpret = False: HERE$ = ohere$: Exit Function
    End If
Else
        If Not IsStrExp(bstack, b$, SS$) Then interpret = False: HERE$ = ohere$: Exit Function
        
        
        If Not IsObject(pppp.item(V)) Then
          pppp.item(V) = SS$
          Else
        CheckVar pppp.item(V), SS$
        
        End If
        Do While FastSymbol(b$, ",")
        If pppp.UpperMonoLimit > V Then
        V = V + 1
                If Not IsStrExp(bstack, b$, SS$) Then HERE$ = ohere$: Exit Function
        
                If Not IsObject(pppp.item(V)) Then
                  pppp.item(V) = SS$
                  Else
                CheckVar pppp.item(V), SS$
                
                End If
        Else
        Exit Do
        End If
        Loop
End If
Else
interpret = 0: HERE$ = ohere$: Exit Function
End If
Case 7
If neoGetArray(bstack, w$, pppp) Then
    If FastSymbol(b$, ")") Then
    'need to found an expression
        If FastSymbol(b$, "=") Then
            If IsStrExp(bstack, b$, SS$) Then
                If Not bstack.LastObj Is Nothing Then
                    bstack.LastObj.CopyArray pppp
                    Set bstack.LastObj = Nothing
                    GoTo loopcontinue1
                End If
            Else
                SyntaxError
            End If
              interpret = False
            Exit Function
        End If
        End If
If Not NeoGetArrayItem(pppp, bstack, w$, V, b$) Then interpret = False: HERE$ = ohere$: Exit Function
On Error Resume Next
If MaybeIsSymbol(b$, "+-*/!") Then
If IsOperator(b$, "++") Then
pppp.item(V) = pppp.item(V) + 1
ElseIf IsOperator(b$, "--") Then
pppp.item(V) = pppp.item(V) - 1
ElseIf IsOperator(b$, "+=") Then
If Not IsExp(bstack, b$, p) Then interpret = False: HERE$ = ohere$: Exit Function
pppp.item(V) = pppp.item(V) + Int(p)
ElseIf IsOperator(b$, "-=") Then
If Not IsExp(bstack, b$, p) Then interpret = False: HERE$ = ohere$: Exit Function
pppp.item(V) = pppp.item(V) - Int(p)
ElseIf IsOperator(b$, "*=") Then
If Not IsExp(bstack, b$, p) Then interpret = False: HERE$ = ohere$: Exit Function
pppp.item(V) = pppp.item(V) * Int(p)
ElseIf IsOperator(b$, "/=") Then
If Not IsExp(bstack, b$, p) Then interpret = False: HERE$ = ohere$: Exit Function
If p = 0 Then
 MyEr "division by zero", "�������� �� �� �����"
 Else
 pppp.item(V) = Int(pppp.item(V) / Int(p))
End If
ElseIf IsOperator(b$, "-!") Then
pppp.item(V) = -pppp.item(V)
ElseIf IsOperator(b$, "~") Then
pppp.item(V) = -1 - (pppp.item(V) <> 0)
End If
GoTo loopcontinue1
End If
If Not FastSymbol(b$, "=") Then HERE$ = ohere$: Exit Function
If Not IsExp(bstack, b$, p) Then HERE$ = ohere$: Exit Function
p = Int(p)
If Err.Number > 0 Then interpret = False: HERE$ = ohere$: Exit Function
pppp.item(V) = p
Do While FastSymbol(b$, ",")
If pppp.UpperMonoLimit > V Then
V = V + 1
If Not IsExp(bstack, b$, p) Then HERE$ = ohere$: Exit Function
pppp.item(V) = p
Else
Exit Do
End If
Loop
Else
interpret = False: HERE$ = ohere$: Exit Function
End If
Case Else
If MaybeIsSymbol(b$, ",-+*/_!@()[];<>|~`'\") Then
SyntaxError
End If
End Select
loopcontinue1:
Loop
HERE$ = ohere$
If LastErNum = -2 Then
sss = CLng(Execute(bstack, b$, True))
b$ = ""
interpret = False

Exit Function
ElseIf LastErNum <> -0 Then
b$ = " "
End If
interpret = b$ = ""
End Function
'
Function Execute(bstack As basetask, b$, Once As Boolean, Optional linebyline As Boolean, Optional loopthis As Boolean = False) As Long
Dim di As Object
If mybreakkey Then
                TaskMaster.Dispose
             NOEXECUTION = False
             MOUT = False
            
           b$ = "@Start : error {},{} "
           ' '{Break},{�������}"
           Once = False
           k1 = 0
                MyDoEvents0 bstack.Owner
               MyEr "", ""
               Else
 If myexit(bstack) Then Execute = 1: Exit Function
End If
Set di = bstack.Owner
Dim myobject As Object
Dim pppp As mArray, bb$, ec$, i As Long, jump As Boolean, ohere$, slct As Long, sp As Double, sw$, ok As Boolean, IFCTRL As Long
If linebyline Then IFCTRL = bstack.IFCTRL: jump = bstack.jump
Dim w$, LLL As Long, sss As Long, V As Long, p As Double, SS$, lbl As Boolean, DUM As Boolean, st As Double, bs As basetask
Dim y As Double, sx As Double, VarStat As Boolean, NewStat As Boolean
Dim x1 As Long, y1 As Long, x2 As Long, y2 As Long, sbb$, nd&, Lang As Long, kolpo As Boolean
ohere$ = HERE$   ' here$ is global but i want to include to the basetask class some day...
UINK$ = ""  ' ��� ���� �� �����...��;
If loopthis Then Execute = 2 Else Execute = 1
If b$ = "" Then
checkrefresh:
Exit Function

End If
sss = Len(b$): lbl = True
' This is the main loop, if we consume commands then Len(B$) will be smaller.
' We have to change LLL if we put inline code
Do While Len(b$) <> LLL

        If NOEXECUTION Then
            MyEr "", ""
            k1 = 0
            REFRESHRATE = 40
            SLOW = False
            extreme = False
            If MOUT Then
                        TaskMaster.Dispose
                        NOEXECUTION = False
                        MOUT = False
                        
                        b$ = "@Start : error {},{} "
                        Once = False
                        MyDoEvents0 bstack.Owner
                        MyEr "", ""
                        LLL = 0
                Else
                        MyErMacro b$, "Escape", "������� ���������"
                        If Once Then
                                    b$ = vbCrLf + b$   ' this cause troubles...
                                    Execute = 0
                        Else
                                    Once = True
                                    Execute = 1
                        End If
                        Exit Function
                End If
        End If


If trace Or SLOW Then
If trace Then
Sleep 10
MyDoEvents0 di   ' change from simple to version 2\ change to mydoevents0
Else
MyDoEvents1 di
End If

End If
again1:
LLL = Len(b$)
If MaybeIsSymbol(b$, "=") Then
b$ = Mid$(Trim$(b$), 2)
If (InStr(bstack.OriginalName$, "(") > 1) Then   ' return from a function no error checking
x1 = 0
Do
    If IsExp(bstack, b$, p) Then
    If x1 = 0 Then If MaybeIsSymbol(b$, ",") Then x1 = 1: Set pppp = New mArray: pppp.PushDim (1): pppp.PushEnd
    If x1 = 0 Then
            If Len(bstack.OriginalName$) > 3 Then
                    If Mid$(bstack.OriginalName$, Len(bstack.OriginalName$) - 2, 1) = "$" Then
                        MissStringExpr
                        Exit Do
                    End If
                End If
             If Right$(bstack.OriginalName$, 3) = "%()" Then p = Int(p)
             Set bstack.FuncObj = bstack.LastObj
             Set bstack.LastObj = Nothing
             bstack.FuncValue = p
    Else
            pppp.SerialItem 0, x1, 9
            If bstack.LastObj Is Nothing Then
                pppp.item(x1 - 1) = p
            Else
                Set pppp.item(x1 - 1) = bstack.LastObj
                Set bstack.LastObj = Nothing
            End If
            bstack.FuncValue = p
            x1 = x1 + 1
                         
    End If
    ElseIf IsStrExp(bstack, b$, SS$) Then
        If x1 = 0 Then If MaybeIsSymbol(b$, ",") Then x1 = 1: Set pppp = New mArray: pppp.PushDim (1): pppp.PushEnd
        If x1 = 0 Then
            If Len(bstack.OriginalName$) > 3 Then
                If Mid$(bstack.OriginalName$, Len(bstack.OriginalName$) - 2, 1) <> "$" Then
                     MissNumExpr
                     Execute = False
                     Exit Function
                End If
            Else
                MissNumExpr
                Execute = 0
                Exit Function
            End If
            Set bstack.FuncObj = bstack.LastObj
            Set bstack.LastObj = Nothing
            bstack.FuncValue = SS$
        Else
            pppp.SerialItem 0, x1, 9
            If bstack.LastObj Is Nothing Then
                pppp.item(x1 - 1) = SS$
            Else
                Set pppp.item(x1 - 1) = bstack.LastObj
                Set bstack.LastObj = Nothing
            End If
            x1 = x1 + 1
            bstack.FuncValue = SS$
                        
        End If
    End If
    Loop Until Not FastSymbol(b$, ",")
    If x1 > 0 Then
     pppp.SerialItem 0, x1, 9
     Set bstack.FuncObj = pppp
     Set pppp = New mArray
     Set bstack.LastObj = Nothing
     If VarType(bstack.FuncValue) = 5 Then
     bstack.FuncValue = 0
     Else
     bstack.FuncValue = ""
     End If
    End If
    x1 = 0
End If
ElseIf MaybeIsSymbol(b$, "{") Then
b$ = Mid$(Trim$(b$), 2)
If MaybeIsSymbol(b$, "}") Then
b$ = Mid$(Trim$(b$), 2)
sss = Len(b$)
 GoTo again1
''GoTo loopcontinue
End If
If executeblock(Execute, bstack, b$, Once, kolpo) Then Exit Function

If kolpo Then ec$ = block(b$)
If Execute = 2 And b$ <> "" Then Exit Function

If Not FastSymbol(b$, "}") Then Execute = 0: Exit Function

If b$ = "" Then Exit Function
sss = LLL  'basic...


    End If
If MaybeIsSymbol(b$, "\'") Then
    NewStat = False
    VarStat = False
SetNextLine b$
 sss = Len(b$)
lbl = True
 GoTo again1
End If

If FastSymbol(b$, vbCrLf) Then
    If Trim(b$) = "" Then b$ = "": Exit Function
    NewStat = False
    VarStat = False
    sss = LLL: lbl = True: jump = False
    If IsNumberLabel(b$, w$) Then sss = Len(b$): sss = LLL: lbl = False: jump = False:  If sss = 0 Then sss = 2: b$ = vbCrLf
    UINK$ = ""
Else
    If lbl Then If IsNumberLabel(b$, w$) Then sss = Len(b$): sss = LLL: jump = False: If sss = 0 Then sss = 2: b$ = vbCrLf
End If
If VarStat Or NewStat Then If FastSymbol(b$, ",") Then sss = LLL: lbl = False: jump = False
If FastSymbol(b$, ":") Then
If linebyline Then Exit Do
NewStat = False: VarStat = False: sss = LLL: lbl = False: jump = False:  If sss = 0 Then sss = 2: b$ = vbCrLf
End If

again2:
If MaybeIsSymbol2(b$, "@") Then w$ = "": GoTo parsecommand
again3:
Select Case IsLabelDot(HERE$, b$, w$)
Case 2
MyEr "No with reference in left side of assignment", "��� �� ������� ���� �������� �����"
Execute = 0
Exit Function
Case 1

    If sss = LLL Then
If lbl And IsOperator(b$, ":") Then
If VarStat Or NewStat Then b$ = w$ + " :" + b$: sss = Len(b$): GoTo again1
sw$ = GetNextLine(b$)
If Trim$(sw$) <> "" Then
If MaybeIsSymbol(sw$, "\") Or MaybeIsSymbol(sw$, "'") Then
LLL = Len(b$): sss = LLL: GoTo again1
Else
b$ = ": " + sw$ + vbCrLf + b$
End If
Else
LLL = Len(b$): sss = LLL: GoTo again1
End If

End If
        Lang = codeW(w$)
        '' w$ = myUcase(w$)
        If Trim(w$) = "" Then
        Execute = 1
        Exit Function
        End If
      
 ' trace here...
  If trace And (bstack.Process Is Nothing) Then
    Form2.Label1(0) = HERE$
    Form2.Label1(1) = w$
    Form2.Label1(2) = GetStrUntil(vbCrLf, b$ & vbCrLf, False)
    sbb$ = GetNextLine((SB(bstack.OriginalCode)))
    If Left$(sbb$, 10) = "'11001EDIT" Then
    
    TestShowSub = Mid$(SB(bstack.OriginalCode), Len(sbb$) + 3)
    Else
    If bstack.OriginalCode <> 0 Then
     TestShowSub = SB(bstack.OriginalCode)
     Else
     TestShowSub = b$
     End If
     End If
''TestShowStart = rinstr(TestShowSub, B$) - 1
    If bstack.addlen Then
        If Len(TestShowSub) - bstack.addlen > 0 Then
       TestShowStart = rinstr(Left$(TestShowSub, Len(TestShowSub) - bstack.addlen), Mid$(b$, 2)) - 1
        Else
        TestShowStart = 1
        End If
     Else
        TestShowStart = rinstr(TestShowSub, b$)
        End If
  If TestShowStart <= 0 Then
  TestShowStart = rinstr(TestShowSub, Mid$(b$, 2)) - 1
  End If
    
    Set Form2.Process = bstack
    stackshow bstack
    If Not Form1.Visible Then
    Form1.Show , Form5   'OK
    End If

    If STbyST Then
    
        STbyST = False
        If Not STEXIT Then
        If Not STq Then
        Form2.gList4.listindex = 0
        End If
        End If
        Do
        BLOCKkey = False
''        k1 = 0

        ''MyDoEvents1 Form1
    If di.Visible Then di.refresh
        ProcTask bstack
        
       ''
           Loop Until STbyST Or STq Or STEXIT Or NOEXECUTION Or myexit(bstack)
            If Not STEXIT Then
        If Not STq Then
        Form2.gList4.listindex = 0
        End If
        End If
        STq = False
        If STEXIT Then
        NOEXECUTION = True
        trace = False
        STEXIT = False
        Execute = 0
        Exit Function
        End If
    End If
Sleep 5
   '' SleepWaitNO 5
    If STEXIT Then
    
    trace = False
    STEXIT = False
    Execute = 0
    Exit Function
    Else
    
    End If
End If
If Left$(w$, 1) = "." Then
 SS$ = w$
IsLabel bstack, SS$, w$
GoTo varonly
End If
        Select Case w$

            Case "TARGET", "������"
            If VarStat Or NewStat Then GoTo errstat
                  If Abs(IsLabel(bstack, b$, w$)) = 1 Then
                    If Not GetVar(bstack, w$, V) Then
                     V = GlobalVar(w$, 0, , VarStat)

                               
                    End If
                Else
                    Execute = 0
                    Exit Function
                End If
                If Not FastSymbol(b$, ",") Then
                    Execute = 0
                    Exit Function
                ElseIf IsStrExp(bstack, b$, bb$) Then
                If bb$ = "" Then Execute = 0: Exit Function
                With players(GetCode(di))
               '' SetTextSZ di, Sz
               '' LCT di, yPos, xPos
                x1 = 1
                y1 = 1
                x2 = -1
                y2 = -1
                nd& = 0
                sbb$ = ""
         
                If FastSymbol(b$, ",") Then If IsExp(bstack, b$, p) Then x1 = Abs(p) Mod (.mx + 1)
                If FastSymbol(b$, ",") Then If IsExp(bstack, b$, p) Then y1 = Abs(p) Mod (.My + 1)
                If FastSymbol(b$, ",") Then If IsExp(bstack, b$, p) Then x2 = CLng(p)
                If FastSymbol(b$, ",") Then If IsExp(bstack, b$, p) Then y2 = CLng(p)
                If FastSymbol(b$, ",") Then If IsExp(bstack, b$, p) Then nd& = Abs(p)
                If FastSymbol(b$, ",") Then If Not IsStrExp(bstack, b$, sbb$) Then Execute = 0: Exit Function
                Targets = False
                MyDoEvents1 Form1
       
                ReDim Preserve q(UBound(q()) + 1)
                q(UBound(q()) - 1) = BoxTarget(bstack, x1, y1, x2, y2, sbb$, nd&, bb$, .Xt, .Yt, .uMineLineSpace)
                End With
                var(V) = UBound(q()) - 1
                Targets = True
                ElseIf IsExp(bstack, b$, p) Then
                  q(var(V)).enable = Not (p = 0)
                  RTarget bstack, q(var(V))
                Else
                  Execute = 0
                  Exit Function
                End If
          
        Case "SCAN", "������"
If VarStat Or NewStat Then GoTo errstat
             ClearJoyAll
             PollJoypadk
             
            If Not Targets Then
            If IsExp(bstack, b$, p) Then
            End If
            Sleep 10: MyDoEvents0 di
            Else
                If di.Visible = False Then di.Visible = True
                NoAction = False
                nomore = True
                If IsExp(bstack, b$, p) Then
                y = Timer + p
                x1 = Form1.lockme
                Form1.lockme = False
                Do
                x1 = BLOCKkey
                 BLOCKkey = True
                MyDoEvents0 Form1
                BLOCKkey = x1
                If exWnd <> 0 Then
                SS$ = mytitle$(bstack)
          
                
               
                End If
                If FKey > 0 Then
                If FK$(FKey) <> "" Then
                b$ = FK$(FKey) + b$
                FKey = 0
                Exit Do
                End If
                End If
                Loop Until NoAction Or Timer > y Or myexit(bstack) Or bstack.IamThread
                Form1.lockme = x1

                Else
                Do
                MyDoEvents0 Form1

                If exWnd <> 0 Then
                SS$ = mytitle$(bstack)
                End If
                If FKey > 0 Then
                If FK$(FKey) <> "" Then
                b$ = FK$(FKey) + b$
                FKey = 0
                Exit Do
                End If
                End If
                Loop Until NoAction Or myexit(bstack)
                End If
                nomore = False
                End If
        Case "REFRESH", "��������"
        If VarStat Or NewStat Then GoTo errstat
        If IsLabelSymbolNew(b$, "������", "TEST", Lang) Then
        MyDoEvents1 di
        ElseIf IsExp(bstack, b$, p) Then
                If p = 0 Then
                k1 = uintnew(timeGetTime + REFRESHRATE)
                    Else
                    
                       REFRESHRATE = uintnew(p)
                    k1 = 0
MyDoEvents1 di

                     End If
                Else
                
    ' k1 = 0
      '          MyDoEvents1 di
     ' RRCOUNTER = 1
      If di.Visible Then di.refresh
      
                  MyDoEvents
        
            End If
       
                         If exWnd <> 0 Then
                    SS$ = mytitle$(bstack)
                End If
       
                          If FKey > 0 Then
                    If FK$(FKey) <> "" Then
                    MKEY$ = MKEY$ & FK$(FKey)
                         ''   b$ = vbcrlf + "set " + FK$(FKey) + vbCrLf + b$
                    End If
                End If
                FKey = 0
Case "����", "THREAD"
If VarStat Or NewStat Then GoTo errstat

     
If IsLabelSymbolNew(b$, "����", "THIS", Lang) Then
      If bstack.Process Is Nothing Then
                b$ = ""
                MyEr "Clause This can't used outside a thread", "� ���� AYTO ��� ������ �� �������������� ��� ��� ��� ����"
                Execute = 0: Exit Function
                Once = False
            ElseIf IsLabelSymbolNew(b$, "�����", "ERASE", Lang) Then
         Set bstack.Process.Process = Nothing

                b$ = "" ' get lost now
            ElseIf IsLabelSymbolNew(b$, "�����", "HOLD", Lang) Then
                bstack.Process.busy = True

            ElseIf IsLabelSymbolNew(b$, "������", "RESTART", Lang) Then
                bstack.Process.busy = False
                b$ = ""
            ElseIf IsLabelSymbolNew(b$, "����", "INTERVAL", Lang) Then
                                 If IsExp(bstack, b$, p) Then
                                     If p < 2 Then p = 2
                                     
                                     bstack.Process.Interval = p
                                     Else
                                     b$ = ""
                                     MyEr "Expected number for interval, miliseconds", "�������� ������ ��� ������ �������� ����������� ��������� ������� (����� �� �������� �������������)"
                                     Execute = 0: Exit Function
                                End If
               Else
                                    b$ = ""
                                    MyEr "can't find ERASE or HOLD or RESTART or INTERVAL clause", "��� ����� �� ��� ��� ���� �� ����� � �� ����� � �� ������ � �� ����"
                                    Execute = 0: Exit Function
            End If
            
   
            Else
                       If linebyline Then
          b$ = w$ + " " + b$
        Execute = Execute(bstack, b$, Once, False)
         Exit Do
        End If
            ok = False
 If Not I2(bstack, w$, b$, ok, Lang) Then Execute = 0: Exit Function
      ''     If Not Identifier(bstack, w$, B$) Then Execute = 0: Exit Function
            If Left$(HERE$ & "#", 1) = "!" Then HERE$ = Mid$(HERE$, 2): ohere$ = HERE$
            End If
        Case "LOOP", "�������"
        
        If Once = True Then Execute = 0: Exit Function
        If VarStat Or NewStat Then GoTo errstat
            loopthis = True
            Execute = 2
       Case "BREAK", "�������"
       If VarStat Or NewStat Then GoTo errstat
                  b$ = "BREAK"
           Once = True
        Execute = 2
        Exit Function
       Case "CONTINUE", "��������"
        If VarStat Or NewStat Then GoTo errstat
           If Execute <> 2 Then
              b$ = "CONTINUE"
           Once = True
           Execute = 3
         
           Else
           b$ = ""
           
        End If
          Exit Function
       Case "RESTART", "������"
       If VarStat Or NewStat Then GoTo errstat
         b$ = ""
        Execute = 2
       
       Exit Function
       Case "RETURN", "���������"
       If IsStrExp(bstack, b$, SS$) Then
            append_table bstack, SS$, b$, True, Lang
        Else
                Once = False
                b$ = Chr$(0)
                Execute = 2
                
                Exit Function
    End If
       Case "END", "�����"
               If VarStat Or NewStat Then GoTo errstat
               If IsLabelSymbolNew(b$, "��������", "SUB", Lang) Then
                Once = False
                b$ = Chr$(0)
                Execute = 2
                Exit Function
                Else
                b$ = ""   ' no more syntax error
                Execute = 1
                Exit Function
                End If
        Case "������", "EXIT"
         ''\\"SUB", "�������"
        If VarStat Or NewStat Then GoTo errstat
        If IsLabelSymbolNew(b$, "��������", "SUB", Lang) Then
                Once = False
                b$ = Chr$(0)
                Execute = 2
                Exit Function
        ElseIf IsLabelSymbolNew(b$, "���", "FOR", Lang) Then
         Once = False
                b$ = "NEXT"
        Execute = 2
                Exit Function
        ElseIf IsLabelSymbolNew(b$, "���������", "PRINTING", Lang) Then
        If bstack.toprinter Then
                    pnum = 0
                    oprinter.ClearUp
                    Form1.PrinterDocument1.Picture = LoadPicture("")
                    Set bstack.Owner = Form1.DIS
                    bstack.toprinter = False
                    SetNormal bstack.Owner
        
        End If
                    b$ = ""
           Once = True
             Else
 If Execute <> 2 Then Execute = 1 Else Execute = 3
            b$ = ""
           Once = True
           Exit Function
           End If
           
           
        Case "FOR", "���"
        If VarStat Or NewStat Then GoTo errstat
                  If linebyline Then
                  If Asc(b$) <> 32 Then
                
          b$ = w$ + " " + b$
          Else
          b$ = w$ + b$
          End If
        Execute = Execute(bstack, b$, Once, False)
         Exit Do
        End If
        
               If Once = True Then Execute = 0: Exit Function
               If IsStrExp(bstack, b$, w$) Then
               b$ = w$ + " " + b$
               End If
        x1 = Abs(IsLabelBig(bstack, b$, w$, , sbb$))
nd& = x1
        Select Case x1
        Case 1, 4 'FLOATING POINT
        
        If MaybeIsSymbol(b$, "<=") Then
         If FastSymbol(b$, "=") Then


         x1 = Abs(GetlocalVar(w$, x2)) * x1

         ElseIf FastSymbol(b$, "<=") Then
  x1 = Abs(GetVar(bstack, w$, x2, True)) * x1
         End If
         If x1 Then
            If VarType(var(x2)) = vbLong Then
            x1 = 8
             If IsExp(bstack, b$, p) Then
             On Error Resume Next
             var(x2) = CLng(p)
             If Err.Number = 6 Then
                 Execute = 0
        MyEr "OverFlow Long", "Y���������� �����"
        Exit Function
             End If
             End If
            Else
             If IsExp(bstack, b$, p) Then
             If x1 = 1 Then var(x2) = p Else var(x2) = Int(p)
             End If
             End If
            ElseIf IsExp(bstack, b$, p) Then
            If nd& > 1 Then p = Int(p)
              x2 = GlobalVar(w$, p, , VarStat)
                x1 = nd&
        Else
        
        Execute = 0
        Exit Function
        End If
        If IsLabelSymbolNew(b$, "���", "TO", Lang) Then
        If IsExp(bstack, b$, sp) Then
       sp = MyRound(sp, 13)
        p = MyRound(p, 13)
            If x1 > 1 Then sp = Int(sp)
                st = Sgn(sp - p)
                
        If IsLabelSymbolNew(b$, "���", "STEP", Lang) Then
        If IsExp(bstack, b$, st) Then
         If x1 > 1 Then st = Int(st)
         If Sgn(sp - p) = 0 Or st = 0 Then
        
         Else
         st = Abs(st)
         If sp < p Then

         If Fix(st) = st Then
         sp = sp - 1 + st / 2
         Else
              sx = Abs(((sp - p) / st))
               If sx = MyRound(sx) Then
                 sp = sp - MyRound(st / 2)
               ElseIf st < 1 Then
         sp = sp - 1 / EXP(18 - (Log(st + Abs(sp - p))) / Log(10))
         Else

         sp = p - Fix(sx) * st - st / 2
         End If
     
         End If
       Else
         If Fix(st) = st Then
         Else
         sx = Abs(((sp - p) / st))
         If sx = MyRound(sx) Then
         
         sp = sp + MyRound(st / 2)
         ElseIf st < 1 Then
         sp = sp + 1 / EXP(18 - (Log(st + Abs(sp - p))) / Log(10))
         Else
         sp = p + Fix(sx) * st + st / 2
         End If
         End If
        End If
         st = Sgn(sp - p) * st
         
         End If
     
        
     
        Else
        Execute = 0
        Exit Function
        End If
        End If
        If st = 0 Then sp = p
        If Not FastSymbol(b$, "{") Then
        '' this is the old like Basic For
        sw$ = b$
        SS$ = b$
          sx = p
    y1 = True
      bstack.RetStack.PushVal 0  ' RETURN LENGTH FROM END OF B$
      bstack.RetStack.PushStr w$   ' for check if is the right variable
  nd& = bstack.addlen
   slct = nd&
      GoTo contfor:
        Else
        y1 = False
        SS$ = block(b$) + "}"
        sw$ = SS$
        TraceStore bstack, nd&, b$, 1, slct  ' reusing slct variable
      
        If FastSymbol(b$, "}") Then
contfor:
        Execute = 1
        ok = False
        V = Len(b$)
        y2 = 0
If x1 = 1 Then
        Do
            TraceRestore bstack, slct
            If executeblock(Execute, bstack, SS$, Once, ok) Then
                    TraceRestore bstack, nd&
                    If Execute <> 1 Then
                        
                            b$ = SS$ + b$: Exit Function
                    End If
            Else
                    TraceRestore bstack, nd&
                    If Execute = 2 And SS$ <> "" And Not ok Then
                            If y1 And SS$ = "NEXT" Then
                                    If sx = p Then
                                            If Lang Then SS$ = "NEXT " + sbb$ Else SS$ = "������� " + sbb$
                                            If search2KIND(b$, SS$, x1, True) Then
                                                          b$ = Mid$(b$, x1 + Len(w$))
                                                          bstack.RetStack.DROP 2
                                                          sp = 0
                                                          y1 = 0
                                                          V = -1
                                                        ''  Set pppp = Nothing'     '''why
                                                          GoTo again1
                                             ElseIf Not Lang Then SS$ = "�м���� " + sbb$
                                                    If search2KIND(b$, SS$, x1, True) Then
                                                          b$ = Mid$(b$, x1 + Len(w$))
                                                          bstack.RetStack.DROP 2
                                                          sp = 0
                                                          y1 = 0
                                                          V = -1
                                                        ''  Set pppp = Nothing'     '''why
                                                          GoTo again1
                                                    Else
                                                            Execute = 0
                                                            MyEr "Can't find " + w$, "��� ����� �� ��� �o " + w$
                                                            Exit Function
                                                    End If
                                            End If
                                    End If
                                    Execute = 1: Exit Do
                            End If
                            b$ = SS$
                            Exit Function
                    End If
            End If
        
        If Not (ok Or MOUT) Or Execute = 3 Then
        Execute = 1
        SS$ = sw$
        p = p + st
        Else
        Exit Do
        End If
        If myexit(bstack) Then Execute = 1: Exit Do
        var(x2) = MyRound(p, 10)
        If st > 0 Then
        If p > sp Then Exit Do
        ElseIf st < 0 Then
        If p < sp Then Exit Do
        Else
        Exit Do
        End If
        Loop
ElseIf x1 > 4 Then
On Error GoTo LONGERR
y2 = p
x1 = sp
sss = st
sp = sss
Do
            TraceRestore bstack, slct
            If executeblock(Execute, bstack, SS$, Once, ok) Then
            TraceRestore bstack, nd&
            If Execute <> 1 Then
            
            b$ = SS$ + b$: Exit Function
            End If
            Else
            TraceRestore bstack, nd&
            If Execute = 2 And SS$ <> "" And Not ok Then
            If y1 And SS$ = "NEXT" Then
            If sx = p Then
            If Lang Then SS$ = "NEXT " + sbb$ Else SS$ = "������� " + sbb$
            If search2KIND(b$, SS$, x1, True) Then
            b$ = Mid$(b$, x1 + Len(w$))
            bstack.RetStack.DROP 2
            sss = sp
            sp = 0
            y1 = 0
            V = -1
            '' Set pppp = Nothing
            GoTo again1
            ElseIf Not Lang Then SS$ = "�м���� " + sbb$
            If search2KIND(b$, SS$, x1, True) Then
            b$ = Mid$(b$, x1 + Len(w$))
            bstack.RetStack.DROP 2
            sss = sp
            sp = 0
            y1 = 0
            V = -1
            '' Set pppp = Nothing
            GoTo again1
            Else
            Execute = 0
            MyEr "Can't find " + w$, "��� ����� �� ��� �o " + w$
            Exit Function
            End If
            End If
            End If
            Execute = 1: Exit Do
            
            End If
            b$ = SS$
            
            Exit Function
            End If
            End If
            
            If Not (ok Or MOUT) Or Execute = 3 Then
            Execute = 1
            SS$ = sw$
            y2 = y2 + sss
        
            Else
            Exit Do
            End If
            If myexit(bstack) Then Execute = 1: Exit Do
            On Error Resume Next
            var(x2) = y2
         If st > 0 Then
            If y2 > x1 Then Exit Do
            ElseIf st < 0 Then
            If y2 < x1 Then Exit Do
            Else
            Exit Do
            End If
            Loop
On Error Resume Next
sss = sp
Else
Do
            TraceRestore bstack, slct
            If executeblock(Execute, bstack, SS$, Once, ok) Then
            TraceRestore bstack, nd&
            If Execute <> 1 Then
            
            b$ = SS$ + b$: Exit Function
            End If
            Else
            TraceRestore bstack, nd&
            If Execute = 2 And SS$ <> "" And Not ok Then
            If y1 And SS$ = "NEXT" Then
            If sx = p Then
            If Lang Then SS$ = "NEXT " + sbb$ Else SS$ = "������� " + sbb$
            If search2KIND(b$, SS$, x1, True) Then
            b$ = Mid$(b$, x1 + Len(w$))
            bstack.RetStack.DROP 2
            sp = 0
            y1 = 0
            V = -1
            '' Set pppp = Nothing
            GoTo again1
            ElseIf Not Lang Then SS$ = "�м���� " + sbb$
                        If search2KIND(b$, SS$, x1, True) Then
            b$ = Mid$(b$, x1 + Len(w$))
            bstack.RetStack.DROP 2
            sp = 0
            y1 = 0
            V = -1
            '' Set pppp = Nothing
            GoTo again1
            Else
            Execute = 0
            MyEr "Can't find " + w$, "��� ����� �� ��� �o " + w$
            Exit Function
            End If
            End If
            End If
            Execute = 1: Exit Do
            
            End If
            b$ = SS$
            
            Exit Function
            End If
            End If
            
            If Not (ok Or MOUT) Or Execute = 3 Then
            Execute = 1
            SS$ = sw$
            p = p + st
            Else
            Exit Do
            End If
            If myexit(bstack) Then Execute = 1: Exit Do
            var(x2) = p

            If st > 0 Then
            If p > sp Then Exit Do
            ElseIf st < 0 Then
            If p < sp Then Exit Do
            Else
            Exit Do
            End If
            Loop
End If
        
        If Execute = 1 And y1 Then
        bstack.RetStack.DROP 1
        b$ = Right$(b$, bstack.RetStack.PopVal)
        ' now NEXT is responsible to get rid the stack (else stack is flushing with bstack)
        End If
        x2 = 0  ' need to erased - because reused
        y2 = 0
        
         If MOUT Then Execute = 0: Exit Function
        ok = True
        End If
        ''' ELSE MAKE AN OTHER FOR NEXT
        
        End If
        End If
        End If
      
        Else
        V = -1
        Set pppp = Nothing
        GoTo startwithgroup


        End If
        Case 5
  

                    If neoGetArray(bstack, w$, pppp) Then

                            If NeoGetArrayItem(pppp, bstack, w$, V, b$) Then
                                    If Typename(pppp.item(V)) = "Group" Then
startwithgroup:

                                      Execute = SpeedGroup(bstack, pppp, "FOR", w$, b$, V)
                                      If Execute = 0 Then
                                      Exit Function
                                      ElseIf Execute <> 1 And b$ <> "" Then
                                     Once = False
                                      Exit Function
                                     End If
                                        sss = Len(b$)
                                        GoTo loopagain
                     
                                    End If
                                MissingGroup
                                Else
                                NotExistArray
                            End If
                                Execute = 0
                                Exit Function
                                Else
                                
                                Execute = 0
                                Exit Function
                    End If
        
        End Select
        If Not ok Then
        Execute = 0
        Exit Function
        End If
        Case "NEXT", "�������"
        If IsLabel(bstack, b$, w$) Then
        If bstack.RetStack.StackItemType(1) = "S" Then
        SS$ = bstack.RetStack.PopStr
        If SS$ <> w$ Then
         bstack.RetStack.PushStr SS$
        MyEr "Missing the right NEXT", "����� �� ����� �������"
        Execute = 0
        Exit Function
        Else
            With bstack.RetStack
                .DROP 1
                .PushVal Len(b$)
                .PushStr SS$
            End With
         End If
               Exit Function
  
        End If
        Else
              MyEr "NEXT without FOR", "������� ����� ���"
        Execute = 0
        Exit Function
        End If
        
        Case "INLINE", "������"
        If VarStat Or NewStat Then GoTo errstat
               If Once = True Then Execute = 0: Exit Function
        If IsLabelSymbolNew(b$, "������", "CODE", Lang) Then
        If IsLabelDot(HERE$, b$, sw$) = 1 Then
                If GetSub(myUcase(sw$, True), nd&) Then
                                b$ = vbCrLf + SB(nd&) & b$
                   sss = Len(b$)
                   GoTo again1
                    ElseIf GetSub(HERE$ + sw$, nd&) Then
                                b$ = vbCrLf + SB(nd&) & b$
                   sss = Len(b$)
                        GoTo again1
                    End If
            Else
            GoTo errstat1
            End If
        Else
        If IsStrExp(bstack, b$, SS$) Then
        b$ = vbCrLf + SS$ & b$
           sss = Len(b$)
                
                GoTo again1
        End If
        End If
        Case "UPDATE", "��������"
        If bstack.UseGroupname <> "" Then
        
        b$ = ": set " + Left$(bstack.UseGroupname, Len(bstack.UseGroupname) - 1) + "=" + Left$(bstack.UseGroupname, Len(bstack.UseGroupname) - 1) + vbCrLf + b$
             sss = Len(b$)
             Else
             MyEr "Only in a group", "���� �� ��� �����"
             Execute = 0
             Exit Function
                End If
                GoTo again1
        Case "AFTER", "����"
        If VarStat Or NewStat Then GoTo errstat
                 If linebyline Then
          b$ = w$ + " " + b$
        Execute = Execute(bstack, b$, Once, False)
         Exit Do
        End If
               If Once = True Then Execute = 0: Exit Function
        If IsExp(bstack, b$, p) Then
        If FastSymbol(b$, "{") Then
        SS$ = block(b$) + vbCrLf & "thread this erase"
        sp = GetTaskId + 20000
        b$ = NLtrim$(Mid$(b$, 2))
            Set bs = New basetask
            bs.reflimit = bstack.reflimit
                        Set bs.Parent = bstack
         bstack.PushThread CLng(sp), "after"
        sThreadInternal bs, sp, 0, SS$, uintnew(p), HERE$, True
        Set bs = Nothing
    LLL = 0
       Execute = 1
       
        Else
        LLL = 0
        b$ = vbCrLf & "WAIT " & CStr(p) & ": " & b$
        Execute = 1
        End If
        End If
        
        Case "�����", "PART"
                 If linebyline Then
          b$ = w$ + " " + b$
        Execute = Execute(bstack, b$, Once, False)
         Exit Do
        End If
        If VarStat Or NewStat Then GoTo errstat
               If Once = True Then Execute = 0: Exit Function
        Execute = 0
        If FastSymbol(b$, "{") Then
        SS$ = block(b$)
        b$ = NLtrim$(Mid$(b$, 2))  ' cut the code...
          If IsLabelSymbolNew(b$, "��", "AS", Lang) Then
          ' search for variable name only
            If Abs(IsLabel(bstack, b$, w$)) = 1 Then
                If GetlocalVar(w$, V) Then ' exist...
                LLL = 0
                    If var(V) = 0 Then var(V) = True: b$ = vbCrLf + SS$ & vbCrLf + w$ & "=false : " & b$
                ' we have the name
                ElseIf GetVar(bstack, w$, V) Then ' exist...
                LLL = 0
                    If var(V) = 0 Then var(V) = True: b$ = vbCrLf + SS$ & vbCrLf + w$ & "=false : " & b$
                Else
                V = True
                GlobalVar w$, V, , VarStat
                LLL = 0
                b$ = vbCrLf + SS$ & vbCrLf + w$ & "=false : " & b$
                End If
                Execute = 1
                Else
            Exit Function
            End If
            Else
             Exit Function
        End If
            Else
            Exit Function
        End If

        
        Case "DO", "REPEAT", "���������", "���������"
        If VarStat Or NewStat Then GoTo errstat
                   If linebyline Then
          b$ = w$ + " " + b$
        Execute = Execute(bstack, b$, Once, False)
         Exit Do
        End If
               If Once = True Then Execute = 0: Exit Function
        If FastSymbol(b$, "{") Then
        V = Len(b$)
                  SS$ = block(b$) + "}"
                  TraceStore bstack, x1, b$, 1, y1
                  b$ = NLtrim$(Mid$(b$, 2))
                  ok = False
                      sss = Len(b$)
                    ec$ = SS$
                 ' FIND UNTIL
                 If IsLabelSymbolNew(b$, "�����", "UNTIL", Lang) Then
                      Execute = 1
                      TraceRestore bstack, y1
           Call executeblock(Execute, bstack, SS$, Once, ok)
           TraceRestore bstack, x1
                         If Execute = 0 Then
                            b$ = Space$(V - (Len(ec$) - Len(SS$)))  ' ����� ��� �� ��� �� �������� ������ �����!
                            '
                            Execute = 0: Exit Function
                            ElseIf Execute = 2 And SS$ <> "" And Not ok Then
                            b$ = SS$: Exit Function
                            
                            
                        End If
                        If Execute = 3 Then ok = False
                 If ok Or MOUT Then
                 If ok Then
                    ok = True
                    SS$ = GetNextLine(b$)  'FORGET ANY CODE TO THE RIGHT
                 Else
                     Exit Function
                 End If
                 Else
                 
                     
        sss = Len(b)
        
        w$ = b$
        If IsExp(bstack, b$, p) Then
         w$ = Left$(w$, Len(w$) - Len(b$))
        If Not p Then
        bb$ = w$
        ok = False
              Do
                 SS$ = ec$
                 w$ = bb$
                      Call executeblock(Execute, bstack, SS$, Once, ok)
                         If Execute = 0 Then
                    b$ = Space$(V - (Len(ec$) - Len(SS$)))
                 Execute = 0: Exit Function
                                      ElseIf Execute = 2 And SS$ <> "" And Not ok Then
                            b$ = SS$: Exit Function
                            
                 End If
                  If Execute = 3 Then ok = False
                 If ok Or MOUT Then Exit Do
                          DUM = IsExp(bstack, w$, p)
          Loop Until p = True
        End If
              End If
              End If
                 Else
                 ' play always
                 If IsLabelSymbolNew(b$, "�����", "ALWAYS", Lang) Then
                      Do
                 SS$ = ec$
                        Call executeblock(Execute, bstack, SS$, Once, ok)
                         If Execute = 0 Then
                    b$ = Space$(V - (Len(ec$) - Len(SS$)))
                 Execute = 0: Exit Function
                                             ElseIf Execute = 2 And SS$ <> "" And Not ok Then
                            b$ = SS$: Exit Function
                 End If
                 If ok Or MOUT Then Exit Do
                  Loop
 
                 
                 
                 
                 Else
                 
                 Execute = 0
                 Exit Function
                 End If
                 End If
            End If
            
        Case "���", "WHILE"
        
        If VarStat Or NewStat Then GoTo errstat
                   If linebyline Then
          b$ = w$ + " " + b$
        Execute = Execute(bstack, b$, Once, False)
         Exit Do
        End If
               If Once = True Then Execute = 0: Exit Function
        w$ = b$
        If IsExp(bstack, b$, p) Then
         w$ = Left$(w$, Len(w$) - Len(b$))
                If p = 0 Then
                 If FastSymbol(b$, "{") Then
                 w$ = block(b$)
                 b$ = NLtrim$(b$)
           If FastSymbol(b$, "}") Then
                b$ = LTrim(b$)
                 If b$ = "" Then Exit Function
                 GoTo again1
                 Else
                 b$ = LTrim(b$)
                 If b$ = "" Then Exit Function
                 GoTo again1
                 End If
                 Else
                 Exit Do
                 End If
                Else
                 If FastSymbol(b$, "{") Then
                 SS$ = block(b$) + "}"
                 TraceStore bstack, x1, b$, 1, y1
                 
                 ec$ = SS$
                 b$ = NLtrim$(Mid$(b$, 2))
                 sss = Len(b$)
                 bb$ = w$
                         Execute = 1
                         ok = False
                 Do
                 SS$ = ec$
                 w$ = bb$

                 TraceRestore bstack, y1
           If executeblock(Execute, bstack, SS$, Once, ok) Then
              TraceRestore bstack, x1
            b$ = SS$ & b$
           Exit Function
           Else
           TraceRestore bstack, x1
            If Execute = 2 And SS$ <> "" And Not ok Then
                            b$ = SS$: Exit Function
                            End If
           End If
                 If Execute = 3 Then ok = False
                 If ok Or MOUT Then Exit Do
        
                 DUM = IsExp(bstack, w$, p)
                 Loop Until p = 0 Or NOEXECUTION
                 
                 If MOUT Then Execute = 0: Exit Function
                 Else
                 sss = Len(b$)
                 End If
                 
                End If
        End If
        Case "����", "EVERY"
        If VarStat Or NewStat Then GoTo errstat
        If Once = True Then Execute = 0: Exit Function
                   If linebyline Then
          b$ = w$ + " " + b$
        Execute = Execute(bstack, b$, Once, False)
         Exit Do
        End If
        If IsExp(bstack, b$, p) Then
              If p <= 0 Then
                 If FastSymbol(b$, "{") Then
                 w$ = block(b$)
                 b$ = NLtrim$(Mid$(b$, 2))
                 sss = Len(b$)
                 Else
                 Exit Do
                 End If
                Else
                 If FastSymbol(b$, "{") Then
                 SS$ = block(b$) + "}"
                 ec$ = SS$
                 b$ = NLtrim$(Mid$(b$, 2))
                 sss = Len(b$)
      
                         Execute = 1
                         ok = False
                ' GET A TICK HERE
                sx = p
                 p = p + uintnew(timeGetTime)
                 Do
                 SS$ = ec$
               ''''''''''  w$ = bb$
                 Call executeblock(Execute, bstack, SS$, Once, ok)
                 If Execute = 0 Then   '''Execute(bstack, ss$, ok) = 0
                            If NOEXECUTION Then
                                            b$ = "START"
                                            Execute = 1
                                            ok = True
                                            Exit Do
                            End If
                              b$ = SS$ & b$
                            Execute = 0: Exit Function
                 End If
                 If ok Or MOUT Then Exit Do
                 If p < timeGetTime Then
                 p = (sx - (uintnew(timeGetTime) - p) \ sx) + uintnew(timeGetTime)
                 End If
 
            If bstack.IamThread Then k1 = uintnew(timeGetTime + REFRESHRATE)
If p > uintnew(timeGetTime) Then
            ''  If TaskMaster.Processing Then TaskMaster.TimerTick Else Sleep 1

             ProcTask2 bstack
                   While p > uintnew(timeGetTime)
         ProcTask2 bstack
                  ''  If TaskMaster.Processing Then TaskMaster.TimerTick Else Sleep 1
                    Wend
                    End If
                   p = sx + uintnew(timeGetTime)
                 Loop
                  If NOEXECUTION Then
                b$ = "START"
                Execute = 1
                ok = True
                Exit Do
                End If
                 If MOUT Then Execute = 0: Exit Function
                 Else
                 sss = Len(b$)
                 End If
                 
                End If
        End If
        Case "�����.����", "MAIN.TASK", "TASK.MAIN"
        If VarStat Or NewStat Then GoTo errstat
               If Once = True Then Execute = 0: Exit Function
              If linebyline Then
          b$ = w$ + " " + b$
        Execute = Execute(bstack, b$, Once, False)
         Exit Do
        End If
        ' only one task main
        If taskmainonly = True Then Execute = 0: Exit Function
        taskmainonly = True
        w$ = b$
        Execute = 1
         If IsExp(bstack, b$, p) Then
         If FastSymbol(b$, "{") Then
         SS$ = block(b$)
         sp = GetTaskId + 20000
            Set bs = New basetask
            bs.reflimit = bstack.reflimit
                        Set bs.Parent = bstack
              bstack.PushThread CLng(sp), "_multi"
         sThreadInternal bs, sp, 10, SS$, uintnew(-1), HERE$, True
         TaskMaster.Message CLng(sp), 3, CLng(uintnew(p))
      On Error Resume Next
        bstack.TaskMain = True
                Do
                
                TaskMaster.TimerTick
               '' mydoevents1 form1
               MyDoEvents0 di
          ''     MyDoEvents2 di
                ''TaskMaster.RestEnd1
                 bstack.TaskMain = bstack.Exist(CLng(sp), "_multi") = False
                
               
             Loop Until MOUT Or bstack.TaskMain Or NOEXECUTION Or TaskMaster.QueueCount < 2
     bstack.TaskMain = False
   If TaskMaster.PlayMusic Then mute = True
         End If
         If FastSymbol(b$, "}") Then
         End If
         End If
         taskmainonly = False
        If MOUT Then Execute = 0: Exit Function
        
        Case "ELSE", "������"
        If VarStat Or NewStat Then GoTo errstat
               If Once = True Then Execute = 0: Exit Function
        If IFCTRL = 0 Then
        SyntaxError
        Execute = 0
        Exit Function
        Else
                If (Not jump) Or IFCTRL = 2 Then
                 If FastSymbol(b$, "{") Then
                w$ = block(b$)
                b$ = NLtrim$(Mid$(b$, 2))
                Else
                SetNextLine b$
                lbl = True
                End If
                jump = False
                End If
                End If
                   IFCTRL = 0 ' NONEED ANYTHING AND ERROR FOR IF.ELSE AND ELSE
            
                sss = Len(b$)
        Case "TRY", "���"
        If VarStat Or NewStat Then GoTo errstat
               If Once = True Then Execute = 0: Exit Function
                 If linebyline Then
          b$ = w$ + " " + b$
        Execute = Execute(bstack, b$, Once, False)
        bstack.nokillvars = False
         Exit Do
        End If
        ' ���������
        i = Abs(IsLabel(bstack, b$, w$))
        
        Select Case i
        Case 0  ' new
          If FastSymbol(b$, "{") Then
  
         Execute = 1
         SS$ = "{" + block(b$) + "}"
        
            
            
       TraceStore bstack, x1, b$, 1
         
         b$ = NLtrim$(Mid$(b$, 2))
                     
                     Call executeblock(Execute, bstack, SS$, Once, ok)
          TraceRestore bstack, x1
   bstack.nokillvars = False
         Once = False
         NOEXECUTION = False
         NERR = False
         LastErNum = 0
            LastErName = ""
            LastErNameGR = ""
            Execute = 1
         End If
        
        
        Case 1, 4
        If FastSymbol(b$, "{") Then
        p = 0
         If Not GetlocalVar(w$, V) Then
         If Not GetVar(bstack, w$, V) Then
         V = GlobalVar(w$, p, , VarStat) '': GetlocalVar W$, v
         End If
         End If
         Execute = 1
         SS$ = "{" & block(b$) & "}"
          b$ = NLtrim$(Mid$(b$, 2))
                     Call executeblock(Execute, bstack, SS$, Once, ok)
     var(V) = Execute = 1
                 
         NOEXECUTION = False
         NERR = False
         LastErNum = 0
         End If
         Execute = 1
        End Select
        If MOUT Then Execute = 0: Exit Function
        Execute = 1
         Case "ELSE.IF", "������.��"
         If VarStat Or NewStat Then GoTo errstat
                If Once = True Then Execute = 0: Exit Function
       If IFCTRL = 0 Then
        SyntaxError
        Else
        
         If (Not jump) Or IFCTRL = 2 Then
         ' LOOK AHEAD...DO NOT PLAY THE LOGICAL EXPRESSION
         IFCTRL = 1
         SS$ = aheadstatus(b$, False, IFCTRL)
         b$ = Mid$(b$, IFCTRL)
                   If FastSymbol(b$, "{") Then
               w$ = block(b$)
             b$ = NLtrim$(Mid$(b$, 2))
              Else
                SetNextLine b$
                lbl = True
                End If
               jump = False
          
        Else   ' ONLY FOR NOT JUMP
        If IsExp(bstack, b$, p) Then
        IFCTRL = 1
        jump = (p = 0)
        Select Case Abs(IsLabel(bstack, b$, w$))  ' now w$ is Ucase
            Case 1
            Select Case w$
                Case "THEN", "����"
                If VarStat Or NewStat Then GoTo errstat
                       If Once = True Then Execute = 0: Exit Function
                             If jump Then
                    If FastSymbol(b$, "{") Then
                    w$ = block(b$)
                    b$ = NLtrim$(Mid$(b$, 2))
                    
                    Else
                    SetNextLine b$
                    lbl = True
                    End If
                    Else
                    IFCTRL = 2 ' NONEED ANYTHING BUT NOT ERROR FOR IF.ELSE AND ELSE
              End If
                
               Case "ELSE", "������"
               If VarStat Or NewStat Then GoTo errstat
                      If Once = True Then Execute = 0: Exit Function
                   '  IFCTRL = 1
                If Not jump Then      ' JUMP FALSE SKIP ELSE
                If FastSymbol(b$, "{") Then
                w$ = block(b$)
                b$ = NLtrim$(Mid$(b$, 2))
                Else
                 SetNextLine b$
                lbl = True
                End If
                IFCTRL = 0 ' NONEED ANYTHING AND ERROR FOR IF.ELSE AND ELSE
                End If
                sss = Len(b$)
                            Case "ELSE.IF", "������.��"
                            
                            If VarStat Or NewStat Then GoTo errstat
                                   If Once = True Then Execute = 0: Exit Function
                   '  IFCTRL = 1
                b$ = w$ & b$
                     
            Case Else
           
           Execute = 0
           Exit Function
            End Select
           Case Else
           Execute = 0
           Exit Function
        End Select
        Else
        ' error
        Execute = 0
         Exit Function
        End If
                End If
                End If
        sss = Len(b$)
        
        Case "IF", "��"
        If VarStat Or NewStat Then GoTo errstat
        If IsExp(bstack, b$, p) Then
          IFCTRL = 1           ' NEED THEN OR ELSE OR ELSE.IF
        jump = (p = 0)                    ' JUMP TRUE GOTO ELSE
        Select Case Abs(IsLabel(bstack, b$, w$))
            Case 1
            Select Case w$
                Case "THEN", "����"
                If VarStat Or NewStat Then GoTo errstat
                If jump Then
                    If FastSymbol(b$, "{") Then
                     If Once = True Then Execute = 0: Exit Function
                    w$ = block(b$)
                    b$ = NLtrim$(Mid$(b$, 2))
                    
                    Else
                    If Once Then
                    w$ = GetStrUntil(vbCrLf, b$, False)
                    Exit Function
                    Else
                    SetNextLine b$
                    lbl = True
                    End If
                   
                    End If
                    
                    Else
                    
                    IFCTRL = 2 ' NONEED ANYTHING BUT NOT ERROR FOR IF.ELSE AND ELSE
                    If Once Then
                    sss = Len(b$): GoTo again1
           
                    End If
              End If
        
                
                Case "ELSE", "������"
                If VarStat Or NewStat Then GoTo errstat
                   '  IFCTRL = 1
                If Not jump Then      ' JUMP FALSE SKIP ELSE
                If FastSymbol(b$, "{") Then
                 If Once = True Then Execute = 0: Exit Function
                w$ = block(b$)
                b$ = NLtrim$(Mid$(b$, 2))
                Else
                 SetNextLine b$
                lbl = True
                End If
                IFCTRL = 0 ' NONEED ANYTHING AND ERROR FOR IF.ELSE AND ELSE
                End If
                sss = Len(b$)
                            Case "ELSE.IF", "������.��"
                            If VarStat Or NewStat Then GoTo errstat
                          
                   '  IFCTRL = 1
                b$ = w$ & b$
                
           Case Else
           
           Execute = 0
           Exit Function
            End Select
           Case Else
           Execute = 0
           Exit Function
        End Select
        Else
        ' error
        If LastErNum = -2 Then
        Execute bstack, b$, True

        Else
        MissNumExpr
       
         End If
          Execute = 0
         Exit Function
        End If
        sss = Len(b$)
        Case "SELECT", "�������", "�������"  '*************************************** SELECT CASE
        
        If VarStat Or NewStat Then GoTo errstat
         If Once = True Then Execute = 0: Exit Function
        x1 = 0 ' mode numbers using p, sp and st
                ' x1=2 using sw$ w$ ss$
            If IsLabelSymbolNew(b$, "��", "CASE", Lang) Then
           If IsExp(bstack, b$, sp) Then
           x1 = 1
           ElseIf IsStrExp(bstack, b$, sw$) Then
           x1 = 2
           End If
            
            
                    If x1 > 0 Then ' SELECT CASE NUMBER or STRING
                        SetNextLine b$
                    slct = 1
                        Do
                        If b$ = "" Then Exit Do
                                If IsLabelSymbolNew(b$, "��", "CASE", Lang) Then  ' WE HAVE CASE
                                If slct > 0 Then         ' WE ARE IN SEARCH
                                Do
                                ' ��� ������� �� CASE
                                x2 = 0
                                If x1 = 1 Then
                                If IsExp(bstack, b$, p) Then x2 = 1
                                Else
                                If IsStrExp(bstack, b$, w$) Then x2 = 2
                                End If
                                       If x2 > 0 Then 'WE HAVE NUMBER OR STRING
                                            If IsLabelSymbolNew(b$, "���", "TO", Lang) Then   ' range ?
                                            y1 = 0
                                               If x1 = 1 Then
                                                    If IsExp(bstack, b$, st) Then y1 = 1

                                                Else
                                                    If IsStrExp(bstack, b$, SS$) Then y1 = 2
                                                End If
                                                If y1 > 0 Then
                                                y2 = 0
                                                   If x1 = 1 Then
                                                    If (sp >= p And sp <= st) Then y2 = 1

                                                Else
                                                    If sw$ >= w$ And sw$ <= SS$ Then y2 = 2
                                                End If
                                                    If y2 > 0 Or slct = -1 Then 'slct=-1 from break
                                                   If slct = 1 Then slct = 0   ' slct=0 we found
                                                        SetNextLine b$
                                                         V = Len(b$)  ' for the error system shift+f1 jumps to error
                                                        If FastSymbol(b$, "{") Then  ' block
                                                            V = Len(b$)
                                                            SS$ = block(b$)
                                                            DUM = False
                                                            i = 1
                                                             Call executeblock(i, bstack, SS$, False, DUM)
                                                              b$ = SS$ & b$
                                                            If i = 0 Then
                                                               
                                                                Execute = 0: Exit Function
                                                            ElseIf i = 2 Then  ' break
                                                                If DUM = True And b$ <> "" Then slct = -1
                                                            ElseIf i = 3 Then  ' continue
                                                                If DUM = True And b$ <> "" Then slct = 0 ' we found leave structure
                                                            End If
                                                        Else
                                                        DUM = True
                                
                                                            i = 1
                             
                                                             Call executeblock(i, bstack, b$, True, DUM)
                                                            If i = 0 Then
                                                                b$ = Space$(V)
                                                                Execute = 0: Exit Function
                                                            ElseIf i = 1 And b$ = "" Then 'this is an exit ��2
                                                          
                                                            Execute = 1
                                                            Exit Function
                                                            ElseIf i = 2 Then
                                                                   
                                                                          If DUM = True And b$ <> "" Then
                                                                            slct = -1
                                                                          ElseIf b$ <> "" Then
                                                                            Execute = 2
                                                                            Once = False
                                                                             Exit Function
                                                                          Else
                                                                        Execute = i
                                                                         Once = True
                                                                            Exit Function
                                                                        End If
                                                            ElseIf i = 3 Then
                                                                If DUM = True And b$ <> "" Then slct = 0
                                                            End If
        
                                                        End If
                
                                                        
                                                        Exit Do
                                                    End If
                                                Else
                                                    Execute = 0
                                                    Exit Function
                                                End If
                                            Else
                                            ' NO WE HAVE ONE VALUE...X1 MASTER, X2 ONE VALUE  Y2 FOR LAST CHECK
                                            y2 = 0
                                                   If x1 = 1 Then
                                                    If sp = p Then y2 = 1

                                                Else
                                                    If w$ = sw$ Then y2 = 2
                                                End If
                                                If y2 > 0 Or slct = -1 Then ' ONE VALUE
                                                 If slct = 1 Then slct = 0
                                                    SetNextLine b$
                                                         V = Len(b$)
                                                        If FastSymbol(b$, "{") Then  ' block
                                                          V = Len(b$)
                                                          SS$ = block(b$)
                                                            DUM = False
                                                            i = 1
                                                            Call executeblock(i, bstack, SS$, False, DUM)
                                                            b$ = SS$ & b$
                                                            If i = 0 Then
                                                         
                                                                Execute = 0: Exit Function
                                                            ElseIf i = 2 Then
                                                                If DUM = True And b$ <> "" Then slct = -1
                                                            ElseIf i = 3 Then
                                                               If DUM = True And b$ <> "" Then slct = 0
                                                            End If
                                                        Else   ' or line
                                                            DUM = True
                                                        
                                                            i = 1
                                                            Call executeblock(i, bstack, b$, True, DUM)
                                                            If i = 0 Then
                                                                b$ = Space$(V)
                                                                Execute = 0: Exit Function
                                                            ElseIf i = 1 And b$ = "" Then 'this is an exit ��3
                                                           '' B$ = ss$
                                                            Execute = 1
                                                            Exit Function
                                                            ElseIf i = 2 Then
                                                                       
                                                                          If DUM = True And b$ <> "" Then
                                                                            slct = -1
                                                                          ElseIf b$ <> "" Then
                                                                            Execute = 2
                                                                            Once = False
                                                                             Exit Function
                                                                          Else
                                                                        Execute = i
                                                                         Once = True
                                                                            Exit Function
                                                                        End If
                                                            ElseIf i = 3 Then
                                                           ''     If DUM = True And B$ <> "" Then slct = 0: B$ = GetNextLine(ss$) 'ok
                                                                If DUM = True And b$ <> "" Then slct = 0  '': B$ = GetNextLine(ss$) 'ok
                                                            End If
                                                       '��
                                                        End If
                                                        Exit Do
                                                End If
                                            End If
                                        Else
                                     
                                     
                                                    If x1 = 1 Then
                                                    b$ = Str$(sp) & " " & b$
                                                
                                                Else
                                                ' HERE............................IS A PROBLEM IF SW$ HAS <3 ASCII CODE
                                                b$ = Sput(sw$) + b$
                                                
                                              
                                                End If
                                        
                                        If IsExp(bstack, b$, p) Then
                                            If p <> 0 Or slct = -1 Then
                                             If slct = 1 Then slct = 0
                                                        SetNextLine b$
                                                         V = Len(b$)
                                                        If FastSymbol(b$, "{") Then  ' block
                                                          V = Len(b$)
                                                            SS$ = block(b$)
                                                            DUM = False
                                                            i = 1
                                               Call executeblock(i, bstack, SS$, False, DUM)
                                                         b$ = SS$ & b$
                                                            If i = 0 Then
                                                            
                                                            Execute = 0: Exit Function
                                                            ElseIf i = 2 Then
                                                                If DUM = True And b$ <> "" Then slct = -1
                                                            ElseIf i = 3 Then
                                                              If DUM = True And b$ <> "" Then slct = 0
                                                            End If
                                                        Else
                                                          DUM = True
                                                  
                                                            i = 1
                                                            Call executeblock(i, bstack, b$, True, DUM)
                                                            If i = 0 Then
                                                                b$ = Space$(V)
                                                                Execute = 0: Exit Function
                                                            ElseIf i = 1 And b$ = "" Then  'this is an exit  ��1
                            
                                                            Execute = 1
                                                            Exit Function
                                                            ElseIf i = 2 Then
                                                           
                                                                          If DUM = True And b$ <> "" Then
                                                                            slct = -1
                                                                          ElseIf b$ <> "" Then
                                                                            Execute = 2
                                                                            Once = False
                                                                             Exit Function
                                                                          Else
                                                                            Execute = i
                                                                            Once = True
                                                                            Exit Function
                                                                        End If
                                                            ElseIf i = 3 Then
                                                                If DUM = True And b$ <> "" Then slct = 0
                                                            End If
        
                                                        End If
                
                                                        
                                                        Exit Do
                                            End If
                                        Else
                                        Execute = 0
                                        Exit Function
                                        End If
                                        End If
                                    Loop While FastSymbol(b$, ",")
                                     End If
                                SetNextLine b$
        
                                ' drop case
        
                                If IsLabelSymbolNew(b$, "��", "CASE", Lang, , , True) Then
                               
                                ElseIf IsLabelSymbolNew(b$, "������", "ELSE", Lang, , , True) Then
                            
                                ElseIf IsLabelSymbolNew(b$, "�����", "END", Lang, , , True) Then
                             
                                Else
                                         V = Len(b$)
                                    If FastSymbol(b$, "{") Then
                                           If slct >= 0 Then
                                                    SS$ = block(b$) + "}"
                                                    b$ = NLtrim$(Mid$(b$, 2))
                                            Else
                                                    V = Len(b$)
                                                    SS$ = block(b$)
                                                    DUM = False
                                                    i = 1
                                                            Call executeblock(i, bstack, SS$, False, DUM)

                                                    b$ = SS$ & b$
                                                    If i = 0 Then
                                                       
                                                        Execute = 0: Exit Function
                                                    ElseIf i = 2 Then
                                                            If DUM = True And b$ <> "" Then slct = -1
                                                   
                                                     ElseIf i = 3 Then
                                                            If DUM = True And b$ <> "" Then slct = 0

                                                     End If
                                                            
                                            End If
                                     
                                        SetNextLine b$
                                      ElseIf slct < 0 Then
                                                        DUM = True
                                                   
                                                            i = 1
                                                            Call executeblock(i, bstack, b$, True, DUM)
                        
                                                            If i = 0 Then   ' where is exit
                                                                b$ = Space$(V)
                                                                Execute = 0: Exit Function
                                                            ElseIf i = 2 Then
                                                                    
                                                                          If DUM = True And b$ <> "" Then
                                                                            slct = -1
                                                                          ElseIf b$ <> "" Then
                                                                            Execute = 2
                                                                            Once = False
                                                                             Exit Function
                                                                          Else
                                                                            Execute = i
                                                                            Once = True
                                                                            Exit Function
                                                                        End If
                                                            ElseIf i = 3 Then
                                                                If DUM = True And b$ <> "" Then slct = 0: b$ = GetNextLine(SS$)
                                                            End If
        
                                    SetNextLine b$
                                    Else
                                    SetNextLine b$
                                
                                        End If
                                    
                                End If
                                
                                ElseIf IsLabelSymbolNew(b$, "������", "ELSE", Lang) Then
                                    SetNextLine b$
                                    V = Len(b$)
                                    If FastSymbol(b$, "{") Then
                                    V = Len(b$)
                                        SS$ = block(b$)
                                        b$ = NLtrim$(Mid$(b$, 2))
                                        If slct > 0 Then
                                                    V = Len(b$)
                                                    DUM = False
                                                    i = 1
                                                       Call executeblock(i, bstack, SS$, False, DUM)
                              b$ = SS$ & b$
                                                                 If i = 0 Then
                                                        
                                                        Execute = 0: Exit Function
                                                            ElseIf i = 2 Then
                                                                          If DUM = True And b$ <> "" Then
                                                                            slct = -1
                                                                          ElseIf b$ <> "" Then
                                                                            Execute = 2
                                                                            Once = False
                                                                             Exit Function
                                                                          Else
                                                                            Once = True
                                                                            Exit Function
                                                                        End If
                                                            ElseIf i = 3 Then
                                                                If DUM = True And b$ <> "" Then slct = 0: b$ = GetNextLine(SS$)
                                                            End If
                                        End If
                                    Else
                                    If slct > 0 Then
                                                                       DUM = True
                                             
                                                            i = 1
                                                            Call executeblock(i, bstack, b$, True, DUM)
                                                            If i = 0 Then
                                                                b$ = Space$(V)
                                                                Execute = 0: Exit Function
                                                            ElseIf i = 1 And b$ = "" Then 'this is an exit
                                             
                                                            Execute = 1
                                                            Exit Function
                                                            ElseIf i = 2 Then
                                                              
                                                                          If DUM = True And b$ <> "" Then
                                                                            slct = -1
                                                                          ElseIf b$ <> "" Then
                                                                            Execute = 2
                                                                            Once = False
                                                                             Exit Function
                                                                          Else
                                                                          Execute = i
                                                                            Once = True
                                                                            Exit Function
                                                                        End If
                                                            ElseIf i = 3 Then
                                                    If DUM = True And b$ <> "" Then slct = 0
                                              End If
                                    End If
                                End If
                                SetNextLine b$
                                slct = 0
                        ElseIf IsLabelSymbolNew(b$, "�����", "END", Lang) Then
                            If IsLabelSymbolNew(b$, "��������", "SELECT", Lang) Then
                                slct = 0
                                Exit Do
                            Else
                                Execute = 0
                                Exit Function
                            End If
                        Else
                             b$ = Space$(V)
                            Execute = 0
                            Exit Function
                        End If
  
                        Loop
                        If slct > 0 Then
                        b$ = Space$(V)
                        Execute = 0: Exit Function
                        End If
                        
                    '-----------ENDIF ---------------
                       Else
                        Execute = 0
                        Exit Function
                    End If
        Else
           Execute = 0
           Exit Function
        End If
      sss = Len(b$)
        Case "���", "ON"                 '************************************* ON NUMBER GOTO LABELS
        If VarStat Or NewStat Then GoTo errstat
        If IsExp(bstack, b$, p) Then
        y1 = IsLabelSymbolNew(b$, "����", "GOTO", Lang)
        y2 = False
        If Not y1 Then
        y1 = IsLabelSymbolNew(b$, "��������", "GOSUB", Lang, True)
        y2 = True
        End If
            If y1 Then
                p = CLng(p)
                If p <= 0 Then ' no exit
                SetNextLine b$
                If Execute <> 2 Then Execute = 1 Else Execute = 3
            b$ = ""
           Once = True
           Exit Function
          '' SetNextLine B$
                '' sss = Len(B$)
               ''  lbl = True
                
                Else
                w$ = ""
                i = 0
                Do
                i = 1
                 x1 = Abs(IsLabelOnly(b$, w$))
                    If x1 = 0 Then
                    If Not IsNumberLabel(b$, w$) Then p = 1000: Exit Do
                    
                    ElseIf x1 > 1 Then
                        p = 1000
                        Exit Do
                    End If
                    i = 0
                    p = p - 1
                    If Not FastSymbol(b$, ",") Then Exit Do
                    
                Loop Until p = 0
                If p <> 0 Then
                
                If i = 0 Then
                Execute = 1: w$ = GetNextLine$(b$): sss = Len(b$):
                End If
                w$ = ""
                'Exit Do
                Else
                If i > 0 Then
                MyEr "Missing label/Number line", "������ �������/������� �������"
                sss = LLL
                  Execute = 0
                Exit Function
                Else
                If y2 Then
                If bstack.SubLevel > deep And deep <> 0 Then
' GO BACK TO FIRST CALL
If bstack.RetStack.Total >= 9 * deep Then
             MyEr "No more " + CStr(deep) + " levels gosub allowed", "��� ������������ ���� ��� " + CStr(deep) + " ������� ��� ������ ��������"

             Execute = 0
             Exit Function

            
Else
bstack.RetStack.DROP bstack.RetStack.Total
 End If
  MyEr "Internal Error", "��������� �����"
 NOEXECUTION = True
 Execute = 0
Exit Function
 
End If
               
               If p = 1000 Then Exit Function
                SetNextLine b$
               If x1 = 1 Then
               i = 1
               GoTo contHereFromOn
               Else
               GoTo contHere2FromOn
               End If
               
                
                End If
                b$ = w$
                Execute = 2
                Exit Function
                End If
                End If
                End If
            Else
              sss = LLL
            End If
        Else
            MissParam b$
            Execute = 0
            Exit Function
        End If
          
        Case "SUB", "�������"
          If VarStat Or NewStat Then GoTo errstat
           If Once = True Then Execute = 0: Exit Function
   If Execute <> 2 Then
              b$ = w$
           Once = True
           Execute = 3
         
           Else
           b$ = ""
           
        End If
           Exit Function
        Case "GOSUB", "��������"
         If VarStat Or NewStat Then GoTo errstat
If bstack.SubLevel > deep And deep <> 0 Then
' GO BACK TO FIRST CALL
If bstack.RetStack.Total >= 9 * deep Then
             MyEr "No more " + CStr(deep) + " levels gosub allowed", "��� ������������ ���� ��� " + CStr(deep) + " ������� ��� ������ ��������"

             Execute = 0
             Exit Function

            
Else
bstack.RetStack.DROP bstack.RetStack.Total
 End If
  MyEr "Internal Error", "��������� �����"
 NOEXECUTION = True
 Execute = 0
Exit Function
 
End If
        i = Abs(IsLabelOnly(b$, w$))
contHereFromOn:
                If i = 5 Then
                Once = False
                
                PushParamGeneral bstack, b$
                If FastSymbol(b$, ")") Then
                
                 PushStage bstack, False
                bstack.RetStack.PushVal Len(b$)
                 
                If Lang Then
                bstack.RetStack.PushStr "SUB " + w$
                Else
                bstack.RetStack.PushStr "������� " + w$
                End If
                    b$ = Chr$(0)
                    '' here is the fault...execute 2 means loop...
                    '' it is known only here...
                    loopthis = Execute = 2
                    Execute = 2
                  Exit Function
                Else
                MissSymbol b$, ")"
                Execute = 0
                Exit Function
                End If
                ElseIf i = 1 Then
                Once = False
        
                PushStage bstack, True
                bstack.RetStack.PushVal Len(b$)
                bstack.RetStack.PushStr "S " + w$
                b$ = Chr$(0)

                Execute = 2
                Exit Function
                ElseIf i = 0 Then
                
                If IsNumberLabel(b$, w$) Then
contHere2FromOn:
                      Once = False
                              PushStage bstack, True  ' CORRECT FROM REV 45 - VER 8
                      bstack.RetStack.PushVal Len(b$)
                     bstack.RetStack.PushStr "* " + w$
                b$ = Chr$(0)
                
                Execute = 2
                Exit Function
                Else
                 b$ = w$ & b$
                End If
                Else
                b$ = w$ & b$
                
                Exit Do
                End If
        Case "GOTO", "����"               '**************************************** This is the GOTO statement
        If VarStat Or NewStat Then GoTo errstat
        If Trim$(b$) = "" Or FastSymbol(b$, ":") Then
                Execute = 0
                MyEr "No Label or Number in GOTO", "����� ����� � ������ � ����"
                Exit Function
        Else
        i = Abs(IsLabelOnly(b$, w$))
                If i = 1 Then
                Once = False
                b$ = w$
                Execute = 2
                Exit Function
                ElseIf i = 0 Then
                If IsNumberLabel(b$, w$) Then
                      Once = False
                b$ = w$
                Execute = 2
                Exit Function
                Else
                 b$ = w$ & b$
                End If
                Else
                b$ = w$ & b$
                
                Exit Do
                End If
              End If
              Case "LOCAL", "������", "������", "�������"
                    NewStat = True
                    sss = Len(b$)
                GoTo again1
                
                Case "GLOBAL", "������", "������", "�������"
                If NewStat Then MyEr "Global and local together;", "������ ��� ������ ����!": Execute = 0: Exit Function
                If Not VarStat Then
             
                If IsLabelSymbolNew(b$, "�����", "GROUP", Lang) Then
               If Not GlobalGroup(bstack, b$, Lang) Then Execute = 0: Exit Function
               
               End If
                Else
                End If
                VarStat = True
                sss = Len(b$)
                
                GoTo again1
                

        Case Else
varonly:
        If Len(w$) > 3 Then
            
            If Left$(w$, 4) = "THIS" Or Left$(w$, 4) = "����" Then
            SS$ = ".DELETEME"
            If IsLabel(bstack, SS$, bb$) < 0 Then
            
If Len(bb$) = 8 Then Execute = 0: Exit Function
            w$ = Left$(bb$, Len(bb$) - 9) + Mid$(w$, 5)
            End If
        End If
    End If
     If FastSymbol(b$, "=") Then
            If Not VarStat Then

            
                If GetlocalVar(w$, V) And Not NewStat Then
   
                        If IsExp(bstack, b$, p) Then
                        If Typename(var(V)) = "PropReference" Then
                        var(V).Value = p
                        ElseIf Typename(var(V)) = "Group" Then             '' Group 2 Group
                        If Not bstack.LastObj Is Nothing Then
                                If Typename(bstack.LastObj) = "Group" Then
                                  Set myobject = bstack.LastObj
                                        Set bstack.LastObj = Nothing
                                    
                                       SS$ = bstack.GroupName
                                      If Len(var(V).GroupName) > Len(w$) Then
                                        
                                        UnFloatGroupReWriteVars bstack, w$, V, myobject
                          
                                        Else
                                        bstack.GroupName = Left$(w$, Len(w$) - Len(var(V).GroupName) + 1)
                                        w$ = Left$(var(V).GroupName, Len(var(V).GroupName) - 1)
                                          UnFloatGroupReWriteVars bstack, w$, V, myobject
                                        End If
                                   Set myobject = Nothing
                                        bstack.GroupName = SS$

                             
                                Else
                                '' maybe a block of itemd''
                                
                                  Execute = 0
                                End If
                        Else  '' make an upgrade
                                Execute = 0

                        End If
                        Else
                        If VarType(var(V)) = vbLong Then
                                If Not bstack.LastObj Is Nothing Then
                                If Typename(bstack.LastObj) = "Group" Then
                                      Set myobject = bstack.LastObj
                                        Set bstack.LastObj = Nothing
                                    UnFloatGroup bstack, w$, V, myobject  ' global??
                                    Set myobject = Nothing
                             
                                Else
                                Execute = 0
                                End If
                                Else
                                var(V) = CLng(p)
                                End If
                        Else
                                If Not bstack.LastObj Is Nothing Then
                                If Typename(bstack.LastObj) = "Group" Then
                                        Set myobject = bstack.LastObj
                                                                        Set bstack.LastObj = Nothing
                                                                    UnFloatGroup bstack, w$, V, myobject  ' global??
                                                                    Set myobject = Nothing
                                Else
                                var(V) = 0
                                End If
                                Else

                             var(V) = p
      End If
                            End If
                        End If
                        End If
                ElseIf IsExp(bstack, b$, p) Then
                            If Not bstack.LastObj Is Nothing Then
                                If Typename(bstack.LastObj) = "Group" Then
                                        If NewStat Then
                                            MyEr "No New statement for groups", "��� ������ ���� ��� ������"
                                            Exit Function
                                        Else
                                            If Not GetVar(bstack, w$, x1, True) Then x1 = GlobalVar(w$, p, , VarStat)
                                        End If
                                        Set myobject = bstack.LastObj
                                        Set bstack.LastObj = Nothing
                                        If x1 <> 0 Then
                                        
                                            If Typename(var(x1)) = "Group" Then
                                            ''crosscopy - look if we have  a float group
                                            
                                            UnFloatGroupReWriteVars bstack, w$, x1, myobject
                                            Else

                                                UnFloatGroup bstack, w$, x1, myobject   ' global??
                                                Set myobject = Nothing
                                          
                                            End If
                                            ''I have to recreate all items...As names.
                                            ''  Also Functions / Modules and
                                            
                                            
                                        End If
                                        
                                
                                Else
                                
                                SyntaxError
                                  End If
                             Else
                                GlobalVar w$, p, , VarStat
                            End If
                    Else
                    ' error in execute ?
                   If LastErNum <> -2 Then
                   NoValueForvariable w$
                    Execute = 0
                     Exit Function
                                       
                     End If
                     
                End If
                ElseIf IsExp(bstack, b$, p) Then
                    GlobalVar w$, p, , VarStat
                    Else
                    ' error in execute ?
                   If LastErNum <> -2 Then
                   NoValueForvariable w$
                    Execute = 0
                     Exit Function
                     End If
                End If
               
        Else
        If VarStat Or NewStat Then
        p = 0
            GlobalVar w$, p, , VarStat
              If Not MaybeIsSymbol(b$, ",") Then b$ = " :" + b$
                    sss = Len(b$)
                GoTo again1
        End If
        
        
        SS$ = ""
        
         If MaybeIsSymbol(b$, "-+*/<~") Then
            If IsOperator(b$, "--") Then
                SS$ = "--"
            ElseIf IsOperator(b$, "-!") Then
                SS$ = "-!"
            ElseIf IsOperator(b$, "~") Then
                SS$ = "!!"
            ElseIf IsOperator(b$, "++") Then
                SS$ = "++"
            ElseIf FastSymbol(b$, "+=") Then
                SS$ = "+"
            ElseIf FastSymbol(b$, "/=") Then
                SS$ = "/"
            ElseIf FastSymbol(b$, "-=") Then
                SS$ = "-"
            ElseIf FastSymbol(b$, "*=") Then
                SS$ = "*"
            ElseIf FastSymbol(b$, "<=") Then
                SS$ = "g"
            Else
            GoTo parsecommand
            End If
again123456:
        If GetVar(bstack, w$, V, SS$ = "g") Then
        'NOT YET FOR PropReference
           If Typename(var(V)) = "PropReference" Then Execute = 0: Exit Function
        If Len(SS$) = 1 Then
                    If IsExp(bstack, b$, p) Then
                            On Error Resume Next
                            If Typename(var(V)) = "Group" Then
                            Select Case SS$
                                Case "g"
                                  If Not bstack.LastObj Is Nothing Then
                                If Typename(bstack.LastObj) = "Group" Then
                                  Set myobject = bstack.LastObj
                                        Set bstack.LastObj = Nothing
                             SS$ = HERE$
                                  HERE$ = ""
                                    ''  bstack.UseGroupname = var(V).GroupName
                                    UnFloatGroupReWriteVars basestack1, w$, V, myobject
                                    HERE$ = SS$
                                   '' Debug.Print SB(3)
                             
                                Else
                                '' maybe a block of itemd''
                                
                                  Execute = 0
                                End If
                        Else  '' make an upgrade
                                Execute = 0

                        End If
                            Case "="
                                  If Not bstack.LastObj Is Nothing Then
                                If Typename(bstack.LastObj) = "Group" Then
                                  Set myobject = bstack.LastObj
                                        Set bstack.LastObj = Nothing
                                    SS$ = bstack.UseGroupname
                                      bstack.UseGroupname = var(V).GroupName
                                    UnFloatGroupReWriteVars bstack, w$, V, myobject
                                    bstack.UseGroupname = SS$
                                   '' Debug.Print SB(3)
                             
                                Else
                                '' maybe a block of itemd''
                                
                                  Execute = 0
                                End If
                        Else  '' make an upgrade
                                Execute = 0

                        End If
                                Case Else
                                Execute = 0
                                Exit Do
                             End Select
                            ElseIf VarType(var(V)) = vbLong Then
                               Select Case SS$
                                Case "=", "g"
                                   If Not bstack.LastObj Is Nothing Then
                                If Typename(bstack.LastObj) = "Group" Then
                                  Set myobject = bstack.LastObj
                                        Set bstack.LastObj = Nothing
                                        UnFloatGroup bstack, w$, V, myobject
                                        Set myobject = Nothing
                                        If bstack.UseGroupname <> "" Then

                               
                                    
                                    End If
                                   '' Debug.Print SB(3)
                                   Else
                                   MissNumExpr
                                   Execute = 0
                                   End If
                                   Else
                                var(V) = CLng(p)
                                End If
                                      Case "+"
                                var(V) = CLng(p) + var(V)
                                Case "*"
                                 var(V) = CLng(p) * var(V)
                                Case "-"
                                var(V) = var(V) - CLng(p)
                                Case "/"
                                If p = 0 Then
                                   Execute = 0
                                   Exit Do
                                End If
                                ' only for long
                                 var(V) = var(V) \ CLng(p)
                               Case "!"
                                 var(V) = -1 - (var(V) <> 0)
                            End Select
                            
                            Else
                            Select Case SS$
                                Case "=", "g"
                                var(V) = p
                                Case "+"
                                var(V) = p + var(V)
                                Case "*"
                                 var(V) = p * var(V)
                                Case "-"
                                var(V) = var(V) - p
                                Case "/"
                                If p = 0 Then
                                   Execute = 0
                                   Exit Do
                                End If
                                 var(V) = var(V) / p
                                         Case "!"
                                 var(V) = -1 - (var(V) <> 0)
                                 End Select
                                  var(V) = MyRound(var(V), 13)
                            End If
                         
                            If Err.Number = 6 Then
                                Exit Do   'why ?
                          
                                             
                               End If
                               On Error GoTo 0
                    Else
        
                        If LastErNum <> -2 Then
                         NoValueForvariable w$
                         Execute = 0
                          Exit Do
                    
      
                    End If
              End If
        Else
        If SS$ = "++" Then
        var(V) = 1 + var(V)
        ElseIf SS$ = "--" Then
        var(V) = var(V) - 1
             ElseIf SS$ = "-!" Then
                    var(V) = -var(V)
                Else
                          var(V) = -1 - (var(V) <> 0)
        End If
     
        End If
        GoTo loopcontinue
        Else
         If SS$ = "g" Then SS$ = "=":   GoTo again123456
        MyEr "", ""
        b$ = w$ + b$
        MyErMacro b$, "No such variable", "��� ������� ������ ���������"
        sss = LLL
    
        End If
    ''                Execute = 0
     ''       Exit Do
      ''  Exit Function

        Else
parsecommand:
            If VarStat Or NewStat Then GoTo errstat
            
               If Not Identifier(bstack, w$, b$) Then
               If LastErNum1 = -1 And bstack.IamThread Then Execute = 1 Else Execute = 0
               Exit Function
               Else
               If b$ <> "" Then lbl = Asc(b$) = 13
                   If Left$(HERE$ & "#", 1) = "!" Then HERE$ = Mid$(HERE$, 2): ohere$ = HERE$
                            If bstack.LastComm <> "" Then
                                        Execute = bstack.LastExecute
                                        Once = bstack.LastOnce
                                        b$ = bstack.LastComm
                                         bstack.LastComm = ""
                                        Exit Function
                            ElseIf b$ = "" Then
                            Exit Do
                            End If
               End If
           
        End If
    End If
        
    
        End Select
      '  End If
    Else
   b$ = w$ & b$
    Execute = 0
         If FindNameForGroup(bstack, w$) Then
                 MyEr "Unknown Property " & w$, "������� �������� " & w$
                 Else
                MyEr "Unknown Variable " & w$, "������� ��������� " & w$
                End If

    Exit Function
    End If

Case 2
If Not lbl Then b$ = w$ & b$: Exit Do
b$ = Mid$(b$, 2)
lbl = False
sss = Len(b$)
Case 3
If Left$(w$, 1) = "." Then
 SS$ = w$
IsLabel bstack, SS$, w$
End If

        SS$ = ""
        If FastSymbol(b$, ".") Then
        If GetVar(bstack, w$, V) Then  'GetlocalVar(w$, V) Then
             If MaybeIsSymbol(b$, "-+*/<~") Then
             b$ = var(V) + b$
             ElseIf MaybeIsSymbol(b$, "=") Then
             If Right$(var(V), 1) = ")" Then
              b$ = var(V) + b$
             Else
              b$ = var(V) + "<" + b$
              End If
             Else
             ' maybe is a
             b$ = var(V) + "." + b$
             IsLabelDot HERE$, b$, w$
            
              If MaybeIsSymbol(b$, "=") Then
              b$ = w$ + "<" + b$
              ElseIf MaybeIsSymbol(b$, "-+*/<~") Then
               b$ = w$ + b$
              Else
               b$ = w$ + " " + b$
              End If
             End If
              GoTo again3
        Else
         MyEr "Unknown Weak " & w$, "������� ����� " & w$
        End If
        End If
         If MaybeIsSymbol(b$, "=<") Then
            If FastSymbol(b$, "<=") Then
                SS$ = "g"  'global
            ElseIf FastSymbol(b$, "=") Then
            SS$ = "="
         End If
        End If
       

If SS$ <> "" Then

    If SS$ = "=" Then
    If VarStat Then
            If IsStrExp(bstack, b$, SS$) Then
                    GlobalVar w$, SS$, , VarStat
            Else
                    NoValueForvariable w$
                    Execute = 0
                    Exit Function
         End If
    Else
            If NewStat Then
                    If IsStrExp(bstack, b$, SS$) Then GlobalVar w$, SS$, , VarStat
            Else
            If GetlocalVar(w$, V) Then
            
            
                If IsStrExp(bstack, b$, SS$) Then
                  If Typename(var(V)) = "PropReference" Then
                  var(V).Value = SS$
                  Else
                CheckVar var(V), SS$
                End If
                End If
            ElseIf IsStrExp(bstack, b$, SS$) Then
                GlobalVar w$, SS$, , VarStat
            
            End If
            End If
    End If
    Else    ' g
again12345:
          If GetVar(bstack, w$, V, SS$ = "g") Then
          
               If IsStrExp(bstack, b$, SS$) Then
               CheckVar var(V), SS$
               Else
               NoValueForvariable w$
               End If
            Else
            If SS$ = "g" Then SS$ = "":   GoTo again12345
            Nosuchvariable w$
          End If
    End If
Else
        If VarStat Or NewStat Then
            
            GlobalVar w$, SS$, , VarStat
            If Not MaybeIsSymbol(b$, ",") Then b$ = " :" + b$
          
                    sss = Len(b$)
                GoTo again1
                
        End If

                 NoValueForvariable w$
                    Execute = 0
                    Exit Function
End If
Case 4
If Left$(w$, 1) = "." Then
 SS$ = w$
IsLabel bstack, SS$, w$
End If
If MaybeIsSymbol(b$, "=-+*/<~") Then
    If FastSymbol(b$, "=") Then
    If VarStat Then
    
    If IsExp(bstack, b$, p) Then
                                       
                GlobalVar w$, p, , VarStat
                Else
                      If LastErNum <> -2 Then
                     NoValueForvariable w$
                    Execute = 0
                     Exit Function
                     End If
            
            End If
    Else
            If GetlocalVar(w$, V) Then
            
                If IsExp(bstack, b$, p) Then
                If Typename(var(V)) = "PropReference" Then
                        var(V).Value = Int(p)
                        Else
                 var(V) = Int(p)
                 End If
                If Err.Number = 6 Then Execute = 0: Exit Do
                On Error GoTo 0
                End If
            ElseIf IsExp(bstack, b$, p) Then
            
                GlobalVar w$, p, , VarStat
                Else
                      If LastErNum <> -2 Then
                     NoValueForvariable w$
                    Execute = 0
                     Exit Function
                     End If
            
            End If
    End If
    Else
        SS$ = ""
        If FastSymbol(b$, "+=") Then
        SS$ = "+"
        ElseIf FastSymbol(b$, "/=") Then
        SS$ = "/"
        ElseIf FastSymbol(b$, "-=") Then
        SS$ = "-"
        ElseIf FastSymbol(b$, "*=") Then
        SS$ = "*"
        ElseIf IsOperator(b$, "++") Then
        SS$ = "++"
        ElseIf IsOperator(b$, "--") Then
        SS$ = "--"
        ElseIf IsOperator(b$, "-!") Then
        SS$ = "-!"
        ElseIf IsOperator(b$, "~") Then
        SS$ = "!!"
        ElseIf FastSymbol(b$, "<=") Then
        SS$ = "g"
        End If
again1234567:
        If GetVar(bstack, w$, V, SS$ = "g") Then
        'NOT YET FOR PropReference
        If Typename(var(V)) = "PropReference" Then Execute = 0: Exit Function
            If Len(SS$) = 1 Then
                        If IsExp(bstack, b$, p) Then
                        
                                On Error Resume Next
                                Select Case SS$
                                Case "=", "g"
                                    var(V) = Int(p)
                                Case "+"
                                    var(V) = Int(p) + var(V)
                                Case "*"
                                    var(V) = Int(Int(p) * var(V))
                                Case "-"
                                    var(V) = var(V) - Int(p)
                                Case "/"
                                    If p = 0 Then Execute = 0: Exit Do
                                    var(V) = Int(var(V) / Int(p))
                                    
         
                   
                                End Select
                                If Err.Number = 6 Then Execute = 0: Exit Do
                                On Error GoTo 0
                        Else
                                Execute = 0: Exit Do
                        End If
            Else
                If SS$ = "++" Then
                    var(V) = 1 + var(V)
                ElseIf SS$ = "--" Then
                    var(V) = var(V) - 1
                ElseIf SS$ = "-!" Then
                    var(V) = -var(V)
                Else
                          var(V) = -1 - (var(V) <> 0)
                End If
  
            End If
            GoTo loopcontinue
            Else
                     If SS$ = "g" Then SS$ = "=":   GoTo again1234567
                      MyEr "No value for variable " & w$, "����� ���� � ��������� " & w$
        Execute = 0: Exit Function
        End If
        Execute = 0: Exit Do
    End If
Else
    If VarStat Or NewStat Then
        p = 0
        GlobalVar w$, p, , VarStat
        If Not MaybeIsSymbol(b$, ",") Then b$ = " :" + b$
        sss = Len(b$): GoTo again1
    Else
        MyEr "No value for variable " & w$, "����� ���� � ��������� " & w$
        Execute = 0: Exit Function
    End If
End If
    
    

Case 5

If Asc(w$) = 46 Then
IsLabel bstack, (w$), w$
End If
If VarStat Or NewStat Then

MakeArray bstack, w$, 5, b$, pppp, NewStat, VarStat

 If Not MaybeIsSymbol(b$, ",") Then b$ = " :" + b$
        sss = Len(b$): GoTo again1
End If

If neoGetArray(bstack, w$, pppp) Then
If FastSymbol(b$, ")") Then
'need to found an expression
If FastSymbol(b$, "=") Then
    If IsExp(bstack, b$, p) Then
        If Not bstack.LastObj Is Nothing Then
        
            bstack.LastObj.CopyArray pppp
            Set bstack.LastObj = Nothing
            GoTo loopcontinue
        End If
    Else
        SyntaxError
    End If
    Execute = 0
    Exit Function
End If

ElseIf Not NeoGetArrayItem(pppp, bstack, w$, V, b$) Then
''MyEr "Error too", "�����"
If LastErNum = -2 Then

Execute bstack, b$, True
Execute = 0: Exit Function
Else
Execute = 0
Exit Do
End If
End If
On Error Resume Next

If MaybeIsSymbol(b$, ":+-*/~") Then
With pppp

If IsOperator(b$, "++") Then
.item(V) = .item(V) + 1
GoTo loopcontinue
ElseIf IsOperator(b$, "--") Then
.item(V) = .item(V) - 1
GoTo loopcontinue
ElseIf FastSymbol(b$, "+=") Then
If Not IsExp(bstack, b$, p) Then Execute = 0: Exit Function
.item(V) = .item(V) + p
ElseIf FastSymbol(b$, "-=") Then
If Not IsExp(bstack, b$, p) Then Execute = 0: Exit Function
.item(V) = .item(V) - p
ElseIf FastSymbol(b$, "*=") Then
If Not IsExp(bstack, b$, p) Then Execute = 0: Exit Function
.item(V) = .item(V) * p
ElseIf FastSymbol(b$, "/=") Then
If Not IsExp(bstack, b$, p) Then Execute = 0: Exit Function
If p = 0 Then
 MyEr "division by zero", "�������� �� �� �����"
 Else
 .item(V) = .item(V) / p
End If
ElseIf IsOperator(b$, "-!") Then
.item(V) = -.item(V)
GoTo loopcontinue
ElseIf IsOperator(b$, "~") Then
.item(V) = -1 - (.item(V) <> 0)
GoTo loopcontinue
ElseIf FastSymbol(b$, ":=") Then

    If IsExp(bstack, b$, p) Then
        .item(V) = p
    ElseIf IsStrExp(bstack, b$, SS$) Then
      If Not IsObject(.item(V)) Then
          .item(V) = SS$
          Else
        CheckVar .item(V), SS$
        
        End If

    Else
        Exit Do
    End If
    If FastSymbol(b$, ",") Then V = V + 1: GoTo contarr
    GoTo loopcontinue
End If
.item(V) = MyRound(.item(V), 13)

End With
GoTo loopcontinue
End If
If IsOperator(b$, ".") Then

If Typename(pppp.item(V)) = "Group" Then
Execute = SpeedGroup(bstack, pppp, "", w$, b$, V)
If Execute = 0 Then
Exit Function

End If
GoTo loopcontinue
End If

ElseIf Not FastSymbol(b$, "=", True) Then


sss = 0
GoTo loopagain
End If
If Not IsExp(bstack, b$, p) Then
If LastErNum = -2 Then
Execute bstack, b$, True
Else
MissNumExpr
End If
Execute = 0: Exit Function
End If
     If Not bstack.LastObj Is Nothing Then
     Set myobject = pppp.GroupRef
     If pppp.IHaveClass Then
     bstack.soros.PushObj bstack.LastObj
     If Typename(pppp.item(V)) = "Empty" Then
     Set pppp.item(V) = New Group
     End If
     
     SpeedGroup bstack, pppp, "@READ ", w$, "", V
     Else
     Set pppp.item(V) = bstack.LastObj
     End If
     Set pppp.item(V).LinkRef = myobject
     Set bstack.LastObj = Nothing
     Else
pppp.item(V) = p
End If
Do While FastSymbol(b$, ",")
If pppp.UpperMonoLimit > V Then
V = V + 1

If Not IsExp(bstack, b$, p) Then Execute = 0: Exit Function
  If Not bstack.LastObj Is Nothing Then
     Set myobject = pppp.GroupRef
     If pppp.IHaveClass Then
     bstack.soros.PushObj bstack.LastObj
     SpeedGroup bstack, pppp, "@READ ", w$, "", V
     Else
     Set pppp.item(V) = bstack.LastObj
     End If
     Set pppp.item(V).LinkRef = myobject
     Set bstack.LastObj = Nothing
     Else
pppp.item(V) = p
End If
Else
Exit Do
End If
Loop
Else
If GetSub(w$ + ")", i) Then
Else
MyEr "Can't find array " & w$ & ")", "��� ������ ������ " & w$ & ")"
Execute = 0: Exit Function
End If
End If
Case 6
If Asc(w$) = 46 Then
IsLabel bstack, (w$), w$
End If
If VarStat Or NewStat Then
MakeArray bstack, w$, 6, b$, pppp, NewStat, VarStat
 If Not MaybeIsSymbol(b$, ",") Then b$ = " :" + b$
        sss = Len(b$): GoTo again1
End If
If neoGetArray(bstack, w$, pppp) Then
    If FastSymbol(b$, ")") Then
    'need to found an expression - HEREHERE
        If FastSymbol(b$, "=") Then
            If IsStrExp(bstack, b$, w$) Then
                If Not bstack.LastObj Is Nothing Then
                    bstack.LastObj.CopyArray pppp
                    Set bstack.LastObj = Nothing
                    GoTo loopcontinue
                End If
            Else
                SyntaxError
            End If
            Execute = 0
            Exit Function
        End If
        End If

If Not NeoGetArrayItem(pppp, bstack, w$, V, b$) Then Execute = 0: Exit Function
On Error Resume Next

If Not FastSymbol(b$, "=") Then
  If FastSymbol(b$, ":=") Then   ''????????????
contarr:
    SS$ = Left$(aheadstatus(b$), 1)
        If SS$ = "S" Then
        If Not IsStrExp(bstack, b$, SS$) Then Execute = 0:   Exit Function
        Else
        If Not IsExp(bstack, b$, p) Then Execute = 0:   Exit Function
        SS$ = Trim$(Str$(p))
        End If
             If Not IsObject(pppp.item(V)) Then
          pppp.item(V) = SS$
          Else
        CheckVar pppp.item(V), SS$
        
        End If
        Do While FastSymbol(b$, ",")
        If pppp.UpperMonoLimit > V Then
        V = V + 1
          SS$ = Left$(aheadstatus(b$), 1)
                        If SS$ = "S" Then
        If Not IsStrExp(bstack, b$, SS$) Then Execute = 0:   Exit Function
        Else
        If Not IsExp(bstack, b$, p) Then Execute = 0: Exit Function
        SS$ = Trim$(Str$(p))
        End If
        
                If Not IsObject(pppp.item(V)) Then
                  pppp.item(V) = SS$
                  Else
                  
                  
                CheckVar pppp.item(V), SS$
                
                End If
        Else
        Exit Do
        End If
        Loop
   
    Else
        Execute = 0: Exit Function
    End If
Else
If Not IsStrExp(bstack, b$, SS$) Then
     Execute = 0: Exit Function
     End If
    If Not IsObject(pppp.item(V)) Then
        pppp.item(V) = SS$
    Else
        CheckVar pppp.item(V), SS$
    End If
        Do While FastSymbol(b$, ",")
        If pppp.UpperMonoLimit > V Then
        V = V + 1
        If Not IsStrExp(bstack, b$, SS$) Then Execute = 0: Exit Function
        
        If Not IsObject(pppp.item(V)) Then
          pppp.item(V) = SS$
          Else
        CheckVar pppp.item(V), SS$
        
        End If
        Else
        Exit Do
        End If
        Loop
End If
Else
Execute = 0: Exit Function
End If
Case 7
If Asc(w$) = 46 Then
IsLabel bstack, (w$), w$
End If
If VarStat Or NewStat Then
MakeArray bstack, w$, 7, b$, pppp, NewStat, VarStat
 If Not MaybeIsSymbol(b$, ",") Then b$ = " :" + b$
        sss = Len(b$): GoTo again1
End If
If neoGetArray(bstack, w$, pppp) Then
    If FastSymbol(b$, ")") Then
    'need to found an expression
        If FastSymbol(b$, "=") Then
            If IsExp(bstack, b$, p) Then
                If Not bstack.LastObj Is Nothing Then
                    bstack.LastObj.CopyArray pppp
                    Set bstack.LastObj = Nothing
                    GoTo loopcontinue
                End If
            Else
                SyntaxError
            End If
            Execute = 0
            Exit Function
        End If
        End If

If Not NeoGetArrayItem(pppp, bstack, w$, V, b$) Then Execute = 0: Exit Function
On Error Resume Next
If MaybeIsSymbol(b$, "+-*/~") Then
With pppp
If IsOperator(b$, "++") Then
.item(V) = .item(V) + 1
ElseIf IsOperator(b$, "--") Then
.item(V) = .item(V) - 1
ElseIf FastSymbol(b$, "+=") Then
If Not IsExp(bstack, b$, p) Then Execute = 0: Exit Function
.item(V) = .item(V) + Int(p)
ElseIf FastSymbol(b$, "-=") Then
If Not IsExp(bstack, b$, p) Then Execute = 0: Exit Function
.item(V) = .item(V) - Int(p)
ElseIf FastSymbol(b$, "*=") Then
If Not IsExp(bstack, b$, p) Then Execute = 0: Exit Function
.item(V) = .item(V) * Int(p)
ElseIf FastSymbol(b$, "/=") Then
If Not IsExp(bstack, b$, p) Then Execute = 0: Exit Function
If Int(p) = 0 Then
 MyEr "division by zero", "�������� �� �� �����"
 Else
 .item(V) = Int(.item(V) / Int(p))
End If
ElseIf IsOperator(b$, "-!") Then
.item(V) = -.item(V)
ElseIf IsOperator(b$, "~") Then
.item(V) = -1 - (.item(V) <> 0)
End If
End With
GoTo loopcontinue
End If
If Not FastSymbol(b$, "=") Then Execute = 0: Exit Function
If Not IsExp(bstack, b$, p) Then Execute = 0: Exit Function
p = Int(p)
If Err.Number > 0 Then Execute = 0: Exit Function
pppp.item(V) = p
Do While FastSymbol(b$, ",")
If pppp.UpperMonoLimit > V Then
V = V + 1
If Not IsExp(bstack, b$, p) Then Execute = 0: Exit Function
pppp.item(V) = p
Else
Exit Do
End If
Loop
Else
Execute = 0: Exit Function
End If
Case Else

If MaybeIsSymbol(b$, ".") Then
b$ = LTrim(b$)
        nd& = Len(b$)
        If bstack.GetDot(b$, (1)) Then
            
                   
           sss = (Len(b$) - nd&) + sss
           LLL = (Len(b$) - nd&) + LLL
        End If
        GoTo again2
End If
If MaybeIsSymbol(b$, ",-+*/_!@()[];<>|~`0123456789") Then
SyntaxError
Execute = 0
Exit Function
End If
End Select
loopcontinue:
HERE$ = ohere$
If Once And Not jump Then Exit Do
loopagain:
If linebyline Then Exit Do
Loop

''If B$ = "" Or ONCE Then
 ''Execute = 1
''End If
If linebyline Then
With bstack
.IFCTRL = IFCTRL
.jump = jump
End With
End If
Exit Function
errstat1:
MyEr "Missing module name", "������ ����� ��������"
     Execute = 0: Exit Function
errstat:
MyEr "Missing variable name", "������ ����� ����������"
     Execute = 0: Exit Function
LONGERR:
    If Err.Number = 6 Then
            Execute = 0
            MyEr "OverFlow Long", "Y���������� �����"
            
            End If
End Function
Function GoFunc(mystack As basetask, what$, rest$, vl As Variant) As Boolean
Dim p As Double, i As Long, s$, it As Long, pa$
Dim x1 As Long, frm$, par As Boolean, ohere$, w$
Dim vars As Long, VName As Long, subs As Long, snames As Long
Dim arrs As Long, anames As Long, threads As Long
Dim STAC3 As New mStiva, ff$()
Dim basestack As basetask
' get a reference to Parent task
Set basestack = mystack.Parent
ohere$ = HERE$
'If funcdeep > 0 Then
If iRVAL(HERE$, 1) > funcdeep Then GoFunc = False: Exit Function
' get parameters here
' if we can expose Rest$ to functions in functions then we can programmaticaly
' change how to interpret the parameter list or whatever is...Maybe. Is a think
pa$ = mystack.UseGroupname
mystack.UseGroupname = basestack.UseGroupname
mystack.Look2Parent = True  ' new workaround for passing &this to function
 If Not PushParamGeneralV7(mystack, rest$) Then
 Exit Function
 End If
 mystack.Look2Parent = False
  mystack.UseGroupname = pa$
If InStr(what$, "(") > 0 Then
If GetSub(what$, x1) Then  'get the reference x1 for function (functions and modules are in an array)
    ' here we change NameSpace
    If HERE$ = "" Then  ' from the command line
If ohere$ = "" Then HERE$ = what$
    Else  ' from other...maybe the same...an so make an increment by 1 to an index in the name.
    HERE$ = RVAL(HERE$, 1) & "." & Trim$(what$)
    End If
End If
Else
If HERE$ = "" Then
If GetSub(what$, x1) Then
  HERE$ = RVAL(HERE$, 1)
End If
ElseIf GetlocalSub(what$, x1) Then
 HERE$ = RVAL(HERE$, 1)
ElseIf GetlocalSubExtra(what$, x1) Then
 HERE$ = RVAL(HERE$, 1)
 ElseIf GetSub(what$, x1) Then
  HERE$ = RVAL(HERE$, 1)
End If
End If
If HERE$ <> ohere$ Or mystack.IamChild Then     ' so now we check that we are in an new namespace...

' this system must change.. and become member of a basetask

' these are for safety
vars = var2used: VName = Len(VarName$)
subs = sb2used: snames = Len(SubName$)
arrs = neoArray.Count: anames = Len(arrname$)
i = 1: FK$(13) = ""
' MergeTop the parameters as a frame...
' But a call to a function always give a new stack
' So this is included for modules to perform recuirsive call with common stack.
If STAC3.Total > 0 Then mystack.soros.MergeTop STAC3

Dim ok As Boolean, nokillvars As Boolean
nokillvars = basestack.nokillvars: basestack.nokillvars = False
i = preProcessor(mystack, SB(x1))
If Mid$(SB(x1), i) = "" Then
GoFunc = True
GoTo there1234
End If
   mystack.OriginalName$ = HERE$
Do
    mystack.UseGroupname = sbgroup(x1)
    frm$ = Mid$(SB(x1), i)
    it = 1
Call executeblock(it, mystack, frm$, False, ok)
    Select Case it ''Execute(mystack, frm$, False)
    Case 0
    Set mystack.LastObj = Nothing
Set mystack.FuncObj = Nothing
        mystack.ThrowThreads  ' always throw threads
    If Not NERR Then   ' Nerr = true from command ERROR 0 means Fatal Error, shows a message and act as a crash!
            If mystack.UseGroupname <> "" Then
If InStr(mystack.UseGroupname, ChrW(&H1FFF)) > 0 Then
pa$ = GetNextLine((SB(mystack.OriginalCode)))
FK$(13) = Mid$(pa$, 7) + "-" + CStr(Len(LTrim(frm$)) - 2)
MyErMacro rest$, "Problem in class", "�������� ��� �����"
GoFunc = True
GoTo there1234
End If

        End If
    ''pa$ = "EDIT " & what$ & ", 1" ''& CStr(Len(SB(x1)))
     pa$ = "EDIT " & StripRVAL(HERE$) & ", " + CStr(Len(SB(x1)))
        If Left$(SB(x1), 10) = "'11001EDIT" Then
          pa$ = Mid$(GetNextLine(SB(x1)), 7) ''+ "+1"
             SB(x1) = Mid$(SB(x1), 3) ' needed because we measure length...look the preparation of Shift F1 below
            If InStrRev(HERE$, ".") > 0 Then
            ' any fucntion defined inside module or function has this direction
                MyEr "in function " & Mid$(what$, InStrRev(what$, ".") + 1), "��� ��������� " & Mid$(what$, InStrRev(what$, ".") + 1)
            Else
                MyEr "in function " & what$, "��� ��������� " & what$
            End If
        Else
        If Right$(HERE$, 1) = ")" Then
        MyEr "in function " & Left$(what$, Len(what$) - 1), "��� ��������� " & Left$(what$, Len(what$) - 1)
        Else
        MyEr "in module " & HERE$, "��� ����� " & HERE$
        End If
        
        End If
        If (Len(SB(x1)) - Len(frm$)) < 0 Then ' Maybe in a galaxy far away
            FK$(13) = pa$
        Else  ' Or in Earth
            If pa$ = "" Then
            ' no we have nothig....??? when??

            Else
                ' prepare Shift F1 for a jump to the point of interest..the faulty one
                '
             
                If InStr(FK$(13), ",") > 0 Then
                 GoTo there1234
                    If Left$(pa$, InStr(pa$, ",")) = Left$(FK$(13), InStr(FK$(13), ",")) Then GoTo there1234
                 ''pa$ = pa$ + "+2"
                 ''''DropLeft ",", FK$(13)
                   '' If FK$(13) <> "" Then FK$(13) = "+" & FK$(13)
                    
                End If

                    If (Len(SB(x1)) - Len(frm$)) < 0 Then
                    FK$(13) = pa$
                    Else
                    DropLeft ",", FK$(13)
                    If FK$(13) <> "" Then FK$(13) = "+" & FK$(13)
                               If sbgroup(x1) <> "" Then
                    FK$(13) = pa$ & "-" & CStr(Len(frm$) - 2) + FK$(13)
                    Else
                    FK$(13) = pa$ & "-" & CStr(Len(frm$)) + FK$(13)
                    End If
                   
                    End If
 
 
            End If
        End If
there1234:
       If LastErNum = 0 Then MyErMacro rest$, "", ""
    End If
    GoFunc = False
  ' ��� ���� �� ���� ��� Basestack
    HERE$ = ohere$

    var2used = vars
If UBound(var()) / 3 >= var2used And UBound(var()) > 99 Then

    ReDim Preserve var(UBound(var()) / 2 + 1) As Variant

End If
    For i = UBound(var()) - 1 To vars + 1 Step -1
    If IsObject(var(i)) Then Set var(i) = Nothing
    var(i) = Empty
    Next i
    
    VarName$ = Left$(VarName$, VName)
   


    Do While arrs < neoArray.Count
    neoArray.remove neoArray.Count
    Loop

    arrname$ = Left$(arrname$, anames)
    sb2used = subs
    If UBound(SB()) / 3 > sb2used And UBound(SB()) > 99 Then
       
            ReDim Preserve SB(UBound(SB()) / 2 + 1) As String
            ReDim Preserve SBC(UBound(SBC()) / 2 + 1) As Long
            ReDim Preserve sbgroup(UBound(sbgroup()) / 2 + 1) As String
    End If
    For i = subs + 1 To UBound(SB()) - 1
    SB(i) = ""
    SBC(i) = 0
    sbgroup(i) = ""
    Next i

    SubName$ = Right$(SubName$, snames)
   If Not basestack.soros Is mystack.soros Then
   End If
    basestack.soros.MergeTop mystack.soros


    Exit Do
Case 1, 3
HERE$ = mystack.OriginalName$
  mystack.ThrowThreads
''''  If Not mystack.FuncObj Is Nothing Then
Set mystack.LastObj = mystack.FuncObj
Set mystack.FuncObj = Nothing
''End If
    If IsObject(mystack.LastObj) Then
                 If mystack.LastObj Is Nothing Then
                 vl = mystack.FuncValue
                 Else
                Set basestack.LastObj = mystack.LastObj
                 End If
    Else
              vl = mystack.FuncValue
    End If

    HERE$ = ohere$
    If FastSymbol(rest$, ")") Then GoFunc = True
     If Not nokillvars Then
    var2used = vars
If UBound(var()) / 3 >= var2used And UBound(var()) > 99 Then
    ReDim Preserve var(UBound(var()) / 2 + 1) As Variant
    
End If
    For i = UBound(var()) - 1 To vars + 1 Step -1
    If IsObject(var(i)) Then Set var(i) = Nothing
    var(i) = Empty
    Next i
    VarName$ = Left$(VarName$, VName)
    'ReDim Preserve arr(arrs)


    Do While arrs < neoArray.Count
    neoArray.remove neoArray.Count
    Loop

    arrname$ = Left$(arrname$, anames)
    sb2used = subs
    If UBound(SB()) / 3 > sb2used And UBound(SB()) > 99 Then
       
            ReDim Preserve SB(UBound(SB()) / 2 + 1) As String
            ReDim Preserve SBC(UBound(SBC()) / 2 + 1) As Long
            ReDim Preserve sbgroup(UBound(sbgroup()) / 2 + 1) As String
    End If
    For i = subs + 1 To UBound(SB()) - 1
    SB(i) = ""
    SBC(i) = 0
    sbgroup(i) = ""
    Next i

    SubName$ = Right$(SubName$, snames)
    End If
    

    Exit Do
Case 2
  mystack.ThrowThreads  ' for safety...
    i = 1

                        If frm$ <> "" Then
                             If frm$ = Chr$(0) Then
                                     If basestack.IsInRetStackNumber(p) Then i = Len(SB(x1)) - CLng(p) + 1
                             Else
                                 If InStr(frm$, vbCr) > 0 Then
                                         i = rinstr(SB(x1), frm$)
                                         If i = 0 Then i = Len(SB(x1)) + 1
                                          Else
                                          i = PosLabel(frm$, SB(x1))
                                         End If
                             End If
                     End If
 
    
End Select

Loop
Else
rest$ = what$ & " " & rest$
GoFunc = False
End If
End Function
Sub stackshow(b As basetask)
Dim p As Double, r$, AL$, s$, dl$, dl2$  ', X As Index
Static Once As Boolean, ok As Boolean
If Once Then Exit Sub
Once = True
If TestShowCode Then
With Form2.testpad
.Enabled = True
.SelectionColor = rgb(255, 64, 128)
.nowrap = True
.Text = TestShowSub
.mdoc.WrapAgainColor
If AscW(Form2.Label1(1)) = 8191 Then
.SelStartSilent = TestShowStart - 1 ''Len(Mid$(Form2.Label1(1), 7)) - 1
.SelLength = Len(Mid$(Form2.Label1(1), 7))
Else
.SelStartSilent = TestShowStart - Len(Form2.Label1(1)) - 1
.SelLength = Len(Form2.Label1(1))
End If

.Enabled = False
If .SelLength > 1 And Not AscW(Form2.Label1(1)) = 8191 Then
If Not myUcase(.SelText, True) = Form2.Label1(1) Then

End If
End If
''Debug.Print b.addlen
MyDoEvents
End With

Once = False
Exit Sub
Else
Form2.testpad.nowrap = False
End If




Dim Stack As mStiva
Set Stack = b.soros

If Form2.compute <> "" Then
dl$ = Form2.compute
With Form2.testpad
.Enabled = True
.ResetSelColors
''
.nowrap = False
''
End With
Do
dl2 = dl$
ok = False
If FastSymbol(dl$, ")") Then
ok = True
ElseIf IsExp(b, dl$, p) Then

    AL$ = Left$(dl2$, Len(dl2$) - Len(dl$)) & "=" & CStr(p) & "," & AL$
    ok = True
    ElseIf IsStrExp(b, dl$, s$) Then
    AL$ = Left$(dl2$, Len(dl2$) - Len(dl$)) & "=" & Chr(34) + s$ & Chr(34) & "," & AL$
    ok = True
    ElseIf InStr(dl$, ",") > 0 Then
       If InStr(dl$, Chr(2)) > 0 Then
     r$ = GetStrUntil(Chr(2), dl$, False)
     s$ = "<"
If ISSTRINGA(dl$, r$) Then If pagio$ <> "GREEK" Then s$ = s$ & r$
If ISSTRINGA(dl$, r$) Then If pagio$ = "GREEK" Then s$ = s$ & r$
AL$ = s$ & ">" & AL$
ok = True
Else
AL$ = AL$ & " " & GetStrUntil(",", dl$)
    
     dl$ = ""
  
End If
    
    ok = True
    ElseIf dl$ <> "" Then
      If InStr(dl$, Chr(2)) > 0 Then
     r$ = GetStrUntil(Chr(2), dl$, False)
     s$ = "<"
If ISSTRINGA(dl$, r$) Then If pagio$ <> "GREEK" Then s$ = s$ & r$
If ISSTRINGA(dl$, r$) Then If pagio$ = "GREEK" Then s$ = s$ & r$
AL$ = s$ & ">" & AL$
ok = True
Else
     AL$ = AL$ & " " & dl$
     dl$ = ""
  
End If

    End If
    
DropLeft ",", dl$

Loop Until Not ok
End If
If AL$ <> "" Then AL$ = AL$ & vbCrLf
If pagio$ = "GREEK" Then
AL$ = AL$ & "����� "
Else
AL$ = AL$ & "STACK "
End If
Dim i As Long

Do
i = i + 1
If Stack.Total < i Then Exit Do
If Stack.StackItemType(i) = "N" Then
AL$ = AL$ & CStr(Stack.StackItem(i)) & " "
ElseIf Stack.StackItemType(i) = "S" Then
r$ = Stack.StackItem(i)
    If Len(r$) > 78 Then
    AL$ = AL$ & Chr(34) + Left$(r$, 75) & "..." & Chr(34)
    Else
    AL$ = AL$ & Chr(34) + r$ & Chr(34)
    End If
Else
AL$ = AL$ & Stack.StackItemTypeObjectType(i) & " "
End If
Loop
With Form2
    .gList1.BackColor = &H3B3B3B
        .Label1(2) = .Label1(2)
    
        .testpad.Enabled = True
        .testpad.Text = AL$
        .testpad.SetRowColumn 1, 1
        .testpad.Enabled = False
End With
Once = False
End Sub
Function RepPara(basestack As basetask, rest$) As Boolean
Dim x1 As Long, y1 As Long, i As Long, j As Long
Dim x As Double, y As Double, SS$, s$, what$
Dim pppp As mArray
RepPara = True
        If Not IsExp(basestack, rest$, y) Then
            MissNumExpr
            RepPara = False
            Exit Function
        Else
         If FastSymbol(rest$, ",") Then
                    If IsExp(basestack, rest$, x) Then
                        x = Int(x)
                        If x < 1 Then
                        MyErMacro rest$, "the index base must be >=1", "� ���� ������ ������ �� ����� >=1"
                        Exit Function
                        End If
                     
                    End If
            Else
                x = 0
            End If
        
           
            x1 = Abs(IsLabel(basestack, rest$, what$))
            If x1 = 3 Then
                    If GetVar(basestack, what$, i) Then
                            If Typename(var(i)) = doc Then
                                    If Not FastSymbol(rest$, "=") Then
                                        MissSymbolMyEr "="
                                        RepPara = False
                                        Exit Function
                                    Else
                                            If Not IsStrExp(basestack, rest$, what$) Then
                                                MissStringExpr
                                                RepPara = False
                                                Exit Function
                                            Else
                                            
                                            s$ = GetNextLine(what$)
                                                 j = var(i).ParagraphFromOrder(y)
                                                 If j = -1 Then
                                                        
                                                           MyErMacro rest$, "no such paragraph " & CStr(y), "��� ������� ������ ���������� " & CStr(y)
                                                         Exit Function
                                                Else
                                                If x > 1 Then
                                                If what$ = "" Then
                                                
                                                SS$ = var(i).TextParagraph(j)
                                                
                                                s$ = Left(SS$ + Space$(x - 1), x - 1) + s$ + Mid$(SS$, Len(s$) + x)
                                                Else
                                                
                                                s$ = Left(var(i).TextParagraph(j) + Space$(x - 1), x - 1) + s$
                                                
                                                End If
                                            
                                                End If
                                                ''var(i).ReWritePara j, s$
                                                var(i).TextParagraph(j) = s$
                                                SetNextLine what$
                                                While what$ <> ""
                                                    s$ = GetNextLine(what$)
                                                    y = y + 1
                                                    j = var(i).ParagraphFromOrder(y)
                                                    If j = -1 Then
                                                        var(i).AppendParagraph s$
                                                    Else
                                                        If what$ = "" Then s$ = s$ + Mid$(var(i).TextParagraph(j), Len(s$) + 1)
                                                        ''var(i).ReWritePara j, s$
                                                        var(i).TextParagraph(j) = s$
                                                    End If
                                                    SetNextLine what$
                                                Wend
                                                
                                                End If
                                            End If
                                    End If
                            Else
                                 MissingDoc   ' only doc not string var
                                 RepPara = False
                                Exit Function
                            End If
                    Else
                        Nosuchvariable what$
                        RepPara = False
                        Exit Function
                    End If
            ElseIf x1 = 6 Then
                    If neoGetArray(basestack, what$, pppp) Then
                        If Not NeoGetArrayItem(pppp, basestack, what$, i, rest$) Then RepPara = False: Exit Function
                        If Typename(pppp.item(i)) = doc Then
                                    If Not FastSymbol(rest$, "=") Then
                                            MissSymbolMyEr "="
                                            RepPara = False
                                            Exit Function
                                            Else
                                If IsStrExp(basestack, rest$, what$) Then
                                            s$ = GetNextLine(what$)
                                                 j = pppp.item(i).ParagraphFromOrder(y)
                                                 
                                                If j = -1 Then
                                            
                                               MyErMacro rest$, "no such paragraph " & CStr(y), "��� ������� ������ ���������� " & CStr(y)
                                             Exit Function
                                             Else
                                                If x > 1 Then
                                                    If what$ = "" Then
                                                        SS$ = pppp.item(i).TextParagraph(j)
                                                        s$ = Left(SS$ + Space$(x - 1), x - 1) + s$ + Mid$(SS$, Len(s$) + x)
                                                    Else
                                                        s$ = Left(pppp.item(i).TextParagraph(j) + Space$(x - 1), x - 1) + s$
                                                    End If
                                                End If
                                                ''pppp.item(i).ReWritePara j, s$
                                                pppp.item(i).TextParagraph(j) = s$
                                                SetNextLine what$
                                                While what$ <> ""
                                                    s$ = GetNextLine(what$)
                                                    
                                                    y = y + 1
                                                    j = pppp.item(i).ParagraphFromOrder(y)
                                                    If j = -1 Then
                                                    
                                                    pppp.item(i).AppendParagraph s$
                                                    Else
                                                    
                                                    If what$ = "" Then s$ = s$ + Mid$(pppp.item(i).TextParagraph(j), Len(s$) + 1)
                                                    
                                                   '' pppp.item(i).ReWritePara j, s$
                                                     pppp.item(i).TextParagraph(j) = s$
                                                    End If
                                                    SetNextLine what$
                                                Wend
                                                
                                              End If
                                Else
                                    MissStringExpr
                                    RepPara = False
                                    Exit Function
                                
                                End If

                            End If
                        Else
                             MissingDoc   ' only doc not string var
                             RepPara = False
                            Exit Function
                        End If
                    End If
            Else
                MissingDoc   ' only doc not string var
                RepPara = False
                Exit Function
            End If
        End If
End Function
Function IdPara(basestack As basetask, rest$, Lang As Long) As Boolean
Dim x1 As Long, y1 As Long, i As Long, it As Long, vvl As Variant
Dim x As Double, y As Double, s$, what$, W3 As Long, W4 As Long
Dim xa As Long, ya As Long
Dim pppp As mArray


IdPara = True
If IsLabelSymbolNew(rest$, "���", "TO", Lang) Then
        If Not IsExp(basestack, rest$, y) Then
            MissNumExpr
            IdPara = False
            Exit Function
        Else
        
          y = y - 1
                     If y < 0 Then y = -1
         If FastSymbol(rest$, ",") Then
                    If IsExp(basestack, rest$, x) Then
                        x = Int(x)
                        If x < 1 Then
                        MyErMacro rest$, "the index base must be >=1", "� ���� ������ ������ �� ����� >=1"
                        ' not needed to change idpara must be true because macro embed an ERROR command
                        Exit Function
                        End If
                   
                    End If
                    
            Else
                x = 0
            End If
        
            x1 = Abs(IsLabel(basestack, rest$, what$))
            If x1 = 3 Then
                    If GetVar(basestack, what$, i) Then
                        If Typename(var(i)) = doc Then
                                If Not FastSymbol(rest$, "=") Then
                                    MissSymbolMyEr "="
                                    IdPara = False
                                    Exit Function
                                Else
                                    If Not IsStrExp(basestack, rest$, s$) Then
                                        MissStringExpr
                                        IdPara = False
                                        Exit Function
                                    Else
                                    If y = -1 Then
                                    y = var(i).DocParagraphs
                                    End If
                                   If var(i).ParagraphFromOrder(y + 1) = -1 Then
                                   CheckVar var(i), s$
                                    ElseIf y < 1 Then
                        
                                    var(i).InsertDoc var(i).ParagraphFromOrder(1), CLng(x), s$
                                    Else
                                    var(i).InsertDoc var(i).ParagraphFromOrder(y + 1), CLng(x), s$
                                    End If
                                    End If
                                End If
                        Else
                             MissingDoc   ' only doc not string var
                             IdPara = False
                            Exit Function
                        End If
                    Else
                        Nosuchvariable what$
                        IdPara = False
                        Exit Function
                    End If
            ElseIf x1 = 6 Then
                    If neoGetArray(basestack, what$, pppp) Then
                        If Not NeoGetArrayItem(pppp, basestack, what$, it, rest$) Then IdPara = False: Exit Function
                        If Typename(pppp.item(it)) = doc Then
                                    If Not FastSymbol(rest$, "=") Then
                                            MissSymbolMyEr "="
                                            IdPara = False
                                            Exit Function
                                            Else
                                If IsStrExp(basestack, rest$, s$) Then
                                
                                
                                    If pppp.item(it).ParagraphFromOrder(y + 1) = -1 Then
                                       CheckVar pppp.item(it), s$
                                        ElseIf y < 1 Then
                                      
                                        pppp.item(it).InsertDoc pppp.item(it).ParagraphFromOrder(1), CLng(x), s$
                                        Else
                                        pppp.item(it).InsertDoc pppp.item(it).ParagraphFromOrder(y + 1), CLng(x), s$
                                        End If
                                
                                
                                
                                Else
                                    MissStringExpr
                                    IdPara = False
                                    Exit Function
                                
                                End If

                            End If
                        Else
                             MissingDoc   ' only doc not string var
                             IdPara = False
                            Exit Function
                        End If
                    End If
            Else
                MissingDoc   ' only doc not string var
                IdPara = False
                Exit Function
            End If
        End If
 ElseIf IsExp(basestack, rest$, x) Then
    x = Int(x)
    If x < 1 Then
    MyErMacro rest$, "the index base must be >=1", "� ���� ������ ������ �� ����� >=1"
    ' not needed to change idpara must be true because macro embed an ERROR command
    Exit Function
    End If
    If FastSymbol(rest$, ",") Then
        If Not IsExp(basestack, rest$, y) Then
        MissNumExpr
        IdPara = False
        Exit Function
        End If
        y = Int(y)
        If y < 0 Then
            MyErMacro rest$, "number to delete chars must positive or zero", "� ������� ��� �� �������� ������ �� ����� ������� � �����"
            Exit Function
        End If
    Else
    y = 0  ' only insert
    End If

     x1 = Abs(IsLabel(basestack, rest$, what$))
        If x1 = 3 Then
            If GetVar(basestack, what$, i) Then
        
                If Typename(var(i)) = doc Then
                    If Not FastSymbol(rest$, "=") Then
                    MissSymbolMyEr "="
                    IdPara = False
                    Exit Function
                    Else
                            If Not IsStrExp(basestack, rest$, s$) Then
                                MissStringExpr
                                IdPara = False
                                Exit Function
                            Else
                                    If y = 0 Then
                                           var(i).FindPos 1, 0, CLng(x), x1, y1, W3, W4
                                           If W4 = 0 Then
                                          ' ' merge to previous
                                           End If
       
                                    Else
                                             var(i).FindPos 1, 0, x + y, x1, y1, W3, W4
                                            ' so now we now the paragraph w3 and the position w4
                                            var(i).BackSpaceNchars W3, W4, y
                                    End If
                                    If s$ <> "" Then var(i).InsertDoc W3, W4, s$
                            End If
                     End If
                Else
                    If Not FastSymbol(rest$, "=") Then
                    MissSymbolMyEr "="
                    IdPara = False
                    Exit Function
                    Else
                    If Not IsStrExp(basestack, rest$, s$) Then
                                MissStringExpr
                                IdPara = False
                                Exit Function
                            Else
                                    If y = 0 Then
                                        var(i) = Left$(var(i), x - 1) & s$ & Mid$(var(i), x)
                                    Else
                                        If s$ = "" Then
                                        var(i) = Left$(var(i), x - 1) & Mid$(var(i), x + y)
                                        Else
                                        Mid$(var(i), x, y) = s$
                                        End If
                                    End If
                            End If
                    End If
                
                End If
            Else
            Nosuchvariable what$
            IdPara = False
            Exit Function
            
            End If
        ElseIf x1 = 6 Then
        
        
        If neoGetArray(basestack, what$, pppp) Then
                If Not NeoGetArrayItem(pppp, basestack, what$, it, rest$) Then IdPara = False: Exit Function
                If Typename(pppp.item(it)) = doc Then
                    If FastSymbol(rest$, "=") Then
                        If IsStrExp(basestack, rest$, s$) Then
                      If y = 0 Then
                                     pppp.item(it).FindPos 1, 0, CLng(x), xa, ya, W3, W4
                                           If W4 = 0 Then
                                          ' ' merge to previous
                                           End If

                      Else
                                     pppp.item(it).FindPos 1, 0, x + y, xa, ya, W3, W4
                                            ' so now we now the paragraph w3 and the position w4
                                            pppp.item(it).BackSpaceNchars W3, W4, y
                      End If
                       If s$ <> "" Then pppp.item(it).InsertDoc W3, W4, s$
                        Else
                            MissStringExpr
                            IdPara = False
                        End If
                    End If
                Else
                If FastSymbol(rest$, "=") Then
                If IsStrExp(basestack, rest$, s$) Then
                If y = 0 Then
                    pppp.item(it) = Left$(pppp.item(it), x - 1) & s$ & Mid$(var(i), x)
                Else
                                                        If s$ = "" Then
                                        pppp.item(it) = Left$(pppp.item(it), x - 1) & Mid$(pppp.item(it), x + y)
                                        Else
                                      vvl = pppp.item(it)
                                        Mid$(vvl, x, y) = s$
                                        pppp.item(it) = vvl
                                        End If
                End If
                Else
                     MissStringExpr
                            IdPara = False
                End If
                End If
                End If
        Else
            IdPara = True
        End If
        
        
        
        Else
        MissingStrVar
        IdPara = False
        ' wrong parameter
        End If


 
 
End If

End Function
Function Identifier(basestack As basetask, what$, rest$) As Boolean
Dim p As Double, i As Long, w$, pa$, s$, SS$, x As Double, y As Double, it As Long, vvl As Variant
Dim x1 As Long, y1 As Long, par As Boolean, ohere$, flag As Boolean, flag2 As Boolean
Dim ps As mStiva, bs As basetask, Lang As Long, f As Long
Dim pppp As mArray, myobject As Object, scr As Object
Dim col As Long
Dim myIdentifier As Boolean
   If TaskMaster.PlayMusic Then
                    TaskMaster.OnlyMusic = True
                        TaskMaster.TimerTick
                        TaskMaster.OnlyMusic = False
End If

If myexit(basestack) Then
' done ..
rest$ = ""
Identifier = True
Exit Function
End If

Set scr = basestack.Owner
On Error GoTo NERR

ohere$ = HERE$

If what$ = "" Then
Identifier = IsLabel(basestack, rest$, what$)
If Not Identifier Then Exit Function
what$ = myUcase(what$)
Lang = codeW(what$)
Else
what$ = myUcase(what$)

Lang = codeW(what$)
Identifier = True
x1 = Len(rest$)
If Left$(what$, 1) <> "@" Then
If Not NoOptimum Then If LookFastForModule(what$) Then GoTo JUMPHEREFORMODULESFAST
Else
what$ = Mid$(what$, 2)
End If
End If

Select Case what$
Case "LET", "���", "����", "���"
Do
    x1 = IsLabel(basestack, rest$, what$)
    If x1 <> 0 Then
            If x1 > 4 Then
                    SS$ = BlockParam(rest$)
                    what$ = what$ + SS$ + ")"
                    rest$ = Mid$(rest$, Len(SS$) + 2)
                    Do While IsSymbol(rest$, ".")
                    x1 = IsLabel(basestack, rest$, SS$)
                    If x1 > 0 Then what$ = what$ + "." + SS$ Else Exit Do
                            If x1 > 4 Then
                            SS$ = BlockParam(rest$)
                            what$ = what$ + SS$ + ")"
                            rest$ = Mid$(rest$, Len(SS$) + 2)
                            End If
                    Loop
            End If
    
If FastSymbol(rest$, "=") Then

    i = 1
    aheadstatus rest$, False, i
    If i > 1 Then
SS$ = Left$(rest$, i - 1)
                I2 basestack, "PUSH", SS$, flag, Lang
                If LastErNum = -2 Then
                rest$ = SS$ + Mid$(rest$, i)
                Identifier = flag
                Exit Function
                End If
              If Identifier Then
             Identifier = Identifier(basestack, "@READ", what$)
             rest$ = Mid$(rest$, i)
             Else
             MyEr "Nothig to assign", "������ ��� �� ����"
             Exit Function
             End If
    Else
            MyEr "Expecting expression", "�������� �������"
            Identifier = False
    End If
  
End If

End If
Loop Until Not FastSymbol(rest$, ",")
Exit Function
Case "GROUP", "�����"
  If IsLabelSymbolNew(rest$, "����", "THIS", Lang) Then
  If basestack.UseGroupname <> "" Then
  Identifier = False
  MyEr "Not in a Group Definition: Remove Group This { }", "��� �� ������ ������: �������� ��� ����� ���� {} "
  Exit Function
  Else
    
    If IsLabel(basestack, ".DELETEME", s$) < 0 Then
        If Len(s$) = 8 Then Identifier = False: Exit Function
    what$ = Left$(s$, Len(s$) - 9)
    x1 = 1
    Else
    Identifier = False
  MyEr "Used in a For statement, For Group { this= or =this }", "��������������� ����� ���� ��� ����� { ����= � =����} "
  Exit Function
    End If
  End If
  
Else
 x1 = Abs(IsLabel(basestack, rest$, what$))
 If HERE$ = what$ Then
NameConflict
    Identifier = False
Exit Function
 End If
 End If
 
 If x1 = 1 Then

  If IsLabelSymbolNew(rest$, "�����", "TYPE", Lang) Then
If IsStrExp(basestack, rest$, SS$) Then
s$ = basestack.GroupName
prepareGroup basestack, what$, y1
 Identifier = ExecuteVarOnly(basestack, basestack.GroupName & what$, y1, SS$, Lang) <> 0
 basestack.GroupName = s$
End If

Else
par = Not FastSymbol(rest$, "+")
   If FastSymbol(rest$, "{") Then
 If par Then

 '' GROUP
              s$ = basestack.GroupName
              prepareGroup basestack, what$, y1
            If ExecuteVarOnly(basestack, basestack.GroupName & what$, y1, rest$, Lang) = 0 Then
            
            var(y1).edittag = "'11001EDIT " + HERE$ + ", " + CStr(Len(rest$))
             End If
        
            Identifier = FastSymbol(rest$, "}")
           
Else
'' CLASS
            SS$ = block(rest$)
              s$ = basestack.GroupName
              prepareGroup basestack, what$, y1
            If ExecuteVarOnly(basestack, basestack.GroupName & what$, y1, SS$, Lang) = 0 Then
            rest$ = SS$ + rest$
Else
Identifier = FastSymbol(rest$, "}")
End If
End If
 basestack.GroupName = s$
Else
If GetVar(basestack, basestack.GroupName & what$, i) Then
Else
 i = GlobalVar(basestack.GroupName & what$, CLng(0))
 Set var(i) = New Group
 
 End If
End If
  End If
  End If
  Exit Function
Case "CALL", "������"
' CHECK FOR NUMBER...

If FastSymbol(rest$, "!") Then basestack.nokillvars = True
par = False: f = 0
If IsLabelSymbolNew(rest$, "����", "VOID", Lang) Then par = True
If IsLabelSymbolNew(rest$, "���������", "EXTERN", Lang) Then
' NOW WE HAVE TO GET THE NUMBER
basestack.nokillvars = False
If IsExp(basestack, rest$, p) Then
' WE HAVE THE NUMBER, BUT IS f OUR OBJECT???
i = CLng(p)
If i >= 0 Or i <= p Then
If Typename(var(i)) = "stdCallFunction" Then
CallByObject basestack, i, Not par
Exit Function
Else
' INVALID FUNCTION HANDLE

End If

Else
' INVALID FUNCTION HANDLE
End If
Else
'WRONG...
End If
Else
If IsLabelSymbolNew(rest$, "���������", "FUNCTION", Lang) Then f = 3
reenter1:
i = Abs(IsLabel(basestack, rest$, what$))
If f > 0 And i < 5 Then i = i + 4: what$ = what$ & "("
If i = 1 Then
    If FastSymbol(rest$, ",") Then
    End If
  ''  what$ = myUcase$(what$)
    MakeThisSub basestack, what$
   it = GetlocalSub(what$, x1)
    If Not it Then it = GetlocalSubExtra(what$, x1)

    '
    If Not it Then it = GetSub(what$, x1)
    
    If it Then
     Set bs = New basetask
     bs.reflimit = Len(VarName$)
        Set bs.Parent = basestack
        If basestack.IamThread Then Set bs.Process = basestack.Process
        Set bs.Sorosref = basestack.soros  ' same stack
        Set bs.Owner = basestack.Owner
        bs.UseGroupname = sbgroup(x1)
        bs.OriginalCode = x1

       Call GoFunc(bs, what$, rest$, vvl)
               
        Set bs = Nothing
        basestack.nokillvars = False
        If LastErNum = -1 Then Identifier = False: Exit Function
        
        Else
         rest$ = ":" & what$ & " " & rest$
    End If
    Identifier = True
    ''basestack.Nokillvars = False
   Exit Function
ElseIf i = 3 Then
    If FastSymbol(rest$, ",") Then
    
    End If
    If IsStrExp(basestack, what$, s$) Then
        
        rest$ = ": Call " & s$ & " " & rest$
    Else
        ' error
        basestack.nokillvars = False
        Identifier = False
        Exit Function
    End If
ElseIf i > 3 Then
' call function as module


    SS$ = what$ & ")"
     If FastSymbol(rest$, ",") Then
    
    End If
    ''ss$ = myUcase$(ss$)

    
    MakeThisSub basestack, SS$
    it = CLng(GetSub(SS$, x1))
    
    If Not it Then it = CLng(GetlocalSub(SS$, x1))
 
    If it Then
        Set bs = New basetask
        bs.reflimit = Len(VarName$)
        Set bs.Parent = basestack
        If basestack.IamThread Then Set bs.Process = basestack.Process
        If Not TheSame(HERE$, SS$) Then Set bs.Sorosref = basestack.soros
        Set bs.Owner = basestack.Owner
             bs.UseGroupname = sbgroup(x1)
             bs.OriginalCode = x1
        Call GoFunc(bs, SS$, rest$, vvl)
        Set bs = Nothing
        If Not par Then
        If InStr(SS$, "$") > 0 Then
            If vvl <> "" Then  ' no zero we have error
            x = InStr(vvl, "|")
            If x = 0 Then
                MyEr "ERROR " & vvl, "����� " & vvl
            Else
                MyEr "ERROR " & Left$(vvl, x - 1), "����� " & Mid$(vvl, x + 1)
            End If
            Identifier = False
            basestack.nokillvars = False
            Exit Function
            End If
        Else
            If Val(vvl) <> 0 Then  ' no zero we have error
                MyEr "ERROR " & Trim$(Str$(Val(vvl))), "����� " & Trim$(Str$(Val(vvl)))
                Identifier = False
                basestack.nokillvars = False
                Exit Function
            End If
        End If
        End If
    End If
ElseIf IsStrExp(basestack, rest$, s$) Then
If f = 3 Then s$ = s$ & "("
If FastSymbol(rest$, ",") Then
End If
If s$ <> "" Then
If InStr(s$, ").") > 0 And f <> 3 Then
If Right$(s$, 1) = ")" Then

rest$ = s$ & " " & rest$

GoTo reenter1
Else

rest$ = ": " + s$ & " " & rest$
End If
Else
If Right$(s$, 1) = ")" Then

rest$ = Left$(s$, Len(s$) - 1) & " " & rest$

Else

rest$ = s$ & " " & rest$
End If
GoTo reenter1
End If
End If
Else
rest$ = ": " & rest$
End If
End If
basestack.nokillvars = False
Exit Function
Case "COMMIT", "�������"
If basestack.UseGroupname <> "" Then
f = True
col = 1
Set bs = basestack
GoTo contFromRebound
Else
BadReBound
Identifier = False
End If
Exit Function
Identifier = ProcAbout(basestack, rest$, Lang)
Exit Function
Case "ICON", "���������"
' �� �� ������ ���� ������ ��� INLINE �������� ����������...hex$
If ttl Then
If IsStrExp(basestack, rest$, s$) Then

If CFname$(s$) <> "" Then
Set Form3.Icon = LoadPicture(GetDosPath(s$))
End If
Else
Set Form3.Icon = Form2.Icon
End If
End If
Case "TITLE", "������"
If IsStrExp(basestack, rest$, s$) Then
If Not ttl Then Load Form3
Form3.Caption = s$
Form3.Visible = True

If FastSymbol(rest$, ",") Then

    If IsExp(basestack, rest$, p) Then
        If p = 0 Then
                   If Not Form3.WindowState = 1 Then
                        Form3.Visible = True: Form3.Move -48000, 48000
                        Form3.WindowState = 1
                   
                   End If
        Else
            If Not Form3.WindowState = 0 Then
                Form3.Visible = True

                Form3.WindowState = 0
             Form3.Move -48000, 48000
                End If
            
        End If
             mywait basestack, 100
        Identifier = True
        Exit Function
    Else
        Identifier = False
    End If
Else
    Form3.WindowState = 0
    MyDoEvents
    Sleep 1
End If
ElseIf ttl Then
    If Form3.WindowState = 1 Then
    Form3.WindowState = 0
    MyDoEvents
    Sleep 1
    End If
Unload Form3
End If
Exit Function
Case "WRITE", "�����"
If IsLabelSymbolNew(rest$, "HEX", "������", Lang) Then it = 1
If FastSymbol(rest$, "#") Then

    Identifier = False
    If IsExp(basestack, rest$, p) Then

        On Error Resume Next
        i = p Mod 512
        
        par = False
        Do While FastSymbol(rest$, ",")

            If IsExp(basestack, rest$, p) Then
                If par Then
                        If Uni(i) Then
                                putUniString i, ","
                        Else
                                putANSIString i, ","
                               ' Print #i, ",";
                        End If
                End If
                If Uni(i) Then
                If it Then
                putUniString i, PACKLNG2$(p)
                Else
                    putUniString i, LTrim(Str$(p))
                    End If
                Else
                    putANSIString i, LTrim(Str$(p))
                    'Print #i, LTrim(str$(p));
                End If
                If Err.Number > 0 Then Exit Function
                ElseIf IsStrExp(basestack, rest$, s$) Then
                        If Uni(i) Then
                                putUniString i, ","
                        Else
                                putANSIString i, ","
                        '       Print #i, ",";
                        End If
                         s$ = Replace$(s$, Chr(34), Chr(34) + Chr(34))
                         If Uni(i) Then
                        
                    putUniString i, Chr(34) + s$ & Chr(34)
                Else
                    putANSIString i, Chr(34) + s$ & Chr(34)
'                    Print #i, chr(34) + S$ & chr(34);
                    End If
                    If Err.Number > 0 Then Exit Function
                Else
                
                    Exit Function
                End If
                par = True
        Loop
        If Uni(i) Then
            putUniString i, vbCrLf
        Else
            putANSIString i, vbCrLf
            'Print #i, Chr$(13) + Chr$(10);
        End If
        Identifier = True

    End If
End If
Exit Function

Case "TEXT", "�������", "HTML"
Identifier = ProcText(basestack, what$, rest$)
Exit Function
Case "STRUCTURE", "����"
TABLENAMES basestack, rest$, Lang
Exit Function
Case "����", "BASE"
' ��� ����
NewBase basestack, rest$
Exit Function
Case "������", "TABLE"
NewTable basestack, rest$
Exit Function
' ���� ������� ���� ����
Exit Function
Case "��������", "EXECUTE"
CommExecAndTimeOut basestack, rest$
' ��� �����
Case "��������", "RETRIEVE"
getrow basestack, rest$, , , Lang
Exit Function
Case "���������", "SEARCH"
getrow basestack, rest$, , "", Lang
Exit Function
Case "��������", "APPEND"
' ����,�������,��������
If IsStrExp(basestack, rest$, s$) Then
append_table basestack, s$, rest$, False
Else
SyntaxError
Identifier = False
End If
Exit Function
Case "��������", "DELETE"
' ����, �������,���� , ��
par = DELfields(basestack, rest$)
Case "����", "ORDER"
MyOrder basestack, rest$
Case "���������", "RETURN"
' ����,"SELECT �������",��������
If IsStrExp(basestack, rest$, s$) Then
append_table basestack, s$, rest$, True, Lang
End If
Exit Function
Case "��������", "COMPRESS"
BaseCompact basestack, rest$
Exit Function

Case "LAYER", "�������"
Identifier = ProcLayer(basestack, rest$)
Exit Function
Case "PRINTER", "���������"
Identifier = ProcPrinter(basestack, rest$)
Exit Function
Case "MOTION", "������"
If what$ = "MOTION" And IsLabelSymbolLatin(rest$, "CENTER") Then
x = interpret(basestack, "MODE" & Str$(players(GetCode(scr)).SZ) & "," & Str$(scr.Width) & "," & Str$(scr.Height))
ElseIf what$ = "������" And IsLabelSymbol(rest$, "������") Then
x = interpret(basestack, "MODE" & Str$(players(GetCode(scr)).SZ) & "," & Str$(scr.Width) & "," & Str$(scr.Height))

Else
If IsExp(basestack, rest$, p) Then x = CLng(p) Else x = scr.Left
If FastSymbol(rest$, ",") Then
If IsExp(basestack, rest$, p) Then
y = CLng(p)
Else
Identifier = False
Exit Function
End If
Else
y = scr.top
End If
scr.Move x, y
End If
 MyDoEvents1 scr

Case "PAGE", "������"
If basestack.toprinter Then
getnextpage
If IsNumber(basestack, rest$, x) Then
If x = 1 Then Portrait basestack Else Landscape basestack
End If
ElseIf IsNumber(basestack, rest$, x) Then
If x = 1 Then Portrait basestack Else Landscape basestack
Else
ClearScr scr, mycolor(PaperOne)
End If
Case "PRINTING", "��������"
 Identifier = ProcPrinting(basestack, rest$, Lang)
 Exit Function
Case "ESCAPE"
If IsLabelSymbolLatin(rest$, "ON") Then
escok = True
ElseIf IsLabelSymbolLatin(rest$, "OFF") Then
escok = False
Else
Identifier = False
End If
Case "�������"
If IsLabelSymbol(rest$, "���") Then
escok = True
ElseIf IsLabelSymbol(rest$, "���") Then
escok = False
Else
Identifier = False
End If
Case "HIDE", "�����"
If scr.name = "DIS" Or scr.name = "dSprite" Then
scr.Visible = False
End If
MyDoEvents1 scr
Case "SHOW", "�����"
newshow basestack
Exit Function
Case "LEGEND", "��������"
' NEW JUSTIFY...1 RIGHT,2 CENTER ,3 LEFT
Identifier = ProcLegend(basestack, rest$)
Exit Function
Case "MEDIA", "MOVIE", "������", "MUSIC", "�������"  ' ���� ��� ��� ������ �� ��������� � �� �� ������ ��� ����
On Error Resume Next
If IsLabelSymbolNew(rest$, "�������", "LOAD", Lang) Then
            If AVIUP Then
                  AVI.GETLOST
                  MyDoEvents
            End If
            If IsStrExp(basestack, rest$, s$) Then
                If s$ <> "" Then
                    If ExtractType(s$) = "" Then s$ = s$ & ".avi"
                    If CFname(s$) = "" Then
                        s$ = mcd & s$: If CFname(s$) = "" Then Exit Function
                    Else
                        s$ = CFname(s$)
                    End If
                Else
                    Identifier = True  ' ??????????
                    Exit Function
                End If
                avifile = s$
                Load AVI
                
                MediaPlayer1.playMovie
                MediaPlayer1.pauseMovie
                
                MediaPlayer1.setPositionTo 0
                Sleep 2
                MyDoEvents
                AVIRUN = False
                    If Form1.Visible Then Form1.SetFocus
                    MediaPlayer1.setLeftVolume vol * 10
                    MediaPlayer1.setRightVolume vol * 10
                    
                
            End If
            
            Identifier = True
            Exit Function
            
    ElseIf AVIUP Then
        If IsLabelSymbolNew(rest$, "�����", "SHOW", Lang) Then
            'If Not AVIRUN Then MediaPlayer1.playMovie: MediaPlayer1.pauseMovie
                AVI.Show
             AVI.SetFocus
                MyDoEvents
                Identifier = True
                Exit Function
      
        ElseIf IsLabelSymbolNew(rest$, "�����", "HIDE", Lang) Then
                AVI.Hide
                Identifier = True
                Exit Function
        ElseIf IsLabelSymbolNew(rest$, "�������", "PAUSE", Lang) Then
                If MediaPlayer1.isMoviePlaying Then MediaPlayer1.pauseMovie
                Identifier = True
                Exit Function
        ElseIf IsLabelSymbolNew(rest$, "�����", "PLAY", Lang) Then
        
                If Not AVIRUN Then
                AVI.Timer1.Interval = MediaPlayer1.getLengthInMS - MediaPlayer1.getPositionInMS
                AVI.Avi2Up
                End If
        
                MyDoEvents
                Identifier = True
                Exit Function
        ElseIf IsLabelSymbolNew(rest$, "������", "RESTART", Lang) Then
                    If Not MediaPlayer1.isMoviePlaying Then
                    
                         MediaPlayer1.playMovie
                         
                    Else
                         MediaPlayer1.resumeMovie
                    End If
                    MyDoEvents
                    AVIRUN = False
                    Identifier = True
                    Exit Function
        ElseIf IsLabelSymbolNew(rest$, "���", "TO", Lang) Then
                    If IsExp(basestack, rest$, x) Then
                        If MediaPlayer1.getLengthInMS > 0 Then MediaPlayer1.setPositionTo x
                        
                    End If
                    Identifier = True
                    Exit Function

        End If
    End If
' do nothing until here
If IsExp(basestack, rest$, x) Then
   
            If FastSymbol(rest$, ",") Then
    
             UseAviSize = False
    AviSizeX = 0
    AviSizeY = 0
    aviX = 0
    aviY = 0
    UseAviSize = False
    UseAviXY = True: aviX = CLng(x): aviY = 0
            If IsExp(basestack, rest$, y) Then aviY = CLng(y) Else Identifier = False: UseAviXY = False: aviX = 0
            Else ' SPECIAL
            If MediaPlayer1.getLengthInMS > 0 Then
                If x < 0 Then
                MediaPlayer1.pauseMovie
                AVIRUN = MediaPlayer1.isMoviePlaying
                If scr.name <> "Printer" Then
                If scr.Visible Then scr.SetFocus
                End If
                ElseIf x = 0 Then
                          
                MediaPlayer1.playMovie
                MyDoEvents
                Else
                MediaPlayer1.setPositionTo x
                End If
                Identifier = True
        Else
        Identifier = False
        End If
        Exit Function
            End If
            If aviX = 0 Then UseAviXY = False
            If FastSymbol(rest$, ",") Then
                    If IsExp(basestack, rest$, x) Then AviSizeX = CLng(x) Else rest$ = "," & rest$
                If FastSymbol(rest$, ",") Then
            If IsExp(basestack, rest$, x) Then AviSizeY = CLng(x) Else rest$ = "," & rest$
                End If
                UseAviSize = (AviSizeY + AviSizeX) <> 0 Or (aviX = 0 And aviY = 0)
                
            End If
            If Not FastSymbol(rest$, ",") Then
                   If AVIUP Then
                   If UseAviXY And UseAviSize Then
                   AVI.Move aviX, aviY, AviSizeX, AviSizeY
                   MediaPlayer1.sizeLocateMovie 0, 0, Form1.ScaleX(AviSizeX, vbTwips, vbPixels), Form1.ScaleY(AviSizeY, vbTwips, vbPixels) + 1
                   ElseIf UseAviXY Then
                   AVI.Move aviX, aviY
                    End If
           Else
                   If AVIRUN Or AVIUP Then
                AVI.GETLOST
            End If
           
            End If
            Exit Function
            
            End If
      
ElseIf FastSymbol(rest$, ";") Then
'MediaPlayer1.closeMovie
    UseAviXY = False
    UseAviSize = False
    AviSizeX = 0
    AviSizeY = 0
    aviX = 0
    aviY = 0
    AVI.GETLOST
Else
 
'MediaPlayer1.closeMovie
If AVIRUN Or AVIUP Then
                AVI.GETLOST
              
            End If
  
End If

Do
ProcTask2 basestack

 If Not MediaPlayer1.isMoviePlaying Then AVIRUN = False
Loop Until Not AVIRUN Or NOEXECUTION

Do While IsStrExp(basestack, rest$, s$)
If s$ <> "" Then
If ExtractType(s$) = "" Then s$ = s$ & ".avi"
    If CFname(s$) = "" Then
        s$ = mcd & s$: If CFname(s$) = "" Then Exit Function

    Else
        s$ = CFname(s$)
    End If
    Else
    AVI.GETLOST
    Exit Do
End If
avifile = s$
Load AVI
AVI.Avi2Up
AVI.Show
Sleep 5

If AVIRUN Then
If Form1.Visible Then Form1.SetFocus
MediaPlayer1.setLeftVolume vol * 10
MediaPlayer1.setRightVolume vol * 10

End If
If FastSymbol(rest$, ",") Then
If AVIRUN Then
Do
 AVIRUN = MediaPlayer1.isMoviePlaying
 ProcTask2 basestack
' sleep 5

Loop Until AVIRUN = False Or NOEXECUTION
End If
Else
If FastSymbol(rest$, ";") Then
If AVIRUN Then
Do
 AVIRUN = MediaPlayer1.isMoviePlaying
ProcTask2 basestack
 ' sleep 5

Loop Until AVIRUN = False Or NOEXECUTION
End If
End If
Exit Do
End If
Loop

Exit Function
Case "PUT", "����"
Identifier = False
 IsSymbol3 rest$, "#"
If IsExp(basestack, rest$, p) Then
f = p Mod 512
If Not FastSymbol(rest$, ",") Then Exit Function
If Not IsStrExp(basestack, rest$, s$) Then Exit Function
If Uni(f) Then
s$ = Left$(s$, FLEN(f) \ 2)
s$ = s$ & Space$(FLEN(f) \ 2 - Len(s$))
Else
s$ = Left$(s$, FLEN(f))
s$ = s$ & Space$(FLEN(f) - Len(s$))
End If
If FastSymbol(rest$, ",") Then
If IsExp(basestack, rest$, p) Then
i = p Mod 2147483647
Seek #f, (i - 1) * FLEN(f) + 1
Else
Exit Function
End If
End If
If Uni(f) Then
putUniString f, s$
Else
Put #f, , s$
End If

Identifier = True
End If

Case "�����", "FORM"
kForm = True
Identifier = MakeForm(basestack, rest$)

SetText scr
Exit Function
Case "SUBDIR", "������������"
x1 = Abs(IsLabelBig(basestack, rest$, SS$, , w$))
If x1 = 1 Then
SS$ = w$
ElseIf x1 = 0 Or x1 = 3 Or x1 = 6 Then
rest$ = SS$ + rest$
x1 = IsStrExp(basestack, rest$, SS$)
End If
If x1 <> 0 Then
SS$ = mcd + SS$
AddDirSep SS$
If PathMakeDirs(SS$) Then
mcd = SS$
Identifier = True
Else
BadFilename
Identifier = False
End If
End If
Exit Function
Case "DIR", "���������"
' SYMBOL {
If IsLabelSymbolNew(rest$, "������", "USER", Lang) Then
If IsSupervisor Then
dset
Else
    mcd = userfiles
    End If
    Identifier = True
    Exit Function
ElseIf IsLabelSymbolNew(rest$, "�����", "MASTER", Lang) Then

    userfiles = GetSpecialfolder(CLng(26)) & "\M2000\"
    Identifier = True
    Exit Function
ElseIf IsLabelSymbolNew(rest$, "����������", "COMPUTER", Lang) Then
 If IsSupervisor Then pa$ = "#" Else BadCommand: Identifier = False: Exit Function
Else
    pa$ = ""
End If
If FastSymbol(rest$, "?") Or pa$ <> "" Then
If IsSelectorInUse Then
Identifier = False
SelectorInUse
Exit Function
End If

    If pa$ = "#" Then
    w$ = "#"
    pa$ = ""
    Else
    p = CBool(IsStrExp(basestack, rest$, w$))
    End If
    If pa$ = "" Then If FastSymbol(rest$, ",") Then p = CBool(IsStrExp(basestack, rest$, pa$))
    olamazi
    DialogSetupLang Lang
    par = False
    If w$ <> "" Then
    
        If Right$(w$, 1) = "?" Then
            w$ = Trim$(Left$(w$, Len(w$) - 1))
    mcd = w$ '' userfiles = W$
            par = True
        End If
    Else
    If IsSupervisor Then w$ = "\" Else w$ = userfiles
    End If

s$ = ""
    If Form1.Visible Then
    If w$ = "#" Then
        If IsSupervisor Then
          If FolderSelector(basestack, Form1, "", "*", pa$, False) Then
            s$ = ReturnFile
        End If
        Else
        BadCommand
        Identifier = False
        Exit Function
        End If
    Else
    If w$ <> "" Then If Not isdir(w$) Then BadPath: Identifier = False: Exit Function
    If Not CanKillFile(w$) Then FilePathNotForUser: Identifier = False: Exit Function
        If FolderSelector(basestack, Form1, mcd, w$, pa$, par) Then
            s$ = ReturnFile
        End If
    End If
    ElseIf form5iamloaded Then
      If w$ <> "" Then If Not isdir(w$) Then BadPath: Identifier = False: Exit Function

      If Not CanKillFile(w$) Then FilePathNotForUser: Identifier = False: Exit Function
        If FolderSelector(basestack, Form5, mcd, w$, pa$, par) Then
           s$ = ReturnFile
        End If
    End If
    s$ = mylcasefILE(s$)
            If s$ <> "" Then
            AddDirSep s$
                ''If Right(s$, 1) <> "\" Then s$ = s$ & "\"
                If IsLabelSymbolNew(rest$, "���", "TO", Lang) Then
                      Select Case Abs(IsLabel(basestack, rest$, what$))
                        Case 3
                        Identifier = True
                            If GetVar(basestack, what$, i) Then
                            CheckVar var(i), s$
                            Else
                            GlobalVar what$, s$
                    
                            End If
                        Case Else
                            MissingStrVar
                            Identifier = True
                            Exit Function
                        End Select
                 Else
                   mcd = s$
        
                   Identifier = True
                   Exit Function
                End If
            End If
Else
x1 = Abs(IsLabelBig(basestack, rest$, SS$, , w$))
If x1 = 1 Then
SS$ = w$
ElseIf x1 = 0 Or x1 = 3 Or x1 = 6 Then
rest$ = SS$ + rest$
x1 = IsStrExp(basestack, rest$, SS$)
End If

If Left$(SS$, 1) = "." Then x1 = 1
If SS$ = ".." And mcd = userfiles And Not IsSupervisor Then Identifier = True: Exit Function ' no error
FixPath SS$
If x1 = 0 Then
IsSymbol3 rest$, "."
If FastSymbol(rest$, "*") Then
rest$ = Chr(34) + "*" + Chr(34) + rest$
ElseIf Not FastSymbol(rest$, "!") Then
rest$ = Chr(34) + "GSB" + Chr(34) + rest$
End If
 x1 = 1: SS$ = mcd
 par = True
End If
If x1 <> 0 Then
AddDirSep SS$
    If isdir(SS$) Then
        If Right(SS$, 1) <> "\" Then SS$ = SS$ & "\"
        If IsLabelSymbolNew(rest$, "���", "TO", Lang) Then
                Select Case Abs(IsLabel(basestack, rest$, what$))
                Case 3
                Identifier = True
                    If GetVar(basestack, what$, i) Then
                    CheckVar var(i), SS$
                    Else
                    GlobalVar what$, SS$
            
                    End If
                Case Else
               MissingStrVar
               Identifier = False
            Exit Function
                End Select
          
        Else
        If CanKillFile(SS$) Then
            mcd = SS$
            Identifier = True
            If par = True Then
            'GOTO FILES
            If UserPath = "." Then
            If Lang Then
            SS$ = Chr(34) & "Dir User " & Originalusername & Chr(34)
                Else
            SS$ = Chr(34) & "��������� ������ " & Originalusername & Chr(34)
            End If
            Else
            If IsSupervisor Then
            If Lang Then
            SS$ = Chr(34) & "Dir: " & UserPath2 & Chr(34)
                Else
            SS$ = Chr(34) & "���������: " & UserPath2 & Chr(34)
            End If
            Else
            If Lang Then
            SS$ = Chr(34) & "Dir User " & Originalusername & ": " & mylcasefILE(UserPath2) & Chr(34)
                Else
            SS$ = Chr(34) & "��������� ������ " & Originalusername & ": " & mylcasefILE(UserPath2) & Chr(34)
            End If
            End If
            End If
            I2 basestack, "REPORT", SS$, par, Lang
            I3 basestack, "FILES", rest$, par, Lang
            I3 basestack, "CAT", "", par, Lang
            End If
            Else
            
         mcd = SS$
            Identifier = True
            If par Then
            If Lang Then
            SS$ = "{Read Only Folder: " & mcd & "}"
            Else
            SS$ = "{��������� ���� ��� ��������: " & mcd & "}"
            End If
            I2 basestack, "REPORT", SS$, par, Lang
            I3 basestack, "FILES", rest$, par, Lang
            I3 basestack, "CAT", "", par, Lang
            
            End If
            End If
            Exit Function
          
        End If
     Else
     BadPath
            Identifier = False
            Exit Function
    End If
    End If
End If

Case "START", "����"

Targets = False
ReDim q(0) As target
scr.ForeColor = mycolor(11)
basestack.myBold = False
basestack.myitalic = False
pa = 0
            Err.clear
            On Error Resume Next
If IsStrExp(basestack, rest$, s$) Then
            If s$ <> "" And s$ <> "*" Then MYFONT = s$ Else MYFONT = scr.Font.name
      
                scr.Font.charset = 0
                scr.Font.name = MYFONT
               If Not myLcase(MYFONT) = myLcase(scr.Font.name) Then
               scr.Font.charset = 1
               scr.Font.name = MYFONT
               End If
               Sleep 1
              '  mydoevents
                scr.Font.charset = basestack.myCharSet
                    Form1.TEXT1.Font.charset = basestack.myCharSet

    Form1.List1.Font.charset = basestack.myCharSet
  '  Form1.List2.Font.CharSet = BaseSTACK.myCharSet
                scr.FontBold = False
                scr.FontItalic = False
            If Err.Number > 0 Then
                Err.clear
                scr.Font.name = FFONT
                scr.Font.charset = basestack.myCharSet
            End If
        Form3.StoreFont scr.Font.name, scr.FontSize, scr.Font.charset
        
        SetText scr, -2, True
            s$ = ""
            If FastSymbol(rest$, ",") Then
             
            If IsStrExp(basestack, rest$, s$) Then
            'rest$ = s$ & "}" & rest$
            If s$ <> "" Then s$ = ": " & s$ & "}"
            ElseIf FastSymbol(rest$, "{") Then
            s$ = ": " & block(rest$)
            If Not FastSymbol(rest$, "}") Then Identifier = False: Exit Function
                End If
                End If
            Original basestack1, s$  ' set...
            
Else
'NOEXECUTION = True
'MOUT = False
MyEr "", ""
    closeAll ' we closed all files
    If AVIRUN Then MediaPlayer1.stopMovie
    PlaySoundNew ""
    
    If basestack.toprinter Then
    getnextpage
    End If
    Set scr = Form1.DIS
  
Form1.myBreak basestack
    basestack.toprinter = False
    Form1.Cls
    
    Original basestack1, "NEW:CLEAR"

    basestack.soros.Flush

End If
Case "REMOVE", "��������"
If IsLabelSymbolNew(rest$, "������", "LICENCE", Lang) Then
If IsStrExp(basestack, rest$, SS$) Then
Licenses.remove SS$
Else
MissStringExpr
End If
Else
If sb2used <= basestack.OriginalCode And basestack.OriginalCode <> 0 Then
MyEr "Can't Remove Last Module/Function", "��� ����� �� �������� �� ��������� �����/���������"
Identifier = False
Else
If sb2used > 0 Then
    If UBound(SB()) / 2 > sb2used And UBound(SB()) > 19 Then
       
            ReDim Preserve SB(UBound(SB()) / 2 + 1) As String
            ReDim Preserve SBC(UBound(SBC()) / 2 + 1) As Long
            ReDim Preserve sbgroup(UBound(sbgroup()) / 2 + 1) As String
        sb2used = sb2used - 1
    End If
    For i = sb2used + 1 To UBound(SB()) - 1
        SB(i) = ""
        SBC(i) = 0
        sbgroup(i) = ""
    Next i

If lckfrm <> 0 Then
If lckfrm > sb2used Then lckfrm = 0

End If
End If
i = IsString(basestack, SubName$, what$)
End If
End If
Case "CLASS", "�����"
y1 = IsLabelSymbolNew(rest$, "������", "GLOBAL", Lang)
If IsLabelA("", rest$, w$) = 1 Then
        If FastSymbol(rest$, "{") Then
                SS$ = block(rest$)
                i = Len(rest$)
                If Lang = 1 Then
                        rest$ = w$ + "{'11001EDIT " & StripRVAL(ohere$) & ",-" & CStr(i) + vbCrLf + "group " + w$ + " +{" + SS$ & "}" + vbCrLf + "if module(" + w$ + "." + w$ + ") then call! " + w$ + "." + w$ + vbCrLf + "=" + w$ + rest$
                Else
                        rest$ = w$ + "{'11001EDIT " & StripRVAL(ohere$) & ",-" & CStr(i) + vbCrLf + "����� " + w$ + " +{" + SS$ & "}" + vbCrLf + "if module(" + w$ + "." + w$ + ") then call! " + w$ + "." + w$ + vbCrLf + "=" + w$ + rest$
                End If
                GoTo classcont
         Else
                If Not GetVar(basestack, basestack.GroupName & what$, i) Then
                        i = GlobalVar(basestack.GroupName & what$, CLng(0))
                        Set var(i) = New Group
                Else
                        If Typename(var(i)) <> "Group" Then Set var(i) = New Group
                End If
        End If
Else
        MyEr what$ & " without name", what$ & "����� �����"
        Identifier = False
End If
Exit Function
Case "DEF", "����"
y1 = IsLabel(basestack, rest$, what$)
If y1 >= 5 Then
s$ = BlockParam(rest$)
rest$ = Mid$(rest$, Len(s$) + 1)
If FastSymbol(rest$, ")", True) Then
If FastSymbol(rest$, "=", True) Then
i = 1
aheadstatus rest$, False, i
SS$ = Left$(rest$, i - 1)
rest$ = Mid$(rest$, i)
Identifier = Identifier(basestack, "FUNCTION", Left$(what$, Len(what$) - 1) + " {  @read " + s$ + vbCrLf + "=" + SS$ + "}")
Exit Function
End If
End If
Else
MyEr "Need name for function with parenthesis", "���� ����� ���������� �� �����������"
Identifier = False
Exit Function
End If
Case "FUNCTION", "���������"
        y1 = IsLabelSymbolNew(rest$, "������", "GLOBAL", Lang)
classcont:
        If y1 <> 0 Then
                ' FUNCTION GLOBAL "ALFA[212].other" {definition} so we can place [ ] in a definition..
                ' FOR INTERNAL USE..
                    If MaybeIsSymbol(rest$, Chr(34)) Then
                        ISSTRINGA rest$, what$
                            x1 = 1
                        If Right$(what$, 1) = "$" Then
                            x1 = 3
                        ElseIf Right$(what$, 1) = "%" Then
                            x1 = 4
                        End If
                        what$ = what$ & "()"
                        If FastSymbol(rest$, "{") Then
                                SS$ = block(rest$)
                                i = Len(rest$)
                                If Not FastSymbol(rest$, "}") Then
                                        Identifier = False
                                Else
                                ''*****************************************************************************
                                      If Right$(SS$, 2) <> vbCrLf Then SS$ = SS$ + vbCrLf
                                                If Left$(SB(basestack.OriginalCode), 10) = "'11001EDIT" Then
                                                        If InStr(HERE$, ChrW(&H1FFF)) > 0 Then
                                                                s$ = ""
                                                        Else
                                                                pa$ = SB(basestack.OriginalCode)
                                                                If Not Left$(SS$, 10) = "'11001EDIT" Then
                                                                         s$ = GetNextLine(pa$) & "-" & CStr(i) + vbCrLf
                                                                End If
                                                        End If
                                                Else
                                                        If Left$(SS$, 10) <> "'11001EDIT" Then
                                                                s$ = "'11001EDIT " & StripRVAL(ohere$) & ",-" & CStr(i) + vbCrLf
                                                        End If
                                                End If
                                   
                                        basestack.IndexSub = GlobalSub(what$, s$ + SS$)
                                End If
                                Exit Function
                        End If
                End If
        End If
        x1 = Abs(IsLabel(basestack, rest$, what$))
        If x1 = 1 Or x1 = 3 Or x1 = 4 Then   ' C() C%() C$()
                what$ = what$ & "()"
                MakeThisSub basestack, what$
                If y1 Then  ' We have a global function
                        If Not GetGlobalSubAfterHere(what$, x1) Then
                                If FastSymbol(rest$, "{") Then
                                        SS$ = block(rest$)
                                        i = Len(rest$)
                                        If Not FastSymbol(rest$, "}") Then
                                                Identifier = False
                                        Else
                                                  If Right$(SS$, 2) <> vbCrLf Then SS$ = SS$ + vbCrLf
                                                  If Left$(SB(basestack.OriginalCode), 10) = "'11001EDIT" Then
                                                        If InStr(HERE$, ChrW(&H1FFF)) > 0 Then
                                                                s$ = ""
                                                        Else
                                                                pa$ = SB(basestack.OriginalCode)
                                                                If Not Left$(SS$, 10) = "'11001EDIT" Then
                                                                         s$ = GetNextLine(pa$) & "-" & CStr(i) + vbCrLf
                                                                End If
                                                        End If
                                                Else
                                                        If Left$(SS$, 10) <> "'11001EDIT" Then
                                                                s$ = "'11001EDIT " & StripRVAL(ohere$) & ",-" & CStr(i) + vbCrLf
                                                        End If
                                                End If
                                             basestack.IndexSub = GlobalSub(what$, s$ + SS$)
                                    
                                        End If
                                Else
                                       MyEr what$ & " missing definition", what$ & " ������ � �������"
                                End If
                         Else
                                If FastSymbol(rest$, "{") Then
                                        what$ = block(rest$)
                                        If Not FastSymbol(rest$, "}") Then
                                                Identifier = False
                                        Else
                                                If Right$(what$, 2) <> vbCrLf Then what$ = what$ + vbCrLf
                                                SB(x1) = what$: basestack.IndexSub = x1
                                        End If
                                Else
                                    MyEr what$ & " missing definition", what$ & " ������ � �������"
                                End If
                        End If
                        Exit Function
                Else
                        If HERE$ = "" And GetSub(what$, x1) Then
                                If x1 >= lckfrm And lckfrm <> 0 Then   ' when we load a scrabled program..we have locked functions/modules
                                            MyEr what$ & " is locked", what$ & " ����� ����������"
                                            rest$ = ""
                                            Identifier = False: Exit Function
                                End If
                                If FastSymbol(rest$, "{") Then
                                          ''  I = Len(Rest$)      'function point in source
                                            what$ = block(rest$) + " "
                                           '' While Left$(what$, 10) = "'11001EDIT"
                                            ''        SetNextLine what$
                                           '' Wend
                                         ''   what$ = "'11001EDIT " & StripRVAL(ohere$) & ",-" & CStr(I) + vbCrLf + what$
                                            If Not FastSymbol(rest$, "}") Then
                                                    Identifier = False
                                            Else
                                                    If Right$(what$, 2) <> vbCrLf Then what$ = what$ + vbCrLf
                                                    SB(x1) = what$: basestack.IndexSub = x1
                                            End If
                                    Else
                                            Identifier = False
                                    End If
                                    Exit Function
                        ElseIf GetlocalSub(basestack.GroupName & what$, x1) Then
                                    If x1 >= lckfrm And lckfrm <> 0 Then
                                            MyEr what$ & " is locked", what$ & " ����� ����������"
                                            rest$ = ""
                                            Identifier = False: Exit Function
                                    End If
                                    If FastSymbol(rest$, "{") Then
                                            i = Len(rest$)
                                            what$ = block(rest$) + " "
                                            While Left$(what$, 10) = "'11001EDIT"
                                                    SetNextLine what$
                                            Wend
                                            If Right$(what$, 2) <> vbCrLf Then what$ = what$ + vbCrLf
                                            what$ = "'11001EDIT " & StripRVAL(ohere$) & ",-" & CStr(i) + vbCrLf + what$
                                            If Not FastSymbol(rest$, "}") Then
                                                    Identifier = False
                                            Else
                                                    If Right$(what$, 2) <> vbCrLf Then what$ = what$ + vbCrLf
                                                    SB(x1) = what$
                                                    basestack.IndexSub = x1
                                            End If
                                    Else
                                    '' or identifier=false
                                            rest$ = ":" & basestack.GroupName & what$ & " " & rest$
                                    End If
                                    Exit Function
                        ElseIf FastSymbol(rest$, "{") Then
                                    If HERE$ = "" Then
                                                s$ = block(rest$)
                                                If Right$(s$, 2) <> vbCrLf Then s$ = s$ + vbCrLf
                                                ' NEED TO HAVE A HEADER ******************************************************************************
                                                basestack.IndexSub = GlobalSub(what$, s$)
                                    Else
                                                SS$ = block(rest$)
                                                i = Len(rest$)
                                                If Right$(SS$, 2) <> vbCrLf Then SS$ = SS$ + vbCrLf
                                                If Left$(SB(basestack.OriginalCode), 10) = "'11001EDIT" Then
                                                        If InStr(HERE$, ChrW(&H1FFF)) > 0 Then
                                                                s$ = ""
                                                        Else
                                                                pa$ = SB(basestack.OriginalCode)
                                                                If Not Left$(SS$, 10) = "'11001EDIT" Then
                                                                         s$ = GetNextLine(pa$) & "-" & CStr(i) + vbCrLf
                                                                End If
                                                        End If
                                                Else
                                                        If Left$(SS$, 10) <> "'11001EDIT" Then
                                                                s$ = "'11001EDIT " & StripRVAL(ohere$) & ",-" & CStr(i) + vbCrLf
                                                        End If
                                                End If

                                                basestack.IndexSub = GlobalSub(HERE$ & "." & basestack.GroupName & what$, s$ + SS$)
                                    End If
                                    If Not FastSymbol(rest$, "}") Then Identifier = False
                                    Exit Function
                            Else
                                    Identifier = False
                            End If
                End If
        Else
                rest$ = what$ & " " & rest$
                Identifier = False
        End If
Case "MODULE", "�����"
x1 = IsLabelSymbolNew(rest$, "������", "GLOBAL", Lang)
If x1 <> 0 Then
        If MaybeIsSymbol(rest$, Chr(34)) Then
                ISSTRINGA rest$, what$
                GoTo BYPASS1
        End If
End If
If Abs(IsLabel(basestack, rest$, what$)) = 1 Then
        If x1 Then
BYPASS1:
                If Not GetGlobalSubAfterHere(what$, x1) Then
                        x1 = GlobalSub(what$, ""): basestack.IndexSub = x1
                End If
                If FastSymbol(rest$, "{") Then
                       '''' I = Len(Rest$)
                       '''' what$ = block(Rest$)
                       '' If Right$(what$, 2) <> vbCrLf Then what$ = what$ + vbCrLf
                       '''' If Not FastSymbol(Rest$, "}") Then Identifier = False Else SB(x1) = "'11001EDIT " & StripRVAL(ohere$) & ",-" & CStr(I) + vbCrLf + what$
 SS$ = block(rest$)
                                i = Len(rest$)
                                If Right$(SS$, 2) <> vbCrLf Then SS$ = SS$ + vbCrLf
                                If Left$(SB(basestack.OriginalCode), 10) = "'11001EDIT" Then
                                        If InStr(HERE$, ChrW(&H1FFF)) > 0 Then
                                                s$ = ""
                                        Else
                                                pa$ = SB(basestack.OriginalCode)
                                                If Not Left$(SS$, 10) = "'11001EDIT" Then
                                                            s$ = GetNextLine(pa$) & "-" & CStr(i) + vbCrLf
                                                End If
                                        End If
                                Else
                                        If Left$(SS$, 10) <> "'11001EDIT" Then
                                                s$ = "'11001EDIT " & StripRVAL(ohere$) & ",-" & CStr(i) + vbCrLf
                                        End If
                                End If
                                 SB(x1) = s$ + SS$: basestack.IndexSub = x1
                         If Not FastSymbol(rest$, "}") Then Identifier = False
                        
                Else
                        MyEr what$ & " missing definition", what$ & " ������ � �������"
                End If
                Exit Function
        Else
                If HERE$ = "" And GetSub(what$, x1) Then
                        If x1 >= lckfrm And lckfrm <> 0 Then
                                MyEr what$ & " is locked", what$ & " ����� ����������"
                                rest$ = ""
                                Identifier = False: Exit Function
                        End If
                        If FastSymbol(rest$, "{") Then
                            what$ = block(rest$)
                        If Right$(what$, 2) <> vbCrLf Then what$ = what$ + vbCrLf
                                   If Not FastSymbol(rest$, "}") Then
                                           Identifier = False
                                      Else
                                                If Right$(what$, 2) <> vbCrLf Then what$ = what$ + vbCrLf
                                            SB(x1) = what$: basestack.IndexSub = x1
                                End If
                               
                                        
                        Else
                                rest$ = ":" & what$ & " " & rest$      ''why
                        End If
                        Exit Function
                ElseIf GetlocalSub(basestack.GroupName & what$, x1) Then
                        If x1 >= lckfrm And lckfrm <> 0 Then
                                MyEr what$ & " is locked", what$ & " ����� ����������"
                                rest$ = ""
                                Identifier = False: Exit Function
                        End If
                        If FastSymbol(rest$, "{") Then
                                i = Len(rest$) ''
                                what$ = block(rest$) + " "
                                While Left$(what$, 10) = "'11001EDIT"
                                        SetNextLine what$
                                Wend
                                If Right$(what$, 2) <> vbCrLf Then what$ = what$ + vbCrLf
                                what$ = "'11001EDIT " & StripRVAL(ohere$) & ",-" & CStr(i) + vbCrLf + what$
                                If Not FastSymbol(rest$, "}") Then
                                        Identifier = False
                                Else
                                If Right$(what$, 2) <> vbCrLf Then what$ = what$ + vbCrLf
                                SB(x1) = what$
                                basestack.IndexSub = x1
                                End If
                        Else
                                rest$ = ":" & basestack.GroupName & what$ & " " & rest$
                        End If
                        Exit Function
                ElseIf FastSymbol(rest$, "{") Then
                        If HERE$ = "" Then
                                pa$ = block(rest$)
                                If Right$(pa$, 2) <> vbCrLf Then pa$ = pa$ + vbCrLf
                                basestack.IndexSub = GlobalSub(what$, pa$)
                        Else
                                SS$ = block(rest$)
                                i = Len(rest$)
                                If Right$(SS$, 2) <> vbCrLf Then SS$ = SS$ + vbCrLf
                                If Left$(SB(basestack.OriginalCode), 10) = "'11001EDIT" Then
                                        If InStr(HERE$, ChrW(&H1FFF)) > 0 Then
                                                s$ = ""
                                        Else
                                                pa$ = SB(basestack.OriginalCode)
                                                If Not Left$(SS$, 10) = "'11001EDIT" Then
                                                            s$ = GetNextLine(pa$) & "-" & CStr(i) + vbCrLf
                                                End If
                                        End If
                                Else
                                        If Left$(SS$, 10) <> "'11001EDIT" Then
                                                s$ = "'11001EDIT " & StripRVAL(ohere$) & ",-" & CStr(i) + vbCrLf
                                        End If
                                End If
                                basestack.IndexSub = GlobalSub(HERE$ & "." & basestack.GroupName & what$, s$ + SS$) 's$ + block(Rest$)
                        End If
                        If Not FastSymbol(rest$, "}") Then Identifier = False
                        Exit Function
                Else
                        HERE$ = "!" & what$
                End If
        End If
Else
        If what$ <> "" Then rest$ = what$ & " :" & rest$
        If IsStrExp(basestack, rest$, s$) Then
                HERE$ = "!" & myUcase(s$)
        Else
                rest$ = what$ & " " & rest$
                Identifier = False
        End If
End If
Case "LOAD", "�������" '
Do
x1 = Abs(IsLabelBig(basestack, rest$, s$, , w$))
If x1 = 1 Then
s$ = w$
Else
rest$ = s$ + rest$
x1 = IsStrExp(basestack, rest$, s$)
End If
If x1 <> 0 Then
If ExtractType(s$) <> "gsb" Then

s$ = CFname(mcd + ExtractNameOnly(s$) & ".gsb")

If s$ = "" Then s$ = mcd + ExtractNameOnly(s$) & ".gsb"
Else
para$ = s$
If ExtractPath$(s$) = "" Then
s$ = ExtractName(s$)
para$ = Trim$(Mid$(para$, Len(s$) + 1))
s$ = mcd + s$
Else
s$ = ExtractPath(s$) + ExtractName(s$)
para$ = Trim$(Mid$(para$, Len(s$) + 1))

End If

Switches para$
End If
If ExtractNameOnly(s$) = "" Then
MyEr "No such file", "��� ������� ������ ������"
Exit Function
End If
SS$ = ReadUnicodeOrANSI(s$, True)
If SS$ <> "" Then
If Err.Number = 0 And HERE$ = "" Then LASTPROG$ = s$
If FastSymbol(rest$, ",") Then
        If IsStrExp(basestack, rest$, w$) Then
                SS$ = mycoder.decryptline(SS$, w$, (Len(SS$) / 2) Mod 33)
                If Abs(IsLabel(basestack, SS$, w$)) Then
                        If Not Left$(SS$, 3) = ":" & vbCrLf Then Identifier = False: Exit Function
                        If lckfrm = 0 And Not NORUN1 Then lckfrm = sb2used + 1
                End If
        End If
End If
par = False

Do While MaybeIsSymbol(SS$, "\'[*")
SetNextLine SS$
par = True
Loop
SS$ = Replace(SS$, Chr$(9), "      ")
If SS$ <> "" Then
If par Then GoTo skipme
If (Asc(SS$) > 127 And myUcase(Left$(SS$, 5)) <> "�����" And myUcase(Left$(SS$, 5)) <> "�����" And myUcase(Left$(SS$, 9)) <> "���������") Or (((AscW(SS$) And &H4000) = &H4000)) Then
    SS$ = mycoder.must(SS$)
    If NORUN1 Then
        Clipboard.clear
        ''Clipboard.SetText SS$, vbCFText
        
        SetTextData CF_UNICODETEXT, SS$
    End If

    If IsLabelA("", SS$, w$) Then
        If Not (Left$(SS$, 3) = ":" & vbCrLf) Then Identifier = False: Exit Function
        'lock that module
        If lckfrm = 0 And Not NORUN1 Then lckfrm = sb2used + 1
    Else
        MOUT = True
    End If
Else
skipme:
    While FastSymbol(SS$, vbCrLf)
    
      ''  SleepWait 20
    Wend
    If Abs(IsLabel(basestack, SS$, w$)) Then
        If Not (Left$(SS$, 3) = ":" & vbCrLf) Then
        SS$ = w$ & " " & SS$
        End If
    End If
End If

vvl = CStr(vvl) + vbCrLf + SS$ & vbCrLf
End If
End If
End If
Loop Until MOUT Or Not IsSymbol(rest$, "&&")
rest$ = CStr(vvl) + rest$
Case "SAVE", "����"
Identifier = ProcSave(basestack, rest$, Lang)
Exit Function
Case "OVERWRITE", "����������"
Identifier = RepPara(basestack, rest$)
Exit Function
Case "INSERT", "���������"
Identifier = IdPara(basestack, rest$, Lang)
Exit Function
Case "LONG", "������"
Identifier = True

     Do While Abs(IsLabel(basestack, rest$, what$)) = 1
     If Not FastSymbol(rest$, "<") Then  ' get local var first
            If GetlocalVar(basestack.GroupName & what$, i) Then
            p = var(i)
            GoTo there01
            ElseIf GetVar(basestack, basestack.GroupName & what$, i) Then
             p = var(i)
            GoTo there01
            Else
            i = GlobalVar(basestack.GroupName & what$, s$)   ' MAKE ONE  '

             GoTo makeitnow1
            End If
            ElseIf GetVar(basestack, basestack.GroupName & what$, i) Then
            
there01:
                
                MakeitObjectLong var(i)
                CheckVarLong var(i), CLng(p)
                GoTo there12
            Else
        
                i = GlobalVar(basestack.GroupName & what$, s$) ' MAKE ONE
                If i <> 0 Then
makeitnow1:
                    MakeitObjectLong var(i)
there12:
                    If FastSymbol(rest$, "=") Then
                        If IsExp(basestack, rest$, p) Then
                        
                            CheckVarLong var(i), CLng(p)
                        Else
                            MissNumExpr
                            Identifier = False
                        End If
                    Else
                    ' DO NOTHING
                    End If
                End If
            End If
     
     If Not FastSymbol(rest$, ",") Then Exit Do
     Loop
          
Case "DOCUMENT", "�������"
Identifier = True
SS$ = ""
Do
    x1 = Abs(IsLabel(basestack, rest$, what$))
    If x1 = 3 Or x1 = 6 Then
        If x1 = 3 Then
        
                
                
            If Not FastSymbol(rest$, "<") Then  ' get local var first
            If GetlocalVar(basestack.GroupName & what$, i) Then
            GoTo there0
            ElseIf GetVar(basestack, basestack.GroupName & what$, i) Then
            GoTo there0
            Else
            i = GlobalVar(basestack.GroupName & what$, s$)  ' MAKE ONE  '
             GoTo makeitnow
            End If
            ElseIf GetVar(basestack, basestack.GroupName & what$, i) Then
            
there0:
                s$ = var(i)
                MakeitObject var(i)
                CheckVar var(i), s$
                GoTo there1
            Else
        
                i = GlobalVar(basestack.GroupName & what$, s$) ' MAKE ONE
                If i <> 0 Then
makeitnow:
                    MakeitObject var(i)
there1:
                    If FastSymbol(rest$, "=") Then
                        If IsStrExp(basestack, rest$, s$) Then
                            CheckVar var(i), s$
                        Else
                            MissStringExpr
                            Identifier = False
                        End If
                    Else
                    ' DO NOTHING
                    End If
                End If
            End If
        Else
            ' ARRAY

            ''*************************
            If neoGetArray(basestack, what$, pppp, HERE$ <> "") Then  ' basestack.GroupName &
           '' basestack.GroupName &
                If Not NeoGetArrayItem(pppp, basestack, what$, it, rest$) Then Identifier = False: Exit Function
                x1 = 0
         
                
                If Not IsObject(pppp.item(it)) Then
                    s$ = pppp.item(it)
                    Set pppp.item(it) = New Document
                    If s$ <> "" Then pppp.item(it).textDoc = s$
                    If FastSymbol(rest$, "=") Then
                        If IsStrExp(basestack, rest$, s$) Then
                            CheckVar pppp.item(it), s$
                        Else
                            MissStringExpr
                        Identifier = False
                        End If
                    End If
                Else
                If FastSymbol(rest$, "=") Then
                    If IsStrExp(basestack, rest$, s$) Then
                        CheckVar pppp.item(it), s$
                    Else
                        MissStringExpr
                        Identifier = False
                    End If
                Else
                    Exit Do
                   End If
                End If
                Identifier = True
            Else
            MyErMacro rest$, "array has no dimension", "� ������� ��� ���� �������"
             Identifier = False
             Exit Function
            End If
          
            End If
    Else
    SyntaxError
    Identifier = False
    
    End If
    Loop Until Not FastSymbol(rest$, ",")
    Exit Function
Case "STOCK", "����"
Identifier = StockValues(basestack, rest$, Lang)
Exit Function
Case "LINK", "�����"
Set myobject = basestack.soros
Set basestack.Sorosref = New mStiva
s$ = ""

Do
If IsLabelSymbolNew(rest$, "�����", "WEAK", Lang) Then
     
If IsStrExp(basestack, rest$, SS$) Then
If GetSub(SS$, x1) Then
 basestack.soros.DataStr "{" + SB(x1) + "}": x1 = 1: GoTo contlink2
Else
 basestack.soros.DataStr SS$: x1 = 1: GoTo contlink2

End If

End If
MissStringExpr
Identifier = False
Exit Function
End If
it = IsLabelDot(HERE$, rest$, SS$)
If it = 2 Then it = IsLabelDot(HERE$, rest$, SS$)

If it = 0 Then If IsStrExp(basestack, rest$, SS$) Then x1 = 1: basestack.soros.DataStr SS$: GoTo contlink2  ''s$ = "DATA {" + SS$ + "}": GoTo contlink1

If it <> 0 And SS$ <> "" Then
If Left$(SS$, 1) = "&" Then SS$ = Mid$(SS$, 2)
If it < 0 Then
IsLabel basestack, (SS$), SS$
End If

If it > 4 Then
SS$ = SS$ + ")"
If Not FastSymbol(rest$, ")") Then it = 0
End If


x1 = 1
 aheadstatus rest$, False, x1

s$ = "DATA &" + SS$ + Mid$(rest$, 1, x1 - 1)

contlink1:
If x1 > 1 Then rest$ = Mid$(rest$, x1)
If Execute(basestack, s$, True) <> 1 Then
Set basestack.Sorosref = myobject
Exit Function
End If

End If
If s$ <> "" Then rest$ = s$ + rest$

Loop While FastSymbol(rest$, ",")
contlink2:
If basestack.soros.Total = 0 Then
MyEr "Nothing to link", "������ ��� �� �����"
ElseIf IsLabelSymbolNew(rest$, "���", "TO", Lang) Then
   Identifier = Identifier(basestack, "@REFER", rest$)
ElseIf IsLabelSymbolNew(rest$, "���", "TO", Lang, True) Then
   Identifier = Identifier(basestack, "@REFER", rest$)
End If

Set basestack.Sorosref = myobject
Exit Function
Case "REFER", "�������"
col = 1
''f = True
GoTo read123
Case "READ", "�������"

flag2 = IsLabelSymbolNew(rest$, "���", "NEW", Lang)
If Not flag2 Then flag = IsLabelSymbolNew(rest$, "������", "LOCAL", Lang)
read123:
Set bs = basestack
contFromRebound:
par = IsLabelSymbolNew(rest$, "���", "FROM", Lang)
If par And f Then
SyntaxError
Identifier = False
Exit Function
End If
If par Then
x1 = Abs(IsLabel(basestack, rest$, SS$))
If x1 > 0 And x1 <> 1 Then rest$ = SS$ + " " + rest$
If x1 = 1 Then

 If GetVar(basestack, SS$, i, , , flag) Then
 If IsObject(var(i)) Then
            ' need to make new stack frame with pointers to
        If Typename(var(i)) <> "Group" Then Identifier = True: Exit Function
        Set ps = New mStiva
        Set myobject = var(i).PrepareSoros(var())
        With myobject
               For x1 = 1 To .Total
                  s$ = .StackItem(x1) + " "
                  If Left$(s$, 1) = "*" Then '' we have a group
                  s$ = Split(Mid$(s$, 2))(0)
                  Else
                  s$ = Split(s$)(0)
                  End If

 ''we place references

                If Right$(s$, 2) = "()" Then
                        ps.DataStr Left$(s$, Len(s$) - 2)
                Else
                        ps.DataStr s$
                End If
 ''BaseSTACK.Soros.DataStr .StackItem(X1)
            Next x1
        End With
Set myobject = Nothing
 Set bs = New basetask
    Set bs.Sorosref = ps
    If FastSymbol(rest$, ";") Then
    basestack.soros.MergeTop ps
    
    Identifier = True
    Exit Function
    End If
    If Not FastSymbol(rest$, ",") Then
    MissPar
    Identifier = False
 Exit Function
    End If
 Else
 MissingGroup
 Identifier = False
 Exit Function
 End If
 Else
 MissingGroup
 Identifier = False
 Exit Function
 End If
 col = 1 ' this is a switch... look down
 
ElseIf IsStrExp(basestack, rest$, SS$) Then
Set ps = New mStiva
Do While SS$ <> ""
If ISSTRINGA(SS$, pa$) Then
ps.DataStr pa$
ElseIf IsNumberD(SS$, x) Then
ps.DataVal x
Else
Exit Do
End If
Loop
Set bs = New basetask
Set bs.Sorosref = ps
    If Not FastSymbol(rest$, ",") Then
    MissPar
    Identifier = False
 Exit Function
    End If
End If
End If

Do
again1:
Identifier = False
If FastSymbol(rest$, ",") Then bs.soros.DROP 1: GoTo again1
If FastSymbol(rest$, "&") Or col = 1 Then
' so now for GROUP variables we use only by reference
Select Case Abs(IsLabel(basestack, rest$, what$))
Case 1
If bs.IsString(s$) Then
     
          
    
    If GetGlobalVar(s$, i) Then
If flag2 Then
        If Not f Then
               If Not flag Then
                          If HERE$ <> "" Then
                           GoTo contpush12
                              Else
                          NoSecReF
                          
                         Exit Do
                       End If
            End If
    
    End If
ElseIf GetVar(basestack, what$, it, , , flag) And Not f Then
               If Not flag Then
                          If GetlocalVar(what$, y1) = False And HERE$ <> "" Then
                                   GoTo contpush12
                              Else
                                  NoSecReF
                                 Exit Do
                            End If
                End If
                
   
   Else
contpush12:
   what$ = myUcase$(what$)
   
   If Not LinkGroup(what$, var(i)) Then
            If f Then
             If Not ReboundVar(basestack, what$, i) Then GlobalVar what$, i, True
            Else
             GlobalVar what$, i, True
            End If
     Else

     it = GlobalVar(what$, it)

      ''GetVar basestack, what$, it
     MakeitObject2 var(it)
    With var(i)
      var(it).edittag = .edittag
     var(it).Varlist = .Varlist
     var(it).ArrList = .ArrList
     var(it).FuncList = .FuncList
    var(it).GroupName = myUcase(what$) + "."
    Set var(it).Sorosref = .soros.Copy
    End With
     End If
     Identifier = True
     
     End If
     Else
         NoReference
    Identifier = False
    Exit Function

    End If
    Else
    NoReference
    Identifier = False
    Exit Function
    End If

Case 3, 4
If bs.IsString(s$) Then
     
          
    
    If GetGlobalVar(s$, i) Then
    If GetVar(basestack, what$, it, , , flag) And Not f Then '' GetlocalVar(what$, it)
    NoSecReF
   Exit Do
   Else
     If f Then
   If Not ReboundVar(basestack, what$, i) Then GlobalVar what$, i, True
   Else
   GlobalVar what$, i, True
   End If
     Identifier = True
     
     End If
     Else
    NoReference
    Identifier = False
    Exit Function
    End If
    Else
    NoReference
    Identifier = False
    Exit Function
    End If
    Case 5, 6, 7
    If bs.IsString(s$) Then  ' get the pointer!!!!!
    If MaybeIsSymbol(s$, "{") Then
    If Not FastSymbol(rest$, ")") Then
     MyEr "Syntax error, use )", "���������� ����� ���� )": Exit Do
    Else
    s$ = Left$(what$, Len(what$) - 1) + " " + s$
    If f Then
    SS$ = HERE$
    HERE$ = ""
                If Not Identifier(basestack, "@FUNCTION", s$) Then
            MyEr "No function definition founded", "��� ������� ������� ����������"
            Else
            sbgroup(basestack.IndexSub) = s$
        
            End If
            Identifier = True
     HERE$ = SS$
    
    Else
            If Not Identifier(basestack, "@FUNCTION", s$) Then
            MyEr "No function definition founded", "��� ������� ������� ����������"
            Else
            sbgroup(basestack.IndexSub) = s$
        
            End If
            Identifier = True
            End If
    End If
    Else
    w$ = CopyArrayItemsNoFormated(s$)
    If w$ <> "" Then
    If Not FastSymbol(rest$, ")") Then MyEr "Syntax error, use )", "���������� ����� ���� )": Exit Do
   If f Then
   If Not ReboundArr(basestack, what$, w$) Then GoTo arrconthere
   
   Else
arrconthere:
        If HERE$ = "" Then
            If InStr(arrname$, Chr(13) + myUcase(what$) + w$) > 0 Then
                    MyEr "Try other array name", "�������� ���� ����� ������"
                    Exit Do
            Else
                    arrname$ = arrname$ & Chr(13) + myUcase(what$) + w$
            End If
        Else
            If InStr(arrname$, Chr(13) + myUcase(HERE$) & "." & myUcase(what$) + w$) > 0 Then
                MyEr "Try other array name", "�������� ���� ����� ������"
                Exit Do
            Else
                arrname$ = arrname$ & Chr(13) + myUcase(HERE$) & "." & myUcase(what$) + w$
            End If
        End If
    End If
Identifier = True
    End If
    End If
End If
Case Else

Exit Do
End Select
Else
x1 = Abs(IsLabel(basestack, rest$, what$))
what$ = myUcase(what$)
Select Case x1
Case 1
If bs.IsObjectRef(myobject) Then
   Identifier = True
   If flag Then
p = 0
GlobalVar what$, p
End If
If GetVar(basestack, what$, i, , , flag) Then
            '' we can throw a pointer
            If Typename$(var(i)) = "Group" Then
            '' we cannot place a group over another group
            '' once we read it we make it..in that place

            UnFloatGroupReWriteVars basestack, what$, i, myobject
            ''BadGroupHandle

            Else
          Set var(i) = myobject
          End If
          
   Else
           i = GlobalVar(what$, 0)
            ''GetVar basestack, what$, i
    
            
            
            
            
             If Typename$(myobject) = "Group" Then
                
        UnFloatGroup basestack, what$, i, myobject
        Set myobject = Nothing
    End If
            
    End If
    
  
    
ElseIf bs.IsNumber(p) Then
Identifier = True
If flag2 Then
GlobalVar what$, p
ElseIf GetVar(basestack, what$, i, , , flag) Then
            If VarType(var(i)) <> vbLong Then
            var(i) = p
            Else
             var(i) = CLng(p)
            End If
   Else
            GlobalVar what$, p
    End If
    Else
     MissStackNumber
Identifier = False
    Exit Do
End If
Case 3
If bs.IsString(s$) Then
    Identifier = True
    If flag2 Then
    GlobalVar what$, s$
    ElseIf GetVar(basestack, what$, i, , , flag) Then
    CheckVar var(i), s$
    Else
    GlobalVar what$, s$
    End If
Else
MissStackStr
Identifier = False

    Exit Function
End If
Case 4

If bs.IsNumber(p) Then

    Identifier = True
    If flag2 Then
GlobalVar what$, Int(p)
ElseIf GetVar(basestack, what$, i, , , flag) Then
    var(i) = Int(p)
    Else
    GlobalVar what$, Int(p)
    End If
Else
     MissStackNumber
Identifier = False
    Exit Do
End If
Case 5
    Identifier = False
    If FastSymbol(rest$, ")") Then
       Identifier = globalArrByPointer(bs, basestack, what$, flag2): If Not Identifier Then SyntaxError: Exit Do
       
       
    Else
        If neoGetArray(basestack, what$, pppp) And Not flag2 Then
            If Not NeoGetArrayItem(pppp, bs, what$, it, rest$) Then Exit Do
        Else
            Exit Do
        End If
        If IsOperator(rest$, ".") Then
        If Not Typename(pppp.item(it)) = "Group" Then
        MyEr "Expected group", "�������� �����"
        Identifier = False: Exit Function
        Else
         i = 1
        aheadstatus rest$, False, i
        SS$ = Left$(rest$, i - 1)
        Identifier = SpeedGroup(basestack, pppp, "@READ", ".", SS$, it) <> 0
        rest$ = Mid$(rest$, i)
        GoTo loopcont123
        End If
        End If
       If bs.IsObjectRef(myobject) Then
                    If Typename$(myobject) = "Group" Then
                             If myobject.IamFloatGroup Then
                                          Set pppp.item(it) = myobject
                                          Set myobject = Nothing
                                          Identifier = True
                                          Exit Function
                             Else
                                          BadGroupHandle
                                          Identifier = False
                                          Exit Function
                             End If
                             Set myobject = Nothing
                    End If
        ElseIf Not bs.IsNumber(p) Then
                        MissStackNumber
                        Identifier = False
                        Exit Do
        End If
        Identifier = True
        pppp.item(it) = p
    End If
 Case 6
    Identifier = False
    If FastSymbol(rest$, ")") Then
        Identifier = globalArrByPointer(bs, basestack, what$, flag2): If Not Identifier Then SyntaxError: Exit Do
    Else
        If neoGetArray(basestack, what$, pppp) And Not flag2 Then
            If Not NeoGetArrayItem(pppp, bs, what$, it, rest$) Then Exit Do
        Else
            Exit Do
        End If
        If Not bs.IsString(s$) Then MissStackStr: Exit Do
        Identifier = True
        If Not IsObject(pppp.item(it)) Then
            pppp.item(it) = s$
        Else
            Set pppp.item(it) = New Document
            CheckVar pppp.item(it), s$

        End If
    End If
Case 7
    Identifier = False
    If FastSymbol(rest$, ")") Then
        Identifier = globalArrByPointer(bs, basestack, what$, flag2): If Not Identifier Then SyntaxError: Exit Do
    Else
        If neoGetArray(basestack, what$, pppp) And Not flag2 Then
            If Not NeoGetArrayItem(pppp, bs, what$, it, rest$) Then Exit Do
        Else
            Exit Do
        End If
        If Not bs.IsNumber(p) Then MissStackNumber: Exit Do
        Identifier = True
        pppp.item(it) = Int(p)
    End If
End Select
End If
loopcont123:
Loop Until Not FastSymbol(rest$, ",")

Case "DOUBLE", "�����"

SetDouble scr


Case "NORMAL", "��������"

SetNormal scr

Case "ERROR", "�����"

x1 = LastErNum
If IsExp(basestack, rest$, p) Then
If p = 0 Then
NERR = True
Identifier = False
Exit Function
ElseIf p = -1 Then
NERR = False
Identifier = False
Exit Function
Else
If p = -2 Then
 ISSTRINGA rest$, s$
 ISSTRINGA rest$, SS$
MyEr s, SS$
If basestack.IamThread Then
On Error Resume Next
basestack.Parent.ThrowThreads
NERR = False
Identifier = False
Exit Function
End If
Identifier = False
Exit Function

Else
MyEr "ERROR " & Trim$(Str$(p)), "����� " & Trim$(Str$(p))
LastErNum = p
End If
End If
ElseIf IsStrExp(basestack, rest$, s$) Then
MyEr what$ & " " & s$, what$ & " " & s$
Else
LastErNum = 0 ': LastErNum1 = 0
LastErNameGR = ""
LastErName = ""

Identifier = True
Exit Function
End If

Identifier = False

    
Case "DIM", "�������", "�������"
Do

    it = Abs(IsLabelDIM(basestack, rest$, w$))
 
    If MaybeIsSymbol(rest$, ")") Then rest$ = "0" + rest$
    
    ''*********************
    If neoGetArray(basestack, w$, pppp, HERE$ <> "") Then
   ' ���� �� ������� ������� �� ������ resize...
   ' ����� ��� delete �� ���������� 0 ��� ����� ��������
       Select Case it
    Case 5, 6, 7
   GlobalArrResize pppp, basestack, w$, rest$, i, f ''basestack.GroupName &
   p = i
    If i < 0 Then it = 0
    Case Else
    it = 0
    End Select
   Else
    Select Case it
    Case 5, 6, 7
    GlobalArr basestack, w$, rest$, i, f ''basestack.GroupName &
    p = i
    If i < 0 Then it = 0
    Case Else
    it = 0
    End Select
    End If
    Select Case it
    Case 5
    x = 0
      If FastSymbol(rest$, "=") Then
    If IsExp(basestack, rest$, x) Then
    If neoGetArray(basestack, w$, pppp) Then '' basestack.GroupName & f
         If Not basestack.LastObj Is Nothing Then
                                If Typename(basestack.LastObj) = "Group" Then
                                Set pppp.GroupRef = basestack.LastObj
                                
                                 pppp.IHaveClass = True
                                Set basestack.LastObj = Nothing
                                pppp.SerialItem 0, 0, 3
                                End If
     Else
            pppp.SerialItem x, 0, 3
    End If
    End If
    Else
    it = 0
    End If
    End If
    Case 7
    x = 0
    If FastSymbol(rest$, "=") Then
    If IsExp(basestack, rest$, x) Then
   If neoGetArray(basestack, w$, pppp) Then ''basestack.GroupName &
    pppp.SerialItem Int(x), 0, 3
    End If
    Else
    it = 0
    End If
    End If
    Case 6
        s$ = ""
    If FastSymbol(rest$, "=") Then
    If IsStrExp(basestack, rest$, s$) Then
   If neoGetArray(basestack, w$, pppp) Then '' basestack.GroupName &
    pppp.SerialItem s$, 0, 3
    End If
    Else
    it = 0
    End If
    End If
    End Select
    If it = 0 Then
      MyEr "Array dimensions missing ", "� ������� ��� ���� ���������� "

    rest$ = basestack.GroupName & w$ & rest$
    Identifier = False
    Exit Function
    End If
    
Loop Until Not FastSymbol(rest$, ",")
Exit Function
Case "SET", "����"
Identifier = interpret(basestack, GetNextLine(rest$))

Exit Function
Case "NEW", "���"
If (basestack.Process Is Nothing) And (basestack.Parent Is Nothing) Then

abt = False
LASTPROG$ = ""

If Lang = 0 Then
sHelp "�2000 [�������]", "����� ����� ��� �� ����� ��� �� ���������" & vbCrLf & "��� �� ��� (���� ���� ��� ���)" & vbCrLf & "George Karras 2014", (ScrX() - 1) * 3 / 5, (ScrY() - 1) * 1 / 7
Else
sHelp "�2000 [HELP]", "Write END for exit from this program" & vbCrLf & "See ALL commands  (click on ALL)" & vbCrLf & "George Karras 2014", (ScrX() - 1) * 3 / 5, (ScrY() - 1) * 1 / 7

End If
NERR = False
lckfrm = 0
sb2used = 0
ReDim SB(50) As String
ReDim SBC(50) As Long
ReDim sbgroup(50) As String
TaskMaster.Dispose
SubName$ = ""
CloseAllConnections
CleanupLibHandles
' This is the INPUT END
If Not NOEDIT Then
NOEDIT = True
Else
If QRY Then QRY = False
End If
' restore DB.Provider for User
JetPrefixUser = JetPrefixHelp
JetPostfixUser = JetPostfixHelp
End If
Case "EDIT", "��������", "�"
Identifier = ProcEdit(basestack, rest$, Lang)
Exit Function
Case "SCAN", "������"
If Not Targets Then MyDoEvents: Exit Function
If scr.Visible = False Then scr.Visible = True
scr.SetFocus

NoAction = False

nomore = True
If IsExp(basestack, rest$, p) Then
y = Timer + p

Do ' TOO
MyDoEvents
Loop Until NoAction Or Timer > y Or NOEXECUTION
    'End If
Else
Do ' TOO
 MyDoEvents
If FKey > 0 Then
If FK$(FKey) <> "" Then
rest$ = FK$(FKey) + rest$
FKey = 0
Exit Do
End If
End If
Loop Until NoAction Or NOEXECUTION
End If
nomore = False ' TOO
Case "����", "PEN"
If IsExp(basestack, rest$, p) Then
    If FastSymbol(rest$, "{") Then
        SS$ = "{" & block(rest$) & "}"
        If FastSymbol(rest$, "}") Then
         y1 = GetCode(scr)
            x1 = players(y1).mypen
           
            players(y1).mypen = CLng(mycolor(p))
            TextColor scr, players(y1).mypen
            Call executeblock(it, basestack, SS$, False, False)

            players(y1).mypen = x1
            TextColor scr, x1
            If it <> 1 Then Identifier = False: rest$ = Left$(SS$, Len(SS$) - 1) + rest$: Exit Function
        End If
    Else
    
        players(GetCode(scr)).mypen = CLng(mycolor(p))
        
        TextColor scr, CLng(mycolor(p))
    End If
Else
    Identifier = False
End If
Case "�����", "CLS"
If basestack.toprinter Then Exit Function

If Not IsExp(basestack, rest$, p) Then p = -scr.BackColor
With players(GetCode(scr))
.Paper = mycolor(p)
If Not basestack.toprinter Then
If FastSymbol(rest$, ",") Then
    If IsExp(basestack, rest$, p) Then
    If p < 0 Then p = .My + p
 
    .mysplit = Int(p)
    If .mysplit >= .My Then .mysplit = 0: .pageframe = 0
    .pageframe = Int((.My - .mysplit) * 2 / 3)
     
    Else
    Identifier = False
    Exit Function
    End If
End If
End If

ClearScrNew scr, players(GetCode(scr)), CLng(mycolor(.Paper))   '' here 1.15 is not rgb but standard colors
''.Paper = scr.BackColor  ' ���� �� ����� ��� BASESTACK
If Form4.Visible Then
vHelp
End If
End With
Case "HEX", "������"
Identifier = RevisionPrint(basestack, rest$, 1, Lang)
Case "PRINT", "������", "?"
' check permission
Identifier = RevisionPrint(basestack, rest$, 0, Lang)
Exit Function
Case Else
myIdentifier = False
x1 = Len(rest$)
If Not I2(basestack, what$, rest$, myIdentifier, Lang) Then
JUMPHEREFORMODULESFAST:
                myIdentifier = True
                '''START TO SEE MODULES...HERE
          If GetSub(what$, y1) Then
               it = 0
            ElseIf GetSub(ohere$ & "." & what$, y1) Then
it = 1
            Else
    rest$ = what$ + rest$
                   MyEr "unknown module " & what$, "������� ����� " & what$
                   
                   Identifier = False
                   Exit Function
                   End If
                If NORUN1 Then rest$ = "": Exit Function
                par = PushParamGeneral(basestack, rest$)
                If LastErNum = -2 Then
                rest$ = ""
                Identifier = True
                
                Exit Function
                Else
                If Not par Then Identifier = False: Exit Function
            End If
            x1 = y1
            If Len(what$) = 0 Then Identifier = False: Exit Function
            what$ = myUcase(what$):   MakeThisSub basestack, what$
            
            If it = 0 Then
                HERE$ = what$
            Else
                HERE$ = ohere$ & "." & what$
            End If
            
            If HERE$ <> ohere$ Then

                If Not ProcModuleEntry(basestack, ohere$, x1, rest$) Then GoTo NERR
   
    
            Else
NERR:
          
                        If Err.Number = 6 Then
                                Err.clear
                                MyErMacro rest$, "Overflow long, expect lower than (2147483648)", "����������� ��������, �������� ��������� ��� (2147483648)"
                        Else
                                Err.clear
                                MyErMacro rest$, "unknown identifier " & what$, "������� ������������� " & what$
                        End If
                        Identifier = True
            End If
End If
If Not myIdentifier Then
Identifier = False: Exit Function
End If
End Select


End Function
Private Function IfierVal()
If LastErNum <> 0 Then LastErNum = 0: IfierVal = True
End Function
Private Sub OutOfLimit()
  MyEr "Out of limit", "����� �����"
End Sub

Private Sub MissCdib()
  MyEr "Missing IMAGE", "������ ������"
End Sub
Private Sub BadObjectDecl()
  MyEr "Bad object declaration", "����� ������ ������������"
End Sub
Private Sub MissCdibStr()
  MyEr "Missing IMAGE in string", "������ ������ ��� �������������"
End Sub
Private Sub MissStackStr()
  MyEr "Missing string value from stack", "������ ������������� ��� �� ����"
End Sub
Private Sub MissStackItem()
 MyEr "Missing item from stack", "������ ���� ��� �� ����"
End Sub
Private Sub MissStackNumber()
 MyEr "Missing number value from stack", "������ ������� ��� �� ����"
End Sub
Private Sub MissNumExpr()
MyEr "Missing number expression", "������ ���������� ���������"
End Sub
Private Sub MissLicence()
MyEr "Missing Licence", "������ �����"
End Sub
Private Sub MissStringExpr()
MyEr "Missing string expression", "������ ������������� ���������"
End Sub
Public Sub BadFilename()
MyEr "Bad filename", "����� ��� ����� �������"
End Sub
Public Sub BadPath()
MyEr "Bad Path name", "����� ��� ����� ������� (����)"
End Sub
Public Sub BadReBound()
MyEr "Can't commit a reference here", "��� ����� �� ������� ��� ��� �������"
End Sub
Public Sub oxiforPrinter()
MyEr "Not allowed this command for printer", "��� ����������� ���� � ������ ��� ��� ��������"
End Sub
Public Sub SyntaxError()
If LastErName = "" Then
MyEr "Syntax Error", "���������� �����"
Else
If LastErNum = 0 Then LastErNum = -1 ' general
LastErNum1 = LastErNum
End If
End Sub
Public Sub MissingnumVar()
MyEr "missing numeric variable", "������ ���������� ���������"
End Sub
Public Sub BadGraphic()
MyEr "Can't operate graphic", "��� ����� �� �������� �� �������"
End Sub
Public Sub SelectorInUse()
MyEr "File/Folder Selector in Use", "� ��������� �������/������� ����� �� �����"
End Sub
Public Sub MissingDoc()  ' this is for identifier or execute part
MyEr "missing document type variable", "������ ��������� ����� ��������"
End Sub
Sub MissFuncParammeterdOCVar(ar$)
MyErMacro ar$, "Not a Document variable", "��� ����� ��������� ����� ��������"
End Sub
Public Sub MissingBlock()  ' this is for identifier or execute part
MyEr "missing block {} or string expression", "������ ������� �� {} � ������������� �������"
End Sub
Public Sub ErrNum()
MyEr "Error in number", "����� ���� ������"
End Sub
Public Sub NotExistArray()  ' this is for identifier or execute part
MyEr "Array not exist", "��� ������� ������� �������"
End Sub
Public Sub MissingGroup()  ' this is for identifier or execute part
MyEr "missing group type variable", "������ ��������� ����� ������"
End Sub
Public Sub BadGroupHandle()  ' this is for identifier or execute part
MyEr "group isn't variable", "� ����� ��� ����� ���������"
End Sub
Public Sub MissingDocRef()  ' this is for identifier or execute part
MyEr "invalid document pointer", "�� ������� ������� ��������"
End Sub
Public Sub MissingObj()
MyEr "missing object type variable", "������ ��������� ����� ������������"
End Sub
Public Sub BadGetProp()
MyEr "Can't Get Property", "��� ����� �� ������� ���� ��� ��������"
End Sub
Public Sub BadLetProp()
MyEr "Can't Let Property", "��� ����� �� ����� ���� ��� ��������"
End Sub
Public Sub MissingObjRef()
MyEr "invalid object pointer", "�� ������� ������� ������������"
End Sub
Public Sub MissingStrVar()  ' this is for identifier or execute part
MyEr "missing string variable", "������ ������������� ���������"
End Sub
Public Sub NoSwap(nameOfvar$)
MyEr "Can't swap ", "��� ����� �� ������ ����� "
End Sub
Public Sub Nosuchvariable(nameOfvar$)
MyEr "No such variable " + nameOfvar$, "��� ������� ������ ��������� " + nameOfvar$
End Sub
Public Sub NameConflict()
   MyEr "Group Name Has Module name ", "�� ����� ������ ����� ��� ����� ��� ��������"
End Sub
Public Sub NoReference()
   MyEr "No reference exist", "��� ������� �������"
End Sub
Public Sub NoSecReF()
MyEr "No reference allowed - use new variable", "��� ������� ������� - ������������� ��� ���������"
End Sub
Public Sub NoValueForvariable(nameOfvar$)
 MyEr "No value for variable " & nameOfvar$, "����� ���� � ��������� " & nameOfvar$
 End Sub
Sub MissSymbolMyEr(wht$)   ' not the macro one
MyEr "missing " & wht$, "������ " & wht$
End Sub
Sub BadCommand()
 MyEr "Command for supervisor rights", "������ ���� ��� ������"
End Sub
Sub FilePathNotForUser()
MyEr "Filepath is not valid for user", "� ����� ��� ������� ��� ����� ������� ��� ��� ������"
End Sub

' used to isnumber
Sub MyErMacro(wher$, en$, gr$)
LastErNum = -2
wher$ = " : ERROR -2" & Sput(en$) + Sput(gr$) + wher$
 
End Sub
Sub ZeroParam(ar$)   ' we use MyErMacro in isNumber and isString
MyErMacro ar$, "Empty parameter", "�������� ����������"
End Sub
Sub MissPar()
MyEr "missing parameter", "������ ����������"
End Sub
Sub MissParam(ar$)
MyErMacro ar$, "missing parameter", "������ ����������"
End Sub
Sub MissFuncParameterStringVar()
MyEr "Not a string variable", "��� ����� ������������� ���������"
End Sub
Sub MissFuncParameterStringVarMacro(ar$)
MyErMacro ar$, "Not a string variable", "��� ����� ������������� ���������"
End Sub
Sub NoSuchFolder(ar$)
MyErMacro ar$, "No such folder", "��� ������� ������� �������"
End Sub
Sub MissSymbol(ar$, wht$)
MyErMacro ar$, "missing " & wht$, "������ " & wht$
End Sub
Function I2(bstack As basetask, what$, rest$, ifier As Boolean, Lang As Long) As Boolean
'Dim Process As Object, bstack As basetask
Dim p As Double, i As Long, s$, x As Double, y As Double, it As Long, f As Long, pa$
Dim x1 As Long, y1 As Long, frm$, par As Boolean, ohere$, SS$, w$, sx As Double, sy As Double
Dim col As Long, thisid As Long, photo As Object, ML As Long, bs As basetask, vvl As Variant
Dim stac1$, DUM As Boolean
Dim pppp As mArray, pppp1 As mArray
On Error GoTo 0
ifier = True
I2 = True
' FOR ERRORS IN I2 (Ifier SECOND PART)
' USE IFIER=FALSE AND NOT I2=FALSE
' A I2=FALSE DO IFIER TRUE...WHEN EXIT I2
' using I2 = false for threads
Select Case what$
Case "PUSH", "����"
Do
        If IsExp(bstack, rest$, p) Then
                If Not bstack.LastObj Is Nothing Then
                        bstack.soros.PushObj bstack.LastObj
                Else
                        bstack.soros.PushVal p
                End If
        ElseIf IsStrExp(bstack, rest$, s$) Then
        If Not bstack.LastObj Is Nothing Then
                        bstack.soros.PushObj bstack.LastObj
                Else
                        bstack.soros.PushStr s$
                End If
        Else
                Exit Do
        End If
        If Not FastSymbol(rest$, ",") Then Exit Do
Loop
Case "DATA", "�����"
Do
        If IsExp(bstack, rest$, p) Then
        If Not bstack.LastObj Is Nothing Then
                If Typename(bstack.LastObj) = "Group" Then
                        Set vvl = bstack.LastObj
                        
                        CopyGroup vvl, bstack
                        Set photo = vvl
                                bstack.soros.DataObj photo
                        Else
                                bstack.soros.DataObj bstack.LastObj
                        End If
                Else
                        bstack.soros.DataVal p
                End If
        ElseIf IsStrExp(bstack, rest$, s$) Then
                If Not bstack.LastObj Is Nothing Then
                        bstack.soros.DataObj bstack.LastObj
                Else
                        bstack.soros.DataStr s$
                End If
        Else
                Exit Do
        End If
        If Not FastSymbol(rest$, ",") Then Exit Do
Loop


Case "SWAP", "������"

    f = Abs(IsLabel(bstack, rest$, s$))
    
    If f = 1 Or f = 4 Then col = 1  'WE NEED NUMBERS
    If f = 5 Or f = 7 Then col = 2 'WE NEED NUMBERS
    If f = 0 Then MissingnumVar:  Exit Function
    If (f = 3 Or f = 6) And col > 0 Then SyntaxError: ifier = False:    Exit Function
    If col = 1 Then
        If GetVar(bstack, s$, f) Then
                If Not FastSymbol(rest$, ",") Then MissingnumVar:  Exit Function
                i = Abs(IsLabel(bstack, rest$, SS$))
              If i = 1 Or i = 4 Then
                If GetVar(bstack, SS$, x1) Then
                
                    SwapVariant var(f), var(x1)
                    
                    
                Exit Function
                Else
                    Nosuchvariable SS$
                    ifier = False
                    Exit Function
                End If
            ElseIf i = 5 Or i = 7 Then
                If neoGetArray(bstack, SS$, pppp) Then
                    If Not NeoGetArrayItem(pppp, bstack, SS$, x1, rest$, True) Then Exit Function
               
                    SwapVariant2 var(f), pppp, x1
                    
                    
                Else
                
                    NoSwap SS$
                    ifier = False
                    Exit Function
                End If
            Else
                MissingnumVar
                ifier = False
                Exit Function
            End If
        Else
            Nosuchvariable s$
            
            Exit Function
        End If
    ElseIf col = 2 Then
        If neoGetArray(bstack, s$, pppp) Then
            If Not NeoGetArrayItem(pppp, bstack, s$, f, rest$) Then Exit Function
            If Not FastSymbol(rest$, ",") Then MissingnumVar:  Exit Function
                i = Abs(IsLabel(bstack, rest$, SS$))
                  
            If i = 1 Or i = 4 Then
                    If GetVar(bstack, SS$, x1) Then
                    If pppp.IHaveClass Then
                            NoSwap ""
                    Else
                         SwapVariant2 var(x1), pppp, f
                     End If
                        
                    Else
                        MissingnumVar
                        ifier = False
                        Exit Function
                    End If
            ElseIf i = 5 Or i = 7 Then
                    If neoGetArray(bstack, SS$, pppp1) Then
                    
                        If Not NeoGetArrayItem(pppp1, bstack, SS$, x1, rest$) Then Exit Function
                   If pppp.IHaveClass Xor Not pppp1.IHaveClass Then
                            
                        SwapVariant3 pppp, f, pppp1, x1
                        If pppp.IHaveClass Then
                            Set pppp.item(f).LinkRef = pppp1.GroupRef
                            Set pppp1.item(x1).LinkRef = pppp.GroupRef
                            End If
                        Else
                        NoSwap ""
                        Exit Function
                        End If
                        
                    Else
                        MissingnumVar
                        
                        Exit Function
                    End If
            Else
                MissingnumVar
                
                Exit Function
            End If
        Else
            MissingnumVar
            
            Exit Function
        End If
    ElseIf f = 3 Then
            If GetVar(bstack, s$, f) Then
            If Not FastSymbol(rest$, ",") Then MissingnumVar:  Exit Function
                i = Abs(IsLabel(bstack, rest$, SS$))
                 If i = 6 Then
                    If Not neoGetArray(bstack, SS$, pppp) Then MissingStrVar:  Exit Function
                    If Not NeoGetArrayItem(pppp, bstack, SS$, x1, rest$) Then Exit Function

                    SwapVariant2 var(f), pppp, x1

                ElseIf i = 3 Then
                    If Not GetVar(bstack, SS$, x1) Then: Exit Function

                   SwapVariant var(f), var(x1)
                Else
                MissFuncParameterStringVar
                ifier = False
                End If
                
                
            Else
                    
                    MissFuncParameterStringVar
                    ifier = False
            End If
    ElseIf f = 6 Then
            If neoGetArray(bstack, s$, pppp) Then
                If Not NeoGetArrayItem(pppp, bstack, s$, x1, rest$) Then Exit Function
                If Not FastSymbol(rest$, ",") Then MissingnumVar:  Exit Function
                i = Abs(IsLabel(bstack, rest$, SS$))
     
                If i = 6 Then
                    If Not neoGetArray(bstack, SS$, pppp1) Then MissingStrVar:  Exit Function
                    If Not NeoGetArrayItem(pppp1, bstack, SS$, i, rest$) Then Exit Function

                   SwapVariant3 pppp, x1, pppp1, i
 
                ElseIf i = 3 Then
                    If Not GetVar(bstack, SS$, i) Then: Exit Function

                  SwapVariant2 var(i), pppp, x1
                    Else
                MissFuncParameterStringVar
                ifier = False
                End If
                
                
            Else
                
                MissPar
                ifier = False
                
            End If
    Else
                 
                MissPar
                ifier = False
    End If
    Exit Function

Case "CLOSE", "������"
If Not IsLabelSymbolNew(rest$, "����", "BASE", Lang) Then
    par = False
    Do
        IsSymbol3 rest$, "#" ' optional
        If IsExp(bstack, rest$, p) Then
            p = Abs(p) Mod 512
            Close Abs(p)
            FLEN(p) = 0
        Else
            If par Then
                ifier = False
            Else
                closeAll
            End If
        Exit Do
        End If
        par = True
    Loop Until Not FastSymbol(rest$, ",")
Else
Do
If IsStrExp(bstack, rest$, SS$) Then
RemoveOneConn SS$
End If
Loop Until Not FastSymbol(rest$, ",")
End If
Case "SEEK", "��������"
 IsSymbol3 rest$, "#"   ' OPTIONAL   ...SEEK #I, 10020  ����
If IsExp(bstack, rest$, x) Then
x1 = Abs(x) Mod 512
If FLEN(x1) = 0 Then
ifier = False
MyEr "not valid file number", "����� ������� �������"
Exit Function
End If
If FLEN(x1) <> 1 Then
ifier = False
MyEr "not valid file type", "����� ����� �������"
Exit Function
End If
If Not FastSymbol(rest$, ",") Then
MissNumExpr
Else
If IsExp(bstack, rest$, x) Then
Seek #x1, x
Else
''''Ifier = False  'I HAVE TO LOOK THAT
MissNumExpr
End If
End If
End If
Case "APPEND.DOC", "��������.�������"
DUM = True
GoTo SSAVVE
Case "SAVE.DOC", "����.�������"
SSAVVE:
    y1 = Abs(IsLabel(bstack, rest$, s$))
         If y1 = 6 Then
                If neoGetArray(bstack, s$, pppp) Then
                 If Not NeoGetArrayItem(pppp, bstack, s$, i, rest$) Then Exit Function
                Else
                MissingDoc
                Exit Function
                End If
    End If
    If FastSymbol(rest$, ",") Then
    If Not IsStrExp(bstack, rest$, w$) Then
    MissStringExpr
    ifier = False
    Exit Function
    End If
    SS$ = GetNextLine(w$)
    SetNextLine w$
    If w$ <> "" Then
    MyEr "filename with line breaks", "����� ������� �� ������� �������"
    ifier = False
    Exit Function
    End If
    ' check valid name
    If ExtractNameOnly(SS$) = "" Then BadFilename:  Exit Function
    If ExtractPath(SS$) = "" Then
    SS$ = mylcasefILE(mcd + SS$)
    End If
    If ExtractType(SS$) = "" Then SS$ = SS$ + ".txt"
    Else
    ifier = False
    MissPar
    Exit Function
    End If
    
     If FastSymbol(rest$, ",") Then
        If Not IsExp(bstack, rest$, p) Then    'type...for saving
        ifier = False
        MissNumExpr
        Exit Function
        End If
        x1 = CLng(p)
     Else
        x1 = -1 ' ' 2 = utf-8 standard save mode
    End If
    
        If y1 = 3 Then
            If GetVar(bstack, s$, i) Then
                If Typename(var(i)) = doc Then
                         If x1 = -1 Then
                    If var(i).ListLoadedType <> 0 Then
                    x1 = var(i).ListLoadedType
                    Else
                    x1 = 2
                    End If
                    End If
                    If CanKillFile(SS$) Then
                     If Not var(i).SaveUnicodeOrAnsi(SS$, x1, DUM) Then
                       MyEr "can't save " + SS$, "��� ����� �� ���� " + SS$
                      End If
                      Else
                      FilePathNotForUser
                      ifier = False
                      End If
                Else
                    MissingDoc
                    ifier = False
                End If
            Else
                   MissFuncParameterStringVar
                    ifier = False
            End If
        ElseIf y1 = 6 Then
                    If Typename(pppp.item(i)) = doc Then
                    If x1 = -1 Then
                    If pppp.item(i).ListLoadedType <> 0 Then
                    x1 = pppp.item(i).ListLoadedType
                    Else
                    x1 = 2
                    End If
                    End If
                    If CanKillFile(SS$) Then
                     If Not pppp.item(i).SaveUnicodeOrAnsi(SS$, x1, DUM) Then
                       MyEr "can't save " + SS$, "��� ����� �� ���� " + SS$
                       ifier = False
                      End If
                      Else
                      FilePathNotForUser
                      ifier = False
                      End If
                        Else
                         MissingDoc
                         ifier = False
                        End If
                    
    Else
                    
                MissPar
                ifier = False
    End If
    Exit Function
Case "MERGE.DOC", "����������.�������"
DUM = True
    GoTo loaddoc
Case "LOAD.DOC", "�������.�������"
loaddoc:
    y1 = Abs(IsLabel(bstack, rest$, s$))

        If y1 = 6 Then
                If neoGetArray(bstack, s$, pppp) Then
                 If Not NeoGetArrayItem(pppp, bstack, s$, i, rest$) Then Exit Function
                Else
                MissingDoc
                ifier = False
                Exit Function
                End If
    End If
    If FastSymbol(rest$, ",") Then
    If Not IsStrExp(bstack, rest$, frm$) Then
    MissStringExpr
    ifier = False
    Exit Function
    End If
    SS$ = GetNextLine(frm$)
    SetNextLine frm$
    If frm$ <> "" Then
    MyEr "filename with line breaks", "����� ������� �� ������� �������"
    ifier = False
    End If
    ' check valid name
    If ExtractNameOnly(SS$) = "" Then BadFilename:  Exit Function
    If ExtractPath(SS$) = "" Then
    SS$ = mylcasefILE(mcd + SS$)
    End If
    If ExtractType(SS$) = "" Then SS$ = SS$ + ".txt"
    Else
    ifier = False
    MissPar
    Exit Function
    End If
    
   
        If y1 = 3 Then
            If GetVar(bstack, s$, i) Then
                If Typename(var(i)) = doc Then

                x1 = 2
                var(i).ReadUnicodeOrANSI SS$, DUM, x1
                 var(i).ListLoadedType = x1
                 Exit Function
                Else
                    MissingDoc
                    ifier = False
                End If
            Else
                   MissFuncParameterStringVar
                    ifier = False
            End If
        ElseIf y1 = 6 Then
                    If Typename(pppp.item(i)) = doc Then
                                    x1 = 2
                pppp.item(i).ReadUnicodeOrANSI SS$, DUM, x1
                 pppp.item(i).ListLoadedType = x1
                    
                        Else
                         MissingDoc
                         ifier = False
                        End If
                    
    Else
                    
                MissPar
                ifier = False
    End If
    Exit Function

Case "FIND", "������"

    y1 = Abs(IsLabel(bstack, rest$, s$))
     
        If y1 = 6 Then
                If neoGetArray(bstack, s$, pppp) Then
                 If Not NeoGetArrayItem(pppp, bstack, s$, i, rest$) Then Exit Function
                Else
                MissingDoc
                ifier = False
                Exit Function
                End If
    End If
    If FastSymbol(rest$, ",") Then
    If Not IsStrExp(bstack, rest$, frm$) Then
    MissStringExpr
    ifier = False
    Exit Function
    End If
    SS$ = GetNextLine(frm$)
    SetNextLine frm$
    If frm$ <> "" Then
    MyEr "Search string with line breaks", "������������� ���������� �� ������� �������"
    ifier = False
    End If
    Else
    ifier = False
    MissPar
    Exit Function
    End If
    
     If FastSymbol(rest$, ",") Then
        If Not IsExp(bstack, rest$, p) Then
        ifier = False
        MissNumExpr
        ifier = False
        Exit Function
        End If
        x1 = CLng(p)
     Else
        x1 = 0
    End If
    
        If y1 = 3 Then
            If GetVar(bstack, s$, i) Then
                If Typename(var(i)) = doc Then
                
                     x1 = var(i).FindStr(SS$, x1, y1, col)
                     If x1 > 0 Then
                        bstack.soros.PushVal CDbl(col)  ' CHAR IN PARAGRAPH
                        bstack.soros.PushVal CDbl(y1)   'PARAGRAPH ORDER ..NUMBER START FROM 1
                     End If
                        bstack.soros.PushVal CDbl(x1)   ' POSITION IN ALL DOCUMENT
                    
                Else
                    MissingDoc
                    ifier = False
                End If
            Else
                   MissFuncParameterStringVar
                    ifier = False
            End If
        ElseIf y1 = 6 Then
                    If Typename(pppp.item(i)) = doc Then
          
                        x1 = pppp.item(i).FindStr(SS$, x1, y1, col)
                            If x1 > 0 Then
                               bstack.soros.PushVal CDbl(col)  ' CHAR IN PARAGRAPH
                               bstack.soros.PushVal CDbl(y1)   'PARAGRAPH ORDER ..NUMBER START FROM 1
                            End If
                        bstack.soros.PushVal CDbl(x1)   ' POSITION IN ALL DOCUMENT
                    
              
                        Else
                         MissingDoc
                         ifier = False
                        End If
                    
    Else
                    
                MissPar
                ifier = False
    End If
    Exit Function
Case "WORDS", "������"


    y1 = Abs(IsLabel(bstack, rest$, s$))

    If y1 = 6 Then
                If neoGetArray(bstack, s$, pppp) Then
                 If Not NeoGetArrayItem(pppp, bstack, s$, i, rest$) Then Exit Function
                Else
                MissingDoc
                ifier = False
                Exit Function
                End If
    End If
    If FastSymbol(rest$, ",") Then
        If Not IsExp(bstack, rest$, sx) Then    ' FROM
            MissNumExpr
            ifier = False
            Exit Function
        End If
    Else
 sx = 1
    End If
    
        If y1 = 3 Then
            If GetVar(bstack, s$, i) Then
                If Typename(var(i)) = doc Then
                bstack.soros.Begin 1
                var(i).ExportWords2ObjectAddItem bstack.soros, sx <> 0
                var(i).ResetWords
                    
                Else
                    MissingDoc
                    ifier = False
                End If
            Else
                   MissFuncParameterStringVar
                   ifier = False
                    
            End If
        ElseIf y1 = 6 Then
                    If Typename(pppp.item(i)) = doc Then
                        bstack.soros.Begin 1
                         pppp.item(i).ExportWords2ObjectAddItem bstack.soros, sx <> 0
                         pppp.item(i).ResetWords
                      Else
                      MissingDoc
                      ifier = False
                      End If
               
                    
    Else
                    
                MissPar
                ifier = False
    End If
    Exit Function
Case "SORT", "����������"
ifier = False
    y1 = Abs(IsLabel(bstack, rest$, s$))
    If y1 = 6 Then
                If neoGetArray(bstack, s$, pppp) Then
                 If Not NeoGetArrayItem(pppp, bstack, s$, i, rest$) Then Exit Function
                Else
                MissingDoc
                Exit Function
                End If
    End If
    If FastSymbol(rest$, ",") Then
        If Not IsExp(bstack, rest$, sx) Then    ' FROM
            If FastSymbol(rest$, ",") Then
            sx = 1
                GoTo sort2
            Else
                MissNumExpr
                Exit Function
            End If
        End If
    Else
 sx = 1
    End If
    
     If FastSymbol(rest$, ",") Then
sort2:
        If Not IsExp(bstack, rest$, p) Then   ' TO
            If FastSymbol(rest$, ",") Then
            x1 = 0
                GoTo sort3
            Else
                MissNumExpr
                Exit Function
            End If
        End If
        x1 = CLng(p)
     Else
        x1 = 0    ' TO THE LAST
    End If
         If FastSymbol(rest$, ",") Then
sort3:
        If Not IsExp(bstack, rest$, sy) Then   ' TO
                        MissNumExpr
                        Exit Function
        End If
        ML = CLng(sy)
     Else
        ML = 1   ' KEYSTART
    End If
        If y1 = 3 Then
            If GetVar(bstack, s$, i) Then
                If Typename(var(i)) = doc Then
                            var(i).SortDoc ML, CLng(sx), x1
                            ifier = True '*******************************************
                Else
                   MissingDoc
                End If
            Else
                   MissFuncParameterStringVar
            End If
        ElseIf y1 = 6 Then
                    If Typename(pppp.item(i)) = doc Then
                                pppp.item(i).SortDoc ML, CLng(sx), x1
                                ifier = True  '*****************************************
                      Else
                                MissingDoc
                      End If
        Else
                    MissPar
        End If
    Exit Function

Case "OVER", "����"  '���������� ��� ������
If Not IsExp(bstack, rest$, x) Then x = 1
    If x <= 0 Then
         
            MyEr "No negatives or zero", "��� ��������� � �����"
    Exit Function
    End If
    If x > bstack.soros.Total Then
        MissStackItem
        
        Exit Function
    Else
    bstack.soros.Copy2TopItem CLng(x)

    End If
Case "SHIFTBACK", "��������"  '��������� ��� ��� ������
If Not IsExp(bstack, rest$, x) Then x = bstack.soros.Total
If x <= 0 Then
     
        MyEr "No negatives or zero", "��� ��������� � �����"
        ifier = False
Exit Function
End If
If x > bstack.soros.Total Then
MissStackItem
ifier = False
Exit Function
    Else
    bstack.soros.MakeTopItemBack CLng(x)
    
    End If
    
Case "SHIFT", "����"  '��������� ���� ������
If Not IsExp(bstack, rest$, x) Then x = bstack.soros.Total
If x <= 0 Then
     
        MyEr "No negatives or zero", "��� ��������� � �����"
Exit Function
End If
If x > bstack.soros.Total Then
MissStackItem

Exit Function
    Else
    bstack.soros.MakeTopItem CLng(x)
    
    End If

Case "DROP", "����"
If Not IsExp(bstack, rest$, x) Then x = 1
If x < 0 Then
     
        MyEr "No many items to drop from stack", "��� �������� ����� �� ������ ��� �� ����"
Exit Function
End If
If x = 0 Then
' do nothing
Else
If x > bstack.soros.Total Then
MissStackItem

Exit Function
    ElseIf x = bstack.soros.Total Then
    bstack.soros.Flush
    Else
    bstack.soros.DROP CLng(x)
    End If
    End If

Case "SCREEN.PIXELS", "�������.������"
If IsExp(bstack, rest$, x) Then
    If FastSymbol(rest$, ",") Then
        If IsExp(bstack, rest$, y) Then
            ChangeScreenRes CLng(x), CLng(y)
        Else
            
            MissNumExpr
        End If
    Else
        
        SyntaxError
    End If
ElseIf FastSymbol(rest$, "!") Then
    ScreenRestore
Else
    
    MissNumExpr
End If
Exit Function

Case "SOUNDREC", "����������"  '*************************************************SOUND RECORDING
' not tested yet...
    If IsLabelSymbolNew(rest$, "���", "NEW", Lang) Then
    Set sRec = New RecordMci
    sRec.Rec_Initialize
    If IsStrExp(bstack, rest$, s$) Then
    
    sRec.FileName = s$
    End If
    If FastSymbol(rest$, ",") Then
    If IsExp(bstack, rest$, p) Then
    ' hz
        If IsLabelSymbolLatin(rest$, "STEREO") Then
        sRec.Stereo
        Else
        sRec.Mono
        End If
        If IsLabelSymbolLatin(rest$, "HIFI") Then
        sRec.Bit16
        Else
        sRec.Bit8
        End If
        sRec.QualityAny p
    End If
    Else
        sRec.RecFast
    End If
    ElseIf Not (sRec Is Nothing) Then
    If IsLabelSymbolNew(rest$, "��������", "INSERT", Lang) Then
        sRec.Capture True
    ElseIf IsLabelSymbolNew(rest$, "������", "OVERWRITE", Lang) Then
        sRec.ReCapture
    ElseIf IsLabelSymbolNew(rest$, "�������", "DELETE", Lang) Then
    If IsExp(bstack, rest$, x) Then
    Else
    x = 0
    End If
    If IsLabelSymbolNew(rest$, "���", "TO", Lang) Then
        If Not IsExp(bstack, rest$, y) Then
        y = sRec.getLengthInMS
        End If
        Else
        y = sRec.getLengthInMS
    End If
        sRec.CutRecordMs x, y
    ElseIf IsLabelSymbolNew(rest$, "STOP", "�������", Lang) Then
        sRec.recStop
    ElseIf IsLabelSymbolNew(rest$, "������", "TEST", Lang) Then
        sRec.recPlay
    ElseIf IsLabelSymbolNew(rest$, "����", "POS", Lang) Then
        If sRec.isRecPlaying Then
            If IsExp(bstack, rest$, x) Then
            sRec.recPlayFromMs x
            Else
            sRec.recPlay
            End If
        Else
        ' SEEK
            If IsExp(bstack, rest$, x) Then
            sRec.oneMCI "seek capture to " & CStr(CLng(x))
            Else
            sRec.oneMCI "seek capture to 0"
            End If
        End If
    ElseIf IsLabelSymbolNew(rest$, "����", "SAVE", Lang) Then
        If IsStrExp(bstack, rest$, s$) Then
            sRec.SaveAs s$
        Else
            sRec.Save
        End If
    ElseIf IsLabelSymbolNew(rest$, "������", "END", Lang) Then
        Set sRec = Nothing
    End If
    Else
        
        MyEr "You don't have new recording", "��� ����� ��������� ��� ����������"
    End If
    Exit Function

Case "KEYBOARD", "������������"   '***********************************************************KEYBOARD ! OPEN osk.exe
If FastSymbol(rest$, "!") Then      '***********************************************************or SEND KEYS to INTERNAL CHARACTER BUFFER
    MyShell "osk.exe"
Else
    par = True    ' KEYBOARD 32,65,"ok"   char as unicode code or string of chars
    Do
        If par = False Then Exit Do
        If IsExp(bstack, rest$, p) Then
            MKEY$ = MKEY$ & ChrW$(Int(p) And &HFFFF)
            par = False
        ElseIf IsStrExp(bstack, rest$, s$) Then
        MKEY$ = MKEY$ & s$
        par = False
        Else
        Exit Do
        End If
        If Not FastSymbol(rest$, ",") Then Exit Do
        par = True
    Loop

End If
Exit Function
Case "JOYPAD", "����"
        If IsExp(bstack, rest$, p) Then
        If Not StartJoypadk(Int(p)) Then
        ' ERROR
        MyEr "Joypad " & CStr(p) & " not exist", "� ���� " & CStr(p) & " ��� �������"
        
        Exit Function
        End If
        While FastSymbol(rest$, ",")
        
         If IsExp(bstack, rest$, p) Then
        If Not StartJoypadk(Int(p)) Then
        MyEr "Joypad " & CStr(p) & " not exist", "� ���� " & CStr(p) & " ��� �������"
        
        Exit Function

        End If
        Else
        MyEr "Joypad Number?", "������� �����?"
        
        Exit Function

        End If
        Wend
        
        Else
        FlushJoyAll
        End If
        Exit Function
Case "PIPE", "�����"
If IsStrExp(bstack, rest$, SS$) Then
If FastSymbol(rest$, ",") Then
stac1$ = ""
Do
If IsExp(bstack, rest$, p) Then
stac1$ = stac1$ & " " & Trim$(Str$(p))
ElseIf IsStrExp(bstack, rest$, s$) Then
stac1$ = stac1$ & Sput(s$)
Else
Exit Do
End If
If Not FastSymbol(rest$, ",") Then Exit Do
Loop
' SEND STAC1$ TO SS$ PIPE
If VALIDATE(stac1$, "", s$) Then
'
' SPUT(SS$)+SPUT(S$)+STAC1$
ifier = Trans2pipe(SS$, Sput(SS$) + Sput(s$) + stac1$)
Exit Function
End If
End If
End If

'End If
Case "GET", "����"
IsSymbol3 rest$, "#"
If IsExp(bstack, rest$, p) Then
    f = p Mod 512
    If Not FastSymbol(rest$, ",") Then Exit Function
    
    Select Case IsLabel(bstack, rest$, what$)
    Case 3
        par = True: If Not GetVar(bstack, what$, it) Then it = GlobalVar(what$, "")
    Case 6
        par = False: If neoGetArray(bstack, what$, pppp) Then If Not NeoGetArrayItem(pppp, bstack, what$, it, rest$) Then Exit Function
    Case Else
        MissingStrVar
        Exit Function
    End Select
    
    If FastSymbol(rest$, ",") Then
        If IsExp(bstack, rest$, p) Then
            i = p Mod 2147483647
            Seek #f, (i - 1) * FLEN(f) + 1
        Else
            MissNumExpr
            Exit Function
        End If
    End If

        s$ = Space(FLEN(f) \ 2)
        getUniString f, s$  '
        If Not Uni(f) Then
        s$ = StrConv(s$, vbUnicode)
        End If
        If par Then
        CheckVar var(it), s$
        Else
        If Typename(pppp.item(it)) = doc Then
            Set pppp.item(it) = New Document
            If s$ <> "" Then pppp.item(it).textDoc = s$
            Else
            pppp.item(it) = s$
            End If
        End If
        End If
Exit Function


Case "����", "THREAD"  ' ************************************************************************* THREAD CONSTRUCT AND HANDLE FROM OTHER POINT
      If FastSymbol(rest$, "{") Then
        frm$ = NLtrim$(block(rest$))
        If FastSymbol(rest$, "}") Then
                par = False
                If IsLabelSymbolNew(rest$, "��", "AS", Lang) Then
                Else
                    MyEr "can't find clause AS variable_name", "��� ����� �� ��� �� ����� �� �����_����������"
                   ifier = True
                    I2 = False
               
                    Exit Function
                End If
                Select Case Abs(IsLabel(bstack, rest$, what$)) ' is Ifier
                Case 1
                        p = GetTaskId + 20000
                        If GetVar(bstack, what$, i) Then ' if exist
                            var(i) = p
                        Else
                            GlobalVar what$, p     ' or make one
                        End If
                        Set bs = New basetask   ' bs is the basetask of the thread but thread process class arn't constructed yet
                        Set bs.Parent = bstack  ' link to current basestask
      
                        bs.reflimit = bstack.reflimit
                        bstack.PushThread CLng(p), what$  'push thread id and Ifier to threads collection in current basetask
                        sThreadInternal bs, p, 0, frm$, uintnew(-1), HERE$, False ' thread construction - also we have a connection to
                        
                        
                        Set bs = Nothing
                        If IsLabelSymbolNew(rest$, "����", "INTERVAL", Lang) Then GoTo chekInterval
                Case Else
                       MissingnumVar
                        ifier = True
                        I2 = False
  
                     Exit Function
                End Select
        End If
ElseIf IsExp(bstack, rest$, p) Then
    If IsLabelSymbolNew(rest$, "�����", "ERASE", Lang) Then
        bstack.ThrowOne CLng(p)
    ElseIf IsLabelSymbolNew(rest$, "�����", "HOLD", Lang) Then
        TaskMaster.Message CLng(p), 0
    ElseIf IsLabelSymbolNew(rest$, "������", "RESTART", Lang) Then
        TaskMaster.Message CLng(p), 2
    ElseIf IsLabelSymbolNew(rest$, "����", "INTERVAL", Lang) Then
chekInterval:
        If IsExp(bstack, rest$, x) Then
            If x < 2 Then x = 2
            TaskMaster.Message CLng(p), 3, CLng(x)
        Else
            MyEr "Expected number for interval, miliseconds", "�������� ������ ��� ������ �������� ����������� ��������� ������� (����� �� �������� �������������)"
           ifier = True
            I2 = False
        End If
    Else
        MyEr "can't find ERASE or HOLD or RESTART or INTERVAL clause", "��� ����� �� ��� ��� ���� �� ����� � �� ����� � �� ������ � �� ����"
      ifier = True
        I2 = False

    End If
End If
what$ = ""
Exit Function
Case "HOLD", "�������"
Form1.MY_BACK.ClearUp
If Form1.MY_BACK.Create(Form1.DIS.Width / DXP, Form1.DIS.Height / DYP) Then
Form1.MY_BACK.LoadPictureBlt Form1.DIS.hDC
If Form1.MY_BACK.bitsPerPixel <> 24 Then Conv24 Form1.MY_BACK
End If

Exit Function
Case "RELEASE", "�����"
Form1.MY_BACK.PaintPicture Form1.DIS.hDC
Exit Function
Case "USE", "�����"
' use "ti" number|string (feed stack)
' use ti

If IsStrExp(bstack, rest$, SS$) Then   'gsb
ElseIf Not Abs(IsLabel(bstack, rest$, SS$)) = 1 Then ' WITHOUT " .gsb"
SyntaxError
Exit Function
End If
ML = 0
If UCase(SS$) = "PIPE" Or UCase(SS$) = "�����" Then
ML = 1
End If

stac1$ = ""
If FastSymbol(rest$, "!") And ML <> 1 Then
If VALIDATEpart(rest$, s$) Then
Do While s$ <> ""
    If ISSTRINGA(s$, pa$) Then
        bstack.soros.DataStr pa$
    ElseIf IsNumberD(s$, x) Then
        bstack.soros.DataVal x
    Else
        Exit Do
    End If
Loop
Else
SyntaxError

'i2 = False
Exit Function
End If
Else
If ML <> 1 Then
    Do
        If IsExp(bstack, rest$, p) Then
        stac1$ = stac1$ & Str$(p)
        ElseIf IsStrExp(bstack, rest$, s$) Then
        ' �� �� ������ �� stack ��������...
        stac1$ = stac1$ & Sput(s$)
        Else
        Exit Do
        End If
        If Not FastSymbol(rest$, ",") Then Exit Do
        '�� �� ������ �� stack ��������...�� ����� �� �����
        'stac1$ = stac1$ & ", "
    Loop
   


    pa$ = ExtractPath(SS$)
    para$ = RTrim$(".gsb " & Mid$(SS$, Len(ExtractPath(SS$) + ExtractName(SS$)) + 1))
If pa$ = "" Then pa$ = mcd
frm$ = ExtractNameOnly(SS$)

 End If
End If

If Not IsLabelSymbolNew(rest$, "���", "TO", Lang) Then

w$ = "S" & CStr(Int(Rnd(12) * 100000))

Else

Select Case Abs(IsLabel(bstack, rest$, SS$))

Case 3
    If GetVar(bstack, SS$, i) Then
       w$ = "V" & CStr(i)
       s$ = frm$
       frm$ = var(i)
       var(i) = ""
      Else
     i = GlobalVar(SS$, "")
             If i <> 0 Then
              w$ = "V" & CStr(i)
              
            var(i) = ""
            End If
                        
     End If
Case 6
   
     If neoGetArray(bstack, SS$, pppp) Then
            If Not NeoGetArrayItem(pppp, bstack, SS$, it, rest$) Then
        MyEr "Not such index for array", "�������� ������� ������� ��� ������"
        
        Exit Function
        End If
     Else
     MyEr "Not such array, need to DIM fisrt", "�������� ������, ������ �� ������� ����"
: Exit Function
     End If
    
    w$ = "A" & Trim(CopyArrayItems(SS$)) + CStr(it) ''''''''''��� ��� ��� ��� ������ ������ �� ���� �� mArray???
    s$ = frm$
    frm$ = pppp.item(it)
    If Typename(pppp.item(it)) = doc Then
    Set pppp.item(it) = New Document
    Else
     pppp.item(it) = ""
    End If
   
    Case Else
    SyntaxError
: Exit Function
   End Select
   If Left$(w$, 1) <> "S" Then

p = GetTaskId + 10000 ' starts from 10000
If Not IsLabelSymbolNew(rest$, "��", "AS", Lang) Then
's$ = validpipename(ss$)

If frm$ <> "" Then

SS$ = frm$
Else

SS$ = "M" & CStr(p)
End If

Thing w$, validpipename(SS$)
sThread CLng(p), 0, SS$, w$
TaskMaster.Message CLng(p), 3, CLng(100)
Exit Function
Else
Select Case Abs(IsLabel(bstack, rest$, what$))
Case 0 ' TAKE A NUMBER
If IsNumberLabel(rest$, what$) Then
frm$ = "S" + Right$("0000" + what$, 5)
p = Val(what$)
s$ = frm$
If Left$(w$, 1) = "V" Then var(Val(Mid$(w$, 2))) = validpipename(frm$)
Else
MyEr "No number found (5 digits)", "��� ����� ������ (5 �����)"
Exit Function
End If
Case 1
    If GetVar(bstack, what, i) Then
    If var(i) < 10000 Then var(i) = p Else p = var(i)
      Else
      GlobalVar what, p
                             
     End If
Case 5, 7
   
     If neoGetArray(bstack, what, pppp) Then
        If Not NeoGetArrayItem(pppp, bstack, SS$, it, rest$) Then
        MyEr "Not such index for array", "�������� ������� ������� ��� ������"
      
        Exit Function
        End If
     Else
     MyEr "Not such array, need to DIM fisrt", "�������� ������, ������ �� ������� ����"
     
      Exit Function
     End If
     If pppp.item(it) < 10000 Then pppp.item(it) = p Else p = pppp.item(it)
    Case Else
    MyEr "Wrong parameter", "����� ����������"
     Exit Function
   End Select
   End If
End If
'ss$ = validpipename("M" & CStr(p))
'stac1$ = Sput(ss$) + stac1$
If frm$ <> "" Then
SS$ = frm$
Else
SS$ = "M" & CStr(p)
End If
frm$ = s$
sThread CLng(p), 0, SS$, w$
TaskMaster.Message CLng(p), 3, CLng(100)
SS$ = validpipename(SS$)
stac1$ = Sput(SS$) + stac1$
SS$ = "M" & CStr(p)
End If
If ML <> 1 Then
If stac1$ = "" And Left$(s$, 1) = "S" Then
s$ = App.path
AddDirSep s$
s$ = s$ & "M2000.EXE "
If Shell(s$ & Chr(34) + pa$ & frm$ & ".gsb" & para$ & Chr(34), vbNormalFocus) > 0 Then
End If
End If
If Left$(w$, 1) = "V" Then
SS$ = GetTag$ & ".gsb"
Else
SS$ = w$ & ".gsb"
End If
i = FreeFile
On Error Resume Next
 If Not NeoUnicodeFile(strTemp + SS$) Then
 MyEr "can't save " + strTemp + SS$, "��� ����� �� ���� " + strTemp + SS$
ifier = False
what$ = ""
 Exit Function
End If

Open GetDosPath(strTemp + SS$) For Output As i
If Err.Number > 0 Then
MyEr "Internal Error", "��������� �����"
ifier = False
what$ = ""
Exit Function
End If
If stac1$ <> "" Then

' look for unicode...
Print #i, "STACK !" & stac1$ & ": DIR " & Chr(34) + pa$ & Chr(34) & " : LOAD " & Chr(34) + frm$ & para$ & Chr(34)

Else
Print #i, "DIR " & Chr(34) + pa$ & Chr(34) & " : LOAD " & Chr(34) + frm$ & para$ & Chr(34)

End If
Close i
tempList2delete = Sput(strTemp + SS$) + tempList2delete
s$ = App.path
AddDirSep s$
s$ = s$ & "M2000.EXE "
If Shell(s$ & Chr(34) + strTemp + SS$ & Chr(34), vbNormalFocus) > 0 Then
'Kill strTemp + ss$
End If

End If
Exit Function

Case "OPEN.FILE", "�������.�������"
If IsSelectorInUse Then
ifier = False
SelectorInUse
Exit Function
End If
olamazi
frm$ = mcd
If myUcase(what$) = "OPEN.FILE" Then
DialogSetupLang 1
Else
DialogSetupLang 0
End If

IsStrExp bstack, rest$, s$
If FastSymbol(rest$, ",") Then If IsStrExp(bstack, rest$, pa$) Then frm$ = pa$
If frm$ <> "" Then If Not isdir(frm$) Then NoSuchFolder rest$: Exit Function
If FastSymbol(rest$, ",") Then If IsStrExp(bstack, rest$, pa$) Then SS$ = pa$

If FastSymbol(rest$, ",") Then If Not IsStrExp(bstack, rest$, w$) Then Exit Function
par = False
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then par = p <> 0
If FastSymbol(rest$, ",") Then f = IsExp(bstack, rest$, p) Else p = 0
 DUM = p <> 0
 If Form1.Visible Then
Set photo = Form1
Else
Set photo = Nothing
End If
Dim aaa() As String
If InStr(w$, "|") > 0 Then
    If InStr(w$, "(*.") > 0 Then
        aaa() = Split(w$, "(*.")
        w$ = ""
        If UBound(aaa()) > LBound(aaa()) Then
            w$ = "|"
            For x1 = LBound(aaa()) + 1 To UBound(aaa())
                w$ = w$ & UCase(Left$(aaa(x1), InStr(aaa(x1), ")") - 1) & "|")
            Next x1
        End If
    Else
        aaa() = Split(w$, "|")
        w$ = ""
        If UBound(aaa()) > LBound(aaa()) Then
            w$ = "|"
            For x1 = LBound(aaa()) To UBound(aaa())
                w$ = w$ & UCase(aaa(x1)) & "|"
            Next x1
        End If
    End If
End If

    If OpenDialog(bstack, photo, frm$, s$, SS$, w$, Not par, DUM) Then
     If multifileselection Then
        If ReturnListOfFiles <> "" Then
                aaa() = Split(ReturnListOfFiles, "#")
                If UBound(aaa()) > LBound(aaa()) Then
            
                        For x1 = UBound(aaa()) To LBound(aaa()) + 1 Step -1
                            bstack.soros.PushStr aaa(x1)
                        Next x1
                        bstack.soros.PushVal UBound(aaa()) - LBound(aaa())
                        bstack.soros.PushStr aaa(x1)
                 End If
            Else
            
     If isdir(ReturnFile) Then
     bstack.soros.PushStr ""
    Else
    bstack.soros.PushStr ReturnFile
    End If
        End If
    Else
    If isdir(ReturnFile) Then
     bstack.soros.PushStr ""
    Else
    bstack.soros.PushStr ReturnFile
    End If
    End If
    Else
    bstack.soros.PushStr ""
    End If

Set photo = Nothing
Case "OPEN.IMAGE", "�������.�������"
If IsSelectorInUse Then
ifier = False
SelectorInUse
Exit Function
End If
olamazi
  
frm$ = mcd
If myUcase(what$) = "OPEN.IMAGE" Then
DialogSetupLang 1
Else
DialogSetupLang 0
End If

IsStrExp bstack, rest$, s$
If FastSymbol(rest$, ",") Then If IsStrExp(bstack, rest$, pa$) Then frm$ = pa$
If frm$ <> "" Then If Not isdir(frm$) Then NoSuchFolder rest$: Exit Function
If FastSymbol(rest$, ",") Then If IsStrExp(bstack, rest$, pa$) Then SS$ = pa$
If FastSymbol(rest$, ",") Then If Not IsStrExp(bstack, rest$, w$) Then MissNumExpr:  Exit Function
par = False
 If Form1.Visible Then
Set photo = Form1
Else
Set photo = Nothing
End If
If InStr(w$, "|") > 0 Then
If InStr(w$, "(*.") > 0 Then
aaa() = Split(w$, "(*.")
Else
aaa() = Split(w$, "|")
End If
w$ = ""
If UBound(aaa()) > LBound(aaa()) Then
w$ = "|"
For x1 = LBound(aaa()) + 1 To UBound(aaa())
w$ = w$ & UCase(Left$(aaa(x1), InStr(aaa(x1), ")") - 1) & "|")
Next x1
End If
End If
    If OpenImage(bstack, photo, frm$, s$, SS$, w$) Then
    ' push to stack
    If multifileselection Then
    If ReturnListOfFiles <> "" Then
    aaa() = Split(ReturnListOfFiles, "#")
    If UBound(aaa()) > LBound(aaa()) Then

For x1 = UBound(aaa()) To LBound(aaa()) + 1 Step -1
    bstack.soros.PushStr aaa(x1)
Next x1
bstack.soros.PushVal UBound(aaa()) - LBound(aaa())
bstack.soros.PushStr aaa(x1)
End If
Else
    bstack.soros.PushStr ReturnFile
    End If
    Else
    bstack.soros.PushStr ReturnFile
    End If
    Else
    bstack.soros.PushStr ""
    End If

Set photo = Nothing


Case "FLUSH", "�������"
If IsLabelSymbolNew(rest$, "�����", "ERROR", Lang) Then
         NOEXECUTION = False
         NERR = False
           LastErNum1 = 0
         LastErNum = 0
            LastErName = ""
            LastErNameGR = ""
Else
bstack.soros.Flush
End If
Exit Function
Case "PROPERTIES", "���������"  ''for printer
  If IsStrExp(bstack, rest$, s$) Then
  LoadArray MyDM(), s$
  Else
  SyntaxError
  ifier = False
  End If
  Exit Function
  Case "SPEECH", "�����"
If IsStrExp(bstack, rest$, s$) Then

If FastSymbol(rest$, "#") Then s$ = "<spell>" & s$ & "</spell>"
DUM = FastSymbol(rest$, "!")
If FastSymbol(rest$, ",") Then ' get voice number
If Not IsExp(bstack, rest$, p) Then MissNumExpr:  Exit Function
SPEeCH s$, DUM, CLng(p)
Else
SPEeCH s$, DUM
End If
End If
Exit Function


Case "DOS", "�������"
If IsSupervisor Then
On Error Resume Next
x1 = Abs(IsLabelBig(bstack, rest$, s$, , w$))
If x1 = 1 Then
s$ = w$
Else
rest$ = s$ + rest$
x1 = IsStrExp(bstack, rest$, s$)
End If
If FastSymbol(rest$, ",") Then
If Not IsExp(bstack, rest$, p) Then MissNumExpr: Exit Function
Else
p = 300
End If
        If x1 Then
        
                    If FastSymbol(rest$, ";") Then
                                Shell "CMD /C " & s$, vbMinimizedNoFocus
                    Else
                                Shell "CMD /K " & s$, vbNormalFocus
                    End If
        Else
                    Shell "CMD", vbNormalFocus
        End If

           MyDoEvents
        Sleep CLng(Abs(p))

Else
BadCommand
ifier = False
End If
Exit Function
Case "WIN", "���", "�������"
If IsSupervisor Then
x1 = Abs(IsLabelBig(bstack, rest$, s$, , w$))
If x1 = 1 Then
s$ = w$
Else
rest$ = s$ + rest$
x1 = IsStrExp(bstack, rest$, s$)
End If

If x1 Then
On Error Resume Next

If s$ = ExtractPath$(s$) Then
MyShell "explorer " & Chr(34) + s$ & Chr(34)
Else
MyShell s$
End If
'***********************************************
End If
Else
BadCommand
ifier = False
End If
Exit Function


Case "CLIPBOARD", "��������"   '******************************************************PUT TO  CLIPBOARD STRING /OR STRING WITH IMAGE INSIDE
    If IsStrExp(bstack, rest$, s$) Then
        If (Left$(s$, 4) = "cDIB" And Len(s$) > 12) Then         ' MAGIC LETTERS cDIB choose the bitmap
            Set photo = New cDIBSection
            If Not cDib(s$, photo) Then  ' copy from string to cDIBSection
                Set photo = Nothing
                ifier = False
                MissCdibStr
                Exit Function
            Else
                photo.GetDpi 96, 96
                photo.CopyToClipboard
                Set photo = Nothing
            End If
        Else
        Clipboard.clear
              '      Clipboard.SetText s$, vbCFText  ' set as ansi text
           ' SetTextDataLong 16, GetLCIDFromKeyboard
           SetTextData CF_UNICODETEXT, s$   'set as unicode text
        End If
    End If
    I2 = True
    Exit Function
'**********************************************************************************

Case "�������", "HELP"
abt = False
If Abs(IsLabel(bstack, rest$, s$)) > 0 Then
'If Form4.Visible Then Form4.Visible = False
vH_title$ = ""

    fHelp bstack, s$, Asc(s$ + Mid$(" �", Abs(pagio$ = "GREEK") + 1)) < 128
  
Else
If Not ISSTRINGA(rest$, s$) Then
nhelp bstack, Lang <> 1
Else

'If Form4.Visible Then Form4.Visible = False
fHelp bstack, s$, Lang = 1
End If
End If

Case "CLEAR", "������"

Do
y1 = Abs(IsLabel(bstack, rest$, what$))


If y1 = 3 Then
      If GetVar(bstack, what$, i) Then
        If Typename(var(i)) = doc Then
        Set var(i) = New Document
        var(i).textDoc = ""
        Else
        var(i) = ""
        End If
       Else
        GlobalVar what$, ""
        
       End If
ElseIf y1 < 5 And y1 > 0 Then
      If GetVar(bstack, what$, i) Then
        If IsObject(var(i)) Then
        ' PUT ZERO TO VARIABLES INSIDE GROUP
       If Typename(var(i)) = "Group" Then
       var(i) = CLng(0)
       Else
         MissingGroup
         ifier = False
       End If
        Else
        If VarType(var(i)) = vbLong Then
        var(i) = CLng(0)
        Else
            var(i) = CDbl(0)
            End If
        End If
        
       Else
        GlobalVar what$, it
       End If
ElseIf y1 = 6 Then
        If neoGetArray(bstack, what$, pppp) Then
                If Not NeoGetArrayItem(pppp, bs, what$, it, rest$) Then Exit Function
                         If Typename(pppp.item(it)) = doc Then
                         Set pppp.item(it) = New Document
                         pppp.item(it).textDoc = ""
                         Else
                         pppp.item(it) = ""
                         End If
                 
       Else
       SyntaxError
       ifier = False
       End If
ElseIf y1 > 0 Then
  SyntaxError
       ifier = False
Else
Form1.List1.clear
If bstack.IamThread Then
 MyEr "Can't Clear all variables in a thread", "��� ����� �� ����� ���� ��� ���������� �� ��� ����"
Else

Set photo = bstack
again1234:
 If photo.IamChild Then
 If photo.IamThread Then Set photo = Nothing: Exit Function
 With photo
        If .vars = 0 And .arrs = 0 And .VName = 0 And .anames = 0 Then Set photo = Nothing: Exit Function
   End With
Set photo = photo.Parent
GoTo again1234
End If
Set photo = Nothing
' this command do nothing in a function.

var2used = 0
ReDim var(50) As Variant
VarName$ = ""
'ReDim arr(0) As Variant
While neoArray.Count > 0
neoArray.remove neoArray.Count
Wend
arrname$ = ""
Set photo = bstack
again12345:
 If photo.IamChild Then
            With photo
                 If .vars = 0 And .arrs = 0 And .VName = 0 And .anames = 0 Then Set photo = Nothing: Exit Function
                     .vars = 0
                     .arrs = 0
                     .VName = 0
                     .anames = 0
            
            End With
            Set photo = photo.Parent
            GoTo again12345
End If
Set photo = Nothing
End If
Exit Do
End If
If Not I2 Then Exit Do
Loop Until Not FastSymbol(rest$, ",")
Case "DECLARE", "�����"  'OBJECT
'ifier = true..changed for ver 8
y1 = IsLabelSymbolNew(rest$, "������", "GLOBAL", Lang)
x1 = Abs(IsLabel(bstack, rest$, what$))

what$ = myUcase$(what$)
    If x1 = 1 Then   '' Or X1 = 3 Then  '' not yet for string
        If x1 = 1 Then
            If GetVar(bstack, what$, i) Then
               If IsLabelSymbolNew(rest$, "������", "NOTHING", Lang) Then
                   If Not IsObject(var(i)) Then
                        BadObjectDecl
                        ifier = False
                   Else
                       Set var(i) = Nothing
                   End If
                   Exit Function
                   
               ElseIf IsLabelSymbolNew(rest$, "���", "NEW", Lang) Then
               Set var(i) = Nothing
               GoTo THEREnew
               Else
                  BadObjectDecl
                    ifier = False
                  Exit Function
               End If
                     
            End If
         End If
        If IsLabelSymbolNew(rest$, "���", "LIB", Lang) Then
            If IsStrExp(bstack, rest$, pa$) Then
                       ' we get the lib
                If Not IsStrExp(bstack, rest$, SS$) Then SS$ = ""
                SpaceForVar i
                Set photo = New stdCallFunction
                photo.CallThis pa$, SS$, Lang
            
                Set var(i) = photo
                
                s$ = what$
                
                If HERE$ = "" Or y1 Then
                    GlobalSub s$ + "()", "CALL EXTERN " & CStr(i) & " : = NUMBER"
                Else
                    GlobalSub HERE$ & "." & bstack.GroupName & s$ + "()", "CALL EXTERN " & CStr(i) & " : = NUMBER"
                End If

               
                Exit Function
            Else
                BadObjectDecl
                 ifier = False
                Exit Function
            End If
        ElseIf IsLabelSymbolNew(rest$, "��", "USE", Lang) Then
                    x1 = Abs(IsLabel(bstack, rest$, pa$))
                    IsSymbol3 rest$, ","
                    If x1 = 1 Then
                            If GetVar(bstack, pa$, x1) Then
                                    If IsObject(var(x1)) Then
                                                i = GlobalVar(what$, s$, , y1 = True)
                                                If IsStrExp(bstack, rest$, SS$) Then
                                                Set var(i) = MakeObjectFromString(var(x1), SS$)
                                                End If
                                    End If
                            End If
                    Else
: MissPar: ifier = False:
                    ifier = False
                    End If
                    Exit Function
        End If
        i = GlobalVar(what$, s$, , y1 = True)
THEREnew:
ifier = False
        If IsStrExp(bstack, rest$, s$) Then
            If FastSymbol(rest$, ",") Then
                If IsStrExp(bstack, rest$, pa$) Then
                    
                If FastSymbol(rest$, ",") Then
                        If IsStrExp(bstack, rest$, w$) Then
                        Err.clear
                        On Error Resume Next
                        Licenses.Add s$, w$
                        If Err.Number > 0 Then
                        MissLicence
                        Else
                        CreateitObject var(i), s$, CStr(pa$)
                        If Err.Number > 0 Then
                        Err.clear
                        MissLicence
                        End If
                        End If
                        Licenses.remove s$
                        Else
                        MissStringExpr
                        End If
                        
                        
                Else
                      Err.clear
                        On Error Resume Next
                CreateitObject var(i), s$, CStr(pa$)
                     If Err.Number > 0 Then
                        Err.clear
                        MissLicence
                        End If
                    End If
                    
                    
                Else
                 If FastSymbol(rest$, ",") Then
                 If IsStrExp(bstack, rest$, pa$) Then
                    Err.clear
                        On Error Resume Next
                 Licenses.Add s$, pa$
                     If Err.Number > 0 Then
                        MissLicence
                        Else
                 CreateitObject var(i), s$
                 If Err.Number > 0 Then
                        Err.clear
                        MissLicence
                        End If
                        End If
                 Licenses.remove s$
                 Else
                    MissStringExpr
                 End If
                Else
                    MissStringExpr
                    End If
                End If
                
                
                
                
                
            Else
               Err.clear
                        On Error Resume Next
                CreateitObject var(i), s$
                 If Err.Number > 0 Then
                        Err.clear
                        MissLicence
                        End If
            End If
        End If
           Err.clear
                        On Error Resume Next
        If Not IsObject(var(i)) Then
        BadObjectDecl
        End If
       
    Else
    BadObjectDecl
    
    End If
     ifier = True
    Exit Function

Case "REM", "���"
SetNextLine rest$
rest$ = vbCrLf + rest$
Exit Function
Case "VOLUME", "������"
If IsExp(bstack, rest$, p) Then
vol = (CLng(p) Mod 101)
If AVIRUN Then
MediaPlayer1.setLeftVolume vol * 10
MediaPlayer1.setRightVolume vol * 10
Else
MediaPlayer1.SetMasterVolume vol
End If
End If
Exit Function
Case "ABOUT", "����"
        ProcAbout bstack, rest$, Lang
        Exit Function
Case "OPTIMIZATION", "��������������"

 If IsLabelSymbolNew(rest$, "���", "OFF", Lang) Then
NoOptimum = True
ElseIf IsLabelSymbolNew(rest$, "���", "ON", Lang) Then
NoOptimum = False
End If
Exit Function
Case Else

I2 = I3(bstack, what$, rest$, ifier, Lang)
End Select

End Function
Function I3(bstack As basetask, what$, rest$, ifier As Boolean, Lang As Long) As Boolean
Dim s$, p As Double, i As Long, x1 As Long, x As Double, y As Double, f As Long, y1 As Long, sx As Double, SS$, pa$, photo As Object, it As Long
Dim scr As Object, frm$, par As Boolean, w$, chain As TaskInterface, task As TaskInterface, Once As Boolean
Set scr = bstack.Owner
Dim prive As Long
Dim pppp As mArray, stac1$, col As Long, sy As Double, sxy As Double, DUM As Boolean, ps As mStiva
ifier = True
I3 = True
Select Case what$
Case "LINESPACE", "��������"
If IsExp(bstack, rest$, x) Then

    If CLng(x) < 0 Or CLng(x) > 60 * dv15 Then
    OutOfLimit
    Else
    x = (x \ 30) * 60
    x = CLng(x) / 2
    
   SetText scr, CLng(x)
    
    End If
ElseIf FastSymbol(rest$, "!") Then
   SetText scr, 4 * Screen.TwipsPerPixelY
Else
MissNumExpr
ifier = False
Exit Function
End If

Exit Function
Case "FIELD", "�����"
 prive = GetCode(scr)
 With players(prive)
        If IsLabelSymbolNew(rest$, "���", "NEW", Lang) Then result = 0: Exit Function
        If IsLabelSymbolNew(rest$, "�������", "PASSWORD", Lang) Then i = True
    
        If Not IsExp(bstack, rest$, x) Then x = .curpos
        If Not FastSymbol(rest$, ",") Then Exit Function
        If Not IsExp(bstack, rest$, y) Then y = .currow
        If FastSymbol(rest$, ",") Then
        If Not IsExp(bstack, rest$, p) Then Exit Function
        p = Int(p)
        End If
        If Not IsLabelSymbolNew(rest$, "��", "AS", Lang) Then Exit Function
        Select Case Abs(IsLabel(bstack, rest$, what$))
        Case 3
            par = False
            If Not GetVar(bstack, what$, it) Then it = GlobalVar(what$, String$(CLng(p), 32))
            s$ = var(it)
        Case 6
                 par = True
                If neoGetArray(bstack, what$, pppp) Then If Not NeoGetArrayItem(pppp, bstack, what$, it, rest$) Then Exit Function
                s$ = pppp.item(it)
        Case Else
        Exit Function
        End Select
        If p = 0 And s$ = "" Then Exit Function
        If p = 0 Then p = Len(s$)
        s$ = Left$(s$, p)
        s$ = s$ & String$(p - Len(s$), " ")
        x1 = 1
        
        s$ = gf(bstack, y, x, s$, x1, y1, CBool(i))
        
        
        If y1 <> 99 Then
        LCTbasket scr, players(prive), y + 1, 0
        End If
        result = y1
        If par Then
                If Typename(pppp.item(it)) = doc Then
            Set pppp.item(it) = New Document
            If s$ <> "" Then pppp.item(it).textDoc = s$
            Else
            pppp.item(it) = s$
            End If
        Else
        CheckVar var(it), s$
        End If
    
        Exit Function
End With
Case "TEST", "������"
If FastSymbol(rest$, "!") Then
untest:
If trace Then

With Form2
If pagio$ = "GREEK" Then
.gList2.HeadLine = "�������"
Else
.gList2.HeadLine = "Control"
End If
If TestShowCode And HERE$ <> "" Then
    Form2.gList3(2).BackColor = &H606060
Else
    Form2.gList3(2).BackColor = &H3B3B3B
    End If
.Label1(0) = ""
.Label1(1) = ""
.Label1(2) = ""
.Hide
 Set .Process = Nothing
 End With
 
STq = False
STEXIT = False
STbyST = False
trace = False
End If
Else
SS$ = ""

STq = False
STEXIT = False
STbyST = True
Form2.Show , Form1
If ISSTRINGA(rest$, SS$) Then IsSymbol rest$, ","
If HERE$ = "" Then

 TestShowSub = ""
 TestShowStart = 0
 Form2.testpad.Text = ""
 Form2.testpad.Show
 Form2.testpad.SetRowColumn 1, 1
 
 End If
MyDoEvents
' gList2.HeadLine
If SS$ <> "" Then Form2.gList2.HeadLine = Form2.gList2.HeadLine + ": " + SS$: TestShowCode = True
Form2.Label1(0) = HERE$
Form2.Label1(1) = what$
Form2.Label1(2) = GetStrUntil(vbCrLf, rest$ & vbCrLf, False)

If TestShowCode And HERE$ <> "" Then

Form2.gList3(2).BackColor = &H606060
SS$ = GetNextLine((SB(bstack.OriginalCode)))
    If Left$(SS$, 10) = "'11001EDIT" Then
    
    TestShowSub = Mid$(SB(bstack.OriginalCode), Len(SS$) + 3)
    Else
     TestShowSub = SS$
     End If
     If bstack.addlen Then
     If Len(TestShowSub) - bstack.addlen > 0 Then
     TestShowStart = rinstr(Left$(TestShowSub, Len(TestShowSub) - bstack.addlen), Mid$(rest$, 2)) - 1
     Else
     TestShowStart = 1
     End If
     Else
        TestShowStart = rinstr(TestShowSub, Mid$(rest$, 2)) - 1
End If
Else
 TestShowSub = ""
 End If
 Set Form2.Process = bstack
stackshow bstack
MyDoEvents
Form1.Show , Form5

If IsLabelOnly(rest$, what$) Then
rest$ = ": " + what$ + " " + rest$
If Not trace Then
trace = True
ifier = Execute(bstack, rest$, True) = 1
GoTo untest
End If

End If
trace = True
End If
Exit Function

Case "MOUSE.ICON", "������.�����"
i3MouseIcon bstack, rest$, Lang
Case "MOTION.W", "������.�"
If Not Form1.Visible Then ifier = False: Exit Function
Form1.Visible = True
If Form1.WindowState <> 0 Then Form1.WindowState = 0 ': mydoevents

If Form1.WindowState = 0 Then
    If Not IsExp(bstack, rest$, x) Then x = Form1.Left
    If FastSymbol(rest$, ",") Then
        If Not IsExp(bstack, rest$, y) Then ifier = False: Exit Function
        Else
        
        y = Form1.top
    End If
    If FastSymbol(rest$, ";") Then
    x = ((ScrX() - 1) - Form1.Width) / 2
    y = ((ScrY() - 1) - Form1.Height) / 2
    End If
' LETS MOVE
Form1.Move x, y
Form1.follow IEX, IEY
Form1.Up
Sleep 10

'Form1.Refresh
End If
Case "BOLD", "������"
If IsExp(bstack, rest$, p) Then
bstack.myBold = (p <> 0)
Else
bstack.myBold = Not bstack.myBold

p = CDbl(bstack.myBold)
End If
players(GetCode(scr)).bold = Abs(p <> 0)

scr.Font.bold = Abs(p <> 0)



Exit Function

Case "WINDOW", "��������"
kForm = True
ProcWindow bstack, rest$, scr, ifier
Exit Function

Case "MODE", "�����"
kForm = True
On Error Resume Next
With players(GetCode(scr))
x1 = scr.Width
y1 = scr.Height
If scr.name = "Form1" Then
DisableTargets q(), -1

ElseIf scr.name = "DIS" Then
DisableTargets q(), 0

ElseIf scr.name = "dSprite" Then
DisableTargets q(), Val(scr.Index)
End If
If IsExp(bstack, rest$, p) Then
.SZ = CSng(p)
If .SZ < 4 Then .SZ = 4
If Not bstack.toprinter Then
If FastSymbol(rest$, ",") Then
    If IsExp(bstack, rest$, p) Then x1 = CLng(p): y1 = CLng(x1 * ScrY() / ScrX())
    If FastSymbol(rest$, ",") Then
            If IsExp(bstack, rest$, p) Then y1 = CLng(p)
        
    End If
ElseIf FastSymbol(rest$, ";") Then
.mysplit = 0
scr.Font.Size = .SZ

Exit Function
End If
Else
.SZ = .SZ * 3
End If
Err.clear
scr.Font.Size = .SZ
If Err.Number > 0 Then

MYFONT = "ARIAL"
scr.Font.name = MYFONT
scr.Font.charset = bstack.myCharSet
scr.Font.name = MYFONT
scr.Font.charset = bstack.myCharSet
End If

     .uMineLineSpace = .MineLineSpace
    
 FrameText scr, .SZ, x1, y1, .Paper
 
    Else
    ifier = False
    Exit Function
    End If
    .currow = 0
    .curpos = 0
    .XGRAPH = 0
    .YGRAPH = 0
End With

Case "GRADIENT", "�����"
If Not IsExp(bstack, rest$, x) Then x = rgb(255, 255, 255)
If Not FastSymbol(rest$, ",") Then
y = 0
Else
If Not IsExp(bstack, rest$, y) Then y = 0
End If
If Not FastSymbol(rest$, ",") Then

Gradient scr, mycolor(x), mycolor(y), 0, 0, 0, 0, True, False


Else
If Not IsExp(bstack, rest$, p) Then
ifier = IfierVal: Exit Function
Else
Gradient scr, mycolor(x), mycolor(y), 0, 0, 0, 0, p <> 0, False


End If
End If
Exit Function

Case "CHOOSE.FONT", "�������.�������������", "�������.�������������"
If Form4.Visible Then
Form4.Visible = False
    If Form1.TEXT1.Visible Then
        Form1.TEXT1.SetFocus
    Else
        Form1.SetFocus
    End If
End If
'GETFONT bstack, Form1.DIS
DialogSetupLang Lang
ReturnFontName = scr.Font.name
ReturnBold = scr.Font.bold
ReturnItalic = scr.Font.Italic
ReturnSize = CSng(scr.Font.Size)
ReturnCharset = scr.Font.charset
FeedFont2Stack bstack, OpenFont(bstack, Form1)

Exit Function
Case "����.���������", "RECURSION.LIMIT"
If IsExp(bstack, rest$, p) Then
deep = Abs(Int(p))
Else
prive = GetCode(scr)
If deep = 0 Then
If bstack.myCharSet = 0 Then
PlainBaSket scr, players(prive), "NO RECURSION LIMIT FOR FUNCTIONS"
Else
PlainBaSket scr, players(prive), "����� ���� ��������� ���� �����������"
End If
Else
PlainBaSket scr, players(GetCode(scr)), CStr(deep)
End If
crNew bstack, players(prive)
End If
Exit Function
Case "LOCALE", "������"
On Error Resume Next
If IsExp(bstack, rest$, p) Then
cLid = CLng(p)
p = GetCodePage(CLng(p))
GoTo CHR222
End If
Case "CODEPAGE", "������������"
If IsExp(bstack, rest$, p) Then
' usercodepage for use compare.
' also change to form.
On Error Resume Next
CHR222:
UserCodePage = p
p = GetCharSet(CLng(p))

GoTo chr11
End If
Case "INPUT", "��������"
With players(GetCode(scr))
If IsLabelSymbolNew(rest$, "�����", "END", Lang) Then
If Not NOEDIT Then

NOEDIT = True
Else
If QRY Then QRY = False
End If
Exit Function
End If
prive = GetCode(scr)
If Not releasemouse Then If Not Form1.Visible Then Form1.Visible = True  '

ifier = False '*************
rest$ = LTrim(rest$)

If FastSymbol(rest$, "!") Then
        x1 = 0
        frm$ = ""
        If bstack.toprinter = True Then oxiforPrinter:   Exit Function
        f = Abs(IsLabel(bstack, rest$, what$))
        Select Case f
        Case 1, 4
                     If Not FastSymbol(rest$, ",") Then MissPar: Exit Function
                     If Not IsExp(bstack, rest$, p) Then p = .mx
                     x = p
                     
                             y = 0
                             x1 = 30
                             If f = 4 Then x1 = 16
                     
                     Form1.ShadowMarks = True
                    
                    If y < 1 And x1 = 0 Then y = 1
                     If GetVar(bstack, what$, i) Then
                     s$ = CStr(var(i))
                     Do
                     s$ = iText(bstack, s$, (x), (y), "", x1, True, f = 4)
                     Loop Until ValidNum(s$, True, f = 4)
                               ValidNumberOnly s$, p, f = 4
                             var(i) = p
                     Else
                     s$ = ""
                      Do
                     s$ = iText(bstack, s$, (x), (y), "", x1, True, f = 4)
                     Loop Until ValidNum(s$, True, f = 4)
                              ValidNumberOnly s$, p, f = 4
                             GlobalVar what$, (p)
                     End If
                     ifier = True
                     Form1.ShadowMarks = False
        Case 3
                     If Not FastSymbol(rest$, ",") Then MissPar: Exit Function
                     If Not IsExp(bstack, rest$, p) Then p = .mx
                     x = p
                     If Not FastSymbol(rest$, ",") Then
                             y = 0
                             x1 = 50
                             If IsLabelSymbolNew(rest$, "�����", "LEN", Lang, , , , False) Then
                                     If FastSymbol(rest$, "=") Then
                                             If IsExp(bstack, rest$, p) Then
                                                     x1 = Abs(Int(p))
                                             Else
                                                     MissNumExpr
                                                     Exit Function
                                             End If
                                     Else
                                             MissSymbolMyEr "="
                                             Exit Function
                                     End If
                             End If
                     ElseIf Not IsExp(bstack, rest$, y) Then
                             MissPar
                             Exit Function
                     Else
                             If FastSymbol(rest$, ",") Then
                                     If Not IsStrExp(bstack, rest$, frm$) Then MissPar: Exit Function
                            Else
                            If Len(var(i)) > 0 Then x1 = -Len(var(i))
                        
                             End If
                           
                     End If
                     Form1.ShadowMarks = True
                     ''rest$ = nltrim$(rest$)
If y < 1 And x1 = 0 Then y = 1
                     If GetVar(bstack, what$, i) Then
                             var(i) = iText(bstack, var(i), (x), (y), frm$, x1)
                     Else
                             GlobalVar what$, iText(bstack, "", (x), (y), frm$, x1)
                     End If
                     ifier = True
                     Form1.ShadowMarks = False
        Case 5, 7 ' NUMBER IN ARRAY
                            If neoGetArray(bstack, what$, pppp) Then
                            If Not NeoGetArrayItem(pppp, bstack, what$, it, rest$) Then Exit Function
                    Else
                            Exit Function
                    End If
                    If Not FastSymbol(rest$, ",") Then MissPar: Exit Function
                    If Not IsExp(bstack, rest$, p) Then p = .mx
                    x = p
                     y = 0
                   x1 = 30
                    If f = 7 Then x1 = 16
                Form1.ShadowMarks = True
                If y < 1 And x1 = 0 Then y = 1

            
            
       s$ = CStr(pppp.item(it))
                      Do
                     s$ = iText(bstack, s$, (x), (y), "", x1, True, f = 7)
                     Loop Until ValidNum(s$, True, f = 7)
                              ValidNumberOnly s$, p, f = 7
                              
           
           If f = 4 Then
                        pppp.item(it) = Int(p)
           Else
                        pppp.item(it) = p
                        End If
        Form1.ShadowMarks = False
                ifier = True
        Case 6
                    If neoGetArray(bstack, what$, pppp) Then
                            If Not NeoGetArrayItem(pppp, bstack, what$, it, rest$) Then Exit Function
                    Else
                            Exit Function
                    End If
                    If Not FastSymbol(rest$, ",") Then MissPar: Exit Function
                    If Not IsExp(bstack, rest$, p) Then p = .mx
                    x = p
                    If Not FastSymbol(rest$, ",") Then
                        y = 0
                        x1 = 50
                        If IsLabelSymbolNew(rest$, "�����", "LEN", Lang, , , , False) Then
                                If FastSymbol(rest$, "=") Then
                                        If IsExp(bstack, rest$, p) Then
                                            x1 = Abs(Int(p))
                                        Else
                                            MissNumExpr
                                            Exit Function
                                        End If
                                Else
                                        MissSymbolMyEr "="
                                        Exit Function
                                End If
                        ElseIf Not IsExp(bstack, rest$, y) Then
                                MissPar
                                Exit Function
                        Else
                                If FastSymbol(rest$, ",") Then
                                        If Not IsStrExp(bstack, rest$, frm$) Then MissPar: Exit Function
                                        Else
                            If Len(CStr(pppp.item(it))) > 0 Then x1 = -Len(CStr(pppp.item(it)))
                        
                                End If
                        End If
                End If
                Form1.ShadowMarks = True
                If y < 1 And x1 = 0 Then y = 1
                s$ = iText(bstack, CStr(pppp.item(it)), (x), (y), frm$, x1)
                Form1.ShadowMarks = False
                If Typename(pppp.item(it)) = doc Then
                        Set pppp.item(it) = New Document
                        If s$ <> "" Then pppp.item(it).textDoc = s$
                Else
                        pppp.item(it) = s$
                End If
                ifier = True
        End Select
        Exit Function
                    '********************************************
ElseIf FastSymbol(rest$, "#") Then
            If Not IsExp(bstack, rest$, p) Then MissPar:   Exit Function
            If Not FastSymbol(rest$, ",") Then MissPar:  Exit Function
            f = p Mod 512
            par = True
Else
If bstack.toprinter = True Then oxiforPrinter:   Exit Function
            If ISSTRINGA(rest$, frm$) Then
            If Not FastSymbol(rest$, ",") Then MissPar:  Exit Function
            Else
            frm$ = "?"
            End If
            par = False
End If
w$ = ""
FKey = -1
If bstack.toprinter = True And Not par Then
            oxiforPrinter
            Exit Function
End If
ifier = False
Do
        
        Select Case Abs(IsLabel(bstack, rest$, what$))
        Case 1
                If par Then
                        If Uni(f) Then
                                getUniRealComma f, p
                        Else
                                getAnsiRealComma f, p
                        End If
                Else
                           prive = GetCode(scr)
                If players(prive).lastprint Then
                LCTbasket scr, players(prive), players(prive).currow, players(prive).curpos
                players(prive).lastprint = False
                End If
                        
                        w$ = QUERY(bstack, frm$, s$, 256, False, IIf(MaybeIsSymbol(rest$, ","), ",", vbCr), "+*/!@#$|\{}[]'~`%^&()=_:;", True)
                        If Not IsNumber(bstack, s$, p) Then ErrNum: ifier = False: Exit Function
                        If Trim(s$) <> "," And Trim(s$) <> "" Then ErrNum: ifier = False: Exit Function
                End If
                If GetVar(bstack, what$, i) Then
                        If Typename(var(i)) = "Group" Then
                                BadGroupHandle
                                ifier = False
                                Exit Function
                        Else
                                var(i) = p
                        End If
                Else
                        GlobalVar what$, p
                End If
                 ifier = True
        Case 3
               
                If par Then
                        If Uni(f) Then
                                getUniStringComma f, s$
                        Else
                                getAnsiStringComma f, s$
                        End If
                Else
                 prive = GetCode(scr)
                If players(prive).lastprint Then
                LCTbasket scr, players(prive), players(prive).currow, players(prive).curpos
                players(prive).lastprint = False
                End If
                        QUERY bstack, frm$, s$, 256, False, IIf(MaybeIsSymbol(rest$, ","), ",", vbCr), IIf(MaybeIsSymbol(rest$, ","), Chr$(0), ",")
                End If
                If GetVar(bstack, what$, i) Then
                        CheckVar var(i), s$
                Else
                        GlobalVar what$, s$
                End If
                 ifier = True
    Case 4
               
                If par Then
                        If Uni(f) Then
                                getUniRealComma f, p
                        Else
                                Input #f, p
                        End If
                Else
                                prive = GetCode(scr)
                If players(prive).lastprint Then
                LCTbasket scr, players(prive), players(prive).currow, players(prive).curpos
                players(prive).lastprint = False
                End If
                        w$ = QUERY(bstack, frm$, s$, 256, False, IIf(MaybeIsSymbol(rest$, ","), ",", vbCr), "+*/!.@#$|\{}[]'~`%^&()=_:;", True)
                       If Not IsNumber(bstack, s$, p) Then ErrNum: ifier = False: Exit Function
                        If Trim(s$) <> "," And Trim(s$) <> "" Then ErrNum: ifier = False: Exit Function
                End If
                If GetVar(bstack, what$, i) Then
                        var(i) = Int(p)
                Else
                        GlobalVar what$, Int(p)
                End If
                 ifier = True
    Case 5
                If neoGetArray(bstack, what$, pppp) Then
                        If Not NeoGetArrayItem(pppp, bstack, what$, it, rest$) Then Exit Function
                Else
                MyEr "No such array", "��� ������� ������� �������"
                        Exit Function
                End If
                ifier = True
                If par Then
                        If Uni(f) Then
                                getUniRealComma f, p
                        Else
                                Input #f, p
                        End If
                Else
              prive = GetCode(scr)
                If players(prive).lastprint Then
                LCTbasket scr, players(prive), players(prive).currow, players(prive).curpos
                players(prive).lastprint = False
                End If
                        w$ = QUERY(bstack, frm$, s$, 256, False, IIf(MaybeIsSymbol(rest$, ","), ",", vbCr), "+*/!@#$|\{}[]'~`%^&()=_:;", True)
                        If Not IsNumber(bstack, s$, p) Then ErrNum: ifier = False: Exit Function
                        If Trim(s$) <> "," And Trim(s$) <> "" Then ErrNum: ifier = False: Exit Function
                End If
                pppp.item(it) = p
                 ifier = True
    Case 6
                If neoGetArray(bstack, what$, pppp) Then
                       If Not NeoGetArrayItem(pppp, bstack, what$, it, rest$) Then Exit Function
                Else
                 MyEr "No such array", "��� ������� ������� �������"
                       Exit Function
                End If
                ifier = True
                If par Then
                        If Uni(f) Then
                                getUniStringComma f, s$
                        Else
                                Input #f, s$
                        End If
                Else
                           prive = GetCode(scr)
                If players(prive).lastprint Then
                LCTbasket scr, players(prive), players(prive).currow, players(prive).curpos
                players(prive).lastprint = False
                End If
                        QUERY bstack, frm$, s$, 256, False, IIf(MaybeIsSymbol(rest$, ","), ",", vbCr), IIf(MaybeIsSymbol(rest$, ","), Chr$(0), ",")
                End If
                If Typename(pppp.item(it)) = doc Then
                Set pppp.item(it) = New Document
                        If s$ <> "" Then pppp.item(it).textDoc = s$
                Else
                        pppp.item(it) = s$
                End If
                 ifier = True
    Case 7
                If neoGetArray(bstack, what$, pppp) Then
                        If Not NeoGetArrayItem(pppp, bstack, what$, it, rest$) Then Exit Function
                Else
                        MyEr "No such array", "��� ������� ������� �������"
                        Exit Function
                End If
                If par Then
                        If Uni(f) Then
                                getUniRealComma f, p
                        Else
                                Input #f, p
                        End If
                Else
                           prive = GetCode(scr)
                If players(prive).lastprint Then
                LCTbasket scr, players(prive), players(prive).currow, players(prive).curpos
                players(prive).lastprint = False
                End If
                        w$ = QUERY(bstack, frm$, s$, 256, False, IIf(MaybeIsSymbol(rest$, ","), ",", vbCr), "+*/!@#$|\{}[.]'~`%^&()=_:;", True)
                         If Not IsNumber(bstack, s$, p) Then ErrNum: ifier = False: Exit Function
                        If Trim(s$) <> "," And Trim(s$) <> "" Then ErrNum: ifier = False: Exit Function
                End If
                pppp.item(it) = Int(p)
                ifier = True
    End Select
    
                If FastSymbol(rest$, ",") Then
                w$ = ""
                If Not par Then frm$ = " "
                ElseIf FastSymbol(rest$, ";") Then
                If Not par Then
               
                                 w$ = ";"
                                frm$ = " "
                   End If
                Else
                If Not par Then If Not w$ = ";" Then crNew bstack, players(prive)
                w$ = ""
                Exit Function
                End If
                
                Loop
                FKey = 0
                Exit Function
                End With
Case "������", "THREADS"
procthreads scr, bstack, rest$, Lang
Exit Function
Case "���������", "SETTINGS"
TweakLang = Lang
it = scr.FontItalic
scr.FontItalic = 0
notweak = True
    If Not Form1.Visible Then
    TweakForm.Show , Form5
    Else
    TweakForm.Show 1, Form1
    End If


    If Not notweak Then
Form1.myBreak bstack
Original bstack, ""
Else
 scr.FontItalic = it
End If
Case "��������", "PROFILER"
prof.MARKONE

Case "WAIT", "�������"
If IsExp(bstack, rest$, p) Then
mywait bstack, p
Else
mywait bstack, 0
End If
Case "�����", "PLAY"

If IsExp(bstack, rest$, p) Then
    If p = 0 Then
    TaskMaster.MusicTaskNum = 0
    TaskMaster.OnlyMusic = True
    Do
    TaskMaster.TimerTickNow
    Loop Until TaskMaster.PlayMusic = False
    TaskMaster.OnlyMusic = False   '' forget it in revision 130
   mute = True
    Else
    mute = False
    If FastSymbol(rest$, ",") Then
        If IsExp(bstack, rest$, sx) Then
          If sx < 1 Then
          sx = 0
          Do While TaskMaster.ThrowOne(CLng(p))
          sx = sx - 1
          If sx < -100 Then Exit Do
          Loop
          Else
          Set task = New MusicBox
          Set task.Owner = Form1.DIS
         
          task.Parameters CLng(p), CLng(sx)
          TaskMaster.MusicTaskNum = TaskMaster.MusicTaskNum + 1
          TaskMaster.AddTask task
          End If
          Do While FastSymbol(rest$, ",")
           I3 = False
        If IsExp(bstack, rest$, p) Then
             If FastSymbol(rest$, ",") Then
                If IsExp(bstack, rest$, sx) Then
                If sx < 1 Then
                        sx = 0
                        Do While TaskMaster.ThrowOne(CLng(p))
                        sx = sx - 1
                        If sx < -100 Then Exit Do
                        Loop
                  Else
                    Set task = New MusicBox
                    Set task.Owner = Form1.DIS
                    task.Parameters CLng(p), CLng(sx)
                    TaskMaster.MusicTaskNum = TaskMaster.MusicTaskNum + 1
                     TaskMaster.AddTask task
              End If
                I3 = True
                 End If
            End If
        End If
        If I3 = False Then
          mute = True
        Exit Do
        End If
          Loop
       ' TaskMaster.AddTask TASK
       ' TaskMaster.StartProcess
        End If
    End If
    End If
Else
'Set PHOTO = Nothing
I3 = False
End If
Exit Function
Case "SCORE", "����"
I3 = False
If IsExp(bstack, rest$, p) Then
If p >= 1 And p <= 16 Then
If FastSymbol(rest$, ",") Then
If IsExp(bstack, rest$, sx) Then
If FastSymbol(rest$, ",") Then
If IsStrExp(bstack, rest$, s$) Then
voices(p - 1) = s$
BEATS(p - 1) = sx
I3 = True
End If
End If
End If
End If
End If
End If
Exit Function
Case "TARGETS"
If IsLabelSymbolLatin(rest$, "NEW") Then
If Targets Then
Targets = False
End If
ReDim q(0) As target
End If
Case "������"
If IsLabelSymbol(rest$, "����") Then
If Targets Then
Targets = False
End If
ReDim q(0) As target
End If
Case "LATIN", "��������"
LATIN bstack
Exit Function
Case "GREEK", "��������"
GREEK bstack
Exit Function
Case "MODULES", "�������"
par = Lang = 1

frm$ = SubName$    ' Mid$(SubName$, 2)
s$ = ""
pa$ = ""
SS$ = ""
Do While ISSTRINGA(frm$, s$)
If InStr(s$, ChrW(&H1FFF)) > 0 Then
Else
If frm$ <> "" Then
    If InStrRev(s$, ")") > 0 Then
    
    pa$ = pa$ & Left$(s$, InStrRev(s$, ")") - 1) & ", "
    Else
    pa$ = pa$ & Left$(s$, InStrRev(s$, " ") - 1) & ", "
    End If
Else
    If InStrRev(s$, ")") > 0 Then
    pa$ = pa$ & Left$(s$, InStrRev(s$, ")") - 1)
    Else
    pa$ = pa$ & Left$(s$, InStrRev(s$, " ") - 1)
    End If
End If
End If
Loop

If pa$ <> "" Then
If HERE$ <> "" Then If FastSymbol(rest$, "?") Then GoTo ponly
If par Then

pa$ = "In Memory: " & pa$ & vbCrLf & "        Use REMOVE to remove the left most, EDIT module_name to edit"
Else
pa$ = "��� �����: " & pa$ & vbCrLf & "        �� �� �������� �� ������� �� ���������, �� �������� � � �����_�������� �� �������"
End If
If HERE$ = "" Then If FastSymbol(rest$, "?") Then GoTo ponly
End If
IsSymbol3 rest$, "?"

Set photo = New recDir
photo.IncludedFolders = False
photo.Nofiles = False
photo.TopFolder = mcd
photo.SortType = Abs(FastSymbol(rest$, "!"))
frm$ = ExtractNameOnly(photo.Dir2$(mcd, "GSB", False))

If frm$ <> "" Then
If pa$ <> "" Then pa$ = pa$ & vbCrLf
If par Then
pa$ = pa$ & "On Disk: "
Else
pa$ = pa$ & "���� �����: "
End If
End If
SS$ = ""
Do While frm$ <> ""
s$ = frm$
If SS$ <> "" Then SS$ = SS$ & ", " & s$ Else SS$ = s$
s$ = photo.Dir2
If s$ <> "" Then frm$ = ExtractNameOnly(s$) Else frm$ = ""

Loop
Set photo = Nothing
pa$ = pa$ & SS$
If SS$ <> "" Then
If HERE$ = "" Then
If par Then
pa$ = pa$ & vbCrLf + ReplaceStr$("'", Chr(34), "        Use LOAD 'module_name' to load, EDIT 'module_name.gsb' to edit on disk")
If IsSupervisor Then pa$ = pa$ & ", WIN DIR$ for folders tasks"
Else
pa$ = pa$ & vbCrLf + ReplaceStr$("'", Chr(34), "        �� ������� �����_�������� ��������� ��� �����, �� � � �������� '�����_��������.gsb' ���������� ��� �����")
If IsSupervisor Then pa$ = pa$ & ", �� ������� ���$ �������� ��� �������� �� �� ������ ��� ��������"
End If
End If
End If
' PRINT ONLY
ponly:
RepPlain bstack, scr, pa$
Exit Function
Case "DRAWINGS", "������"
Set photo = New recDir
photo.IncludedFolders = False
photo.Nofiles = False
par = (myUcase(what$) = "DRAWINGS")
photo.TopFolder = mcd
photo.SortType = Abs(FastSymbol(rest$, "!"))
frm$ = ExtractNameOnly(photo.Dir2$(mcd, "WMF", False))

s$ = ""
pa$ = ""
SS$ = ""
Do While frm$ <> ""
s$ = frm$
If SS$ <> "" Then SS$ = SS$ & ", " & s$ Else SS$ = s$
s$ = photo.Dir2
If s$ <> "" Then frm$ = ExtractNameOnly(s$) Else frm$ = ""
Loop

If par Then
pa$ = "Drawings: " & SS$
Else
pa$ = "������: " & SS$
End If
Set photo = Nothing
RepPlain bstack, scr, pa$
Exit Function
Case "BITMAPS", "�������"
Set photo = New recDir
photo.IncludedFolders = False
photo.Nofiles = False
photo.TopFolder = mcd
photo.SortType = Abs(FastSymbol(rest$, "!"))
frm$ = ExtractNameOnly(photo.Dir2$(mcd, "BMP", False))
par = (myUcase(what$) = "BITMAPS")
s$ = ""
pa$ = ""
SS$ = ""
Do While frm$ <> ""
s$ = frm$
If SS$ <> "" Then SS$ = SS$ & ", " & s$ Else SS$ = s$
s$ = photo.Dir2
If s$ <> "" Then frm$ = ExtractNameOnly(s$) Else frm$ = ""
Loop
If par Then
pa$ = "Bitmaps: " & SS$
Else
pa$ = "�������: " & SS$
End If
Set photo = Nothing
RepPlain bstack, scr, pa$
Exit Function
Case "MOVIES", "�������"
Set photo = New recDir
photo.IncludedFolders = False
photo.Nofiles = False
photo.TopFolder = mcd
photo.SortType = Abs(FastSymbol(rest$, "!"))
frm$ = ExtractNameOnly(photo.Dir2$(mcd, "AVI", False))
par = (myUcase(what$) = "MOVIES")

s$ = ""
pa$ = ""
SS$ = ""
Do While frm$ <> ""
s$ = frm$
If SS$ <> "" Then SS$ = SS$ & ", " & s$ Else SS$ = s$
s$ = photo.Dir2
If s$ <> "" Then frm$ = ExtractNameOnly(s$) Else frm$ = ""
Loop
Set photo = Nothing
If par Then
pa$ = "Movies: " & SS$
Else
pa$ = "�������: " & SS$
End If
RepPlain bstack, scr, pa$
Exit Function
Case "SOUNDS", "����"
Set photo = New recDir
photo.IncludedFolders = False
photo.Nofiles = False
photo.TopFolder = mcd
photo.SortType = Abs(FastSymbol(rest$, "!"))
frm$ = ExtractNameOnly(photo.Dir2$(mcd, "WAV", False))

par = (myUcase(what$) = "SOUNDS")
s$ = ""
pa$ = ""
SS$ = ""

Do While frm$ <> ""
s$ = frm$
If SS$ <> "" Then SS$ = SS$ & ", " & s$ Else SS$ = s$
s$ = photo.Dir2
If s$ <> "" Then frm$ = ExtractNameOnly(s$) Else frm$ = ""
Loop
If par Then
pa$ = "Sounds: " & SS$
Else
pa$ = "����: " & SS$
End If
Set photo = Nothing
RepPlain bstack, scr, pa$
Exit Function
Case "WRITER", "����������"
prive = GetCode(scr)
If scr.Font.charset <> 161 Then
PlainBaSket scr, players(prive), "George Karras (C), Kanalaki, Greece 1999-2014"
Else
PlainBaSket scr, players(prive), "������� ������ (C), ��������, ������ 1999-2014"
End If
crNew bstack, players(prive)
Case "FILES", "������"
Set photo = New recDir
photo.IncludedFolders = False
photo.Nofiles = False
photo.TopFolder = mcd
photo.SortType = Abs(FastSymbol(rest$, "!")) + Abs(FastSymbol(rest$, "!"))

s$ = ""
pa$ = ""

par = Lang = 1
i = FastSymbol(rest$, "+")
If FastSymbol(rest$, "*") Then
SS$ = "*"
ElseIf Not IsStrExp(bstack, rest$, SS$) Then
SS$ = "TXT"
Else
SS$ = myUcase$(SS$)
End If
stac1 = ""
If FastSymbol(rest$, ",") Then
' SEARCH INSIDE FILE
If Not IsStrExp(bstack, rest$, stac1$) Then SyntaxError: Exit Function
End If

If InStr(SS$, "?") > 0 Or InStr(SS$, "*") > 0 Then
photo.Pattern = SS$
frm$ = mylcasefILE$(photo.Dir2$(mcd, "", False))
'frm$ = mylcasefILE$(Dir(mcd + mylcasefILE(sS$)))
Else
frm$ = mylcasefILE$(photo.Dir2$(mcd, SS$, False))
'frm$ = mylcasefILE$(Dir(mcd & "*." & sS$))
End If

If i = False Then
    If frm$ <> "" Then
        If par Then
            If stac1 <> "" Then
            pa$ = "Files " & SS$ & " with text " & Chr(34) + stac1 + Chr(34) & " :  "
            Else
            pa$ = "Files " & SS$ & ": "
            End If
        Else
            If stac1 <> "" Then
            pa$ = "������ " & SS$ & " �� ������� " & Chr(34) + stac1 + Chr(34) & " :  "
            
            Else
            pa$ = "������ " & SS$ & ": "
            End If
        End If
    End If
Else
   ' Form1.List2.clear
End If
SS$ = ""
Do While frm$ <> ""
MyDoEvents

If Right$(" " & photo.Pattern, 1) <> "*" Then
s$ = ExtractNameOnly(Included(mcd + frm$, stac1))
Else
s$ = Included(mcd + frm$, stac1)
End If
If s$ <> "" Then
If i Then
If Right$(" " & photo.Pattern, 1) <> "*" Then
Form1.List1.additem s$
Else
Form1.List1.additem s$
End If
Else

If SS$ <> "" Then SS$ = SS$ & ", " & s$ Else SS$ = s$
End If
End If
s$ = photo.Dir2
If s$ <> "" Then frm$ = s$ Else frm$ = ""
Loop
Set photo = Nothing
If i = False Then
RepPlain bstack, scr, pa$ + SS$
End If
Case "CAT", "���������", "���"
Set photo = New recDir
photo.IncludedFolders = True
photo.Nofiles = True
photo.TopFolder = mcd
photo.LevelStop = 1
photo.SortType = Abs(FastSymbol(rest$, "!")) + Abs(FastSymbol(rest$, "!"))

s$ = ""
pa$ = ""

par = Lang = 1
i = FastSymbol(rest$, "+")
If FastSymbol(rest$, "*") Then
SS$ = "*"
ElseIf Not IsStrExp(bstack, rest$, SS$) Then
SS$ = ""
Else
SS$ = myUcase$(SS$)
End If
stac1 = ""

If InStr(SS$, "?") > 0 Or InStr(SS$, "*") > 0 Then
photo.Pattern = SS$
frm$ = mylcasefILE$(photo.Dir2$(mcd, "", False))

Else
frm$ = mylcasefILE$(photo.Dir2$(mcd, SS$, False))

End If

If i = False Then
    If frm$ <> "" Then
        If par Then
            pa$ = "Folders " & SS$ & ": "
        Else
            pa$ = "��������� " & SS$ & ": "
        End If
    End If
Else
   ' Form1.List2.clear
End If
SS$ = ""
col = Len(mcd)
Do While frm$ <> ""
MyDoEvents

''If Right$(" " & photo.Pattern, 1) <> "*" Then
s$ = Mid$(frm$, col + 2)

''Else
''s$ = Included(mcd + frm$, stac1)
''End If
If s$ <> "" Then
If i Then
''If Right$(" " & photo.Pattern, 1) <> "*" Then
''Form1.List1.additem s$
''Else
Form1.List1.additem s$
''End If
Else
If InStr(s$, " ") > 0 Then s$ = Chr(34) + s$ + Chr(34)
If SS$ <> "" Then SS$ = SS$ & ", " & s$ Else SS$ = s$
End If
End If
s$ = photo.Dir2
If s$ <> "" Then frm$ = s$ Else frm$ = ""
Loop
Set photo = Nothing
If i = False Then RepPlain bstack, scr, pa$ + SS$
Case "LIST", "�����"
If FastSymbol(rest$, "!") Then
MyList bstack, -2  ' proportional
ElseIf IsExp(bstack, rest$, p) Then
MyList bstack, CLng(p)
Else
MyList bstack
End If
''If Not extreme Then If Not bstack.toprinter Then
MyDoEvents1 scr
Exit Function

Case "��������", "POLYGON"
If IsExp(bstack, rest$, p) Then
col = p
End If
If Not FastSymbol(rest$, ",") Then SyntaxError: ifier = False: Exit Function
If IsLabelSymbolNew(rest$, "�����", "ANGLE", Lang) Then par = True
scr.FillStyle = vbSolid
scr.FillColor = mycolor(col)
f = 32
ReDim PLG(f)
x1 = 1
With players(GetCode(scr))
PLG(0).x = scr.ScaleX(.XGRAPH, 1, 3)
PLG(0).y = scr.ScaleY(.YGRAPH, 1, 3)
Do
If x1 >= f Then f = f * 2: ReDim Preserve PLG(f)
If IsExp(bstack, rest$, p) Then
x = p

If Not FastSymbol(rest$, ",") Then SyntaxError: ifier = False: Exit Function
    If IsExp(bstack, rest$, p) Then
        If par Then
      
            sx = x / PI2
            sx = (sx - Fix(sx)) * PI2
            .XGRAPH = .XGRAPH + Cos(sx) * p
            .YGRAPH = .YGRAPH - Sin(sx) * p
        Else
            .XGRAPH = .XGRAPH + CLng(x)
            .YGRAPH = .YGRAPH + CLng(p)
        End If
        PLG(x1).x = scr.ScaleX(.XGRAPH, 1, 3)
        PLG(x1).y = scr.ScaleY(.YGRAPH, 1, 3)
    
    Else
         MissNumExpr
        ifier = False: Exit Function
    End If
Else
MissNumExpr
ifier = False: Exit Function
End If

x1 = x1 + 1
Loop Until Not FastSymbol(rest$, ",")
x1 = x1 - 1
If Polygon(scr.hDC, PLG(0), x1) = 0 Then
ifier = True: BadGraphic: Exit Function
End If
scr.FillStyle = vbSolid
End With
MyDoEvents1 scr
''LCT scr, .currow, .curpos
Case "CIRCLE", "������" ' LINE X1,Y1,COL
par = False
If IsLabelSymbolNew(rest$, "�������", "FILL", Lang) Then
If IsExp(bstack, rest$, p) Then x = p
If Not FastSymbol(rest$, ",") Then MissNumExpr: ifier = False: Exit Function
par = True
End If
x1 = 0
y = 1
With players(GetCode(scr))
col = .mypen
If IsExp(bstack, rest$, p) Then x1 = p
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then y = p

If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then col = p Else MissNumExpr: ifier = False: Exit Function
sx = 0
sy = 0
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then sx = p Else MissNumExpr: ifier = False: Exit Function
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then sy = p Else MissNumExpr: ifier = False: Exit Function
sx = sx / PI2
sx = (sx - Fix(sx)) * PI2
sy = sy / PI2
sy = (sy - Fix(sy)) * PI2
scr.CurrentX = .XGRAPH
scr.CurrentY = .YGRAPH

If par Then
scr.FillStyle = vbSolid
scr.FillColor = mycolor(x)
If sx = sy Or Abs(sx - sy) + 0.0001 > PI2 Then
scr.Circle (.XGRAPH, .YGRAPH), x1, mycolor(col), , , y
Else
If sx = 0 Then sx = 0.0001
If sy = 0 Then sy = PI2
scr.Circle (.XGRAPH, .YGRAPH), x1, mycolor(col), -sx, -sy, y
End If


scr.FillStyle = 1
Else
scr.FillStyle = 1
scr.Circle (.XGRAPH, .YGRAPH), x1, mycolor(col), sx, sy, y

End If
End With
MyDoEvents1 scr
''LCT scr, .currow, .curpos
Case "PLAYER", "�������"
If IsExp(bstack, rest$, p) Then
    If p = 0 Then   ' ZERO CLEAR ALL HARDWARE SPRITES
        ClrSprites
        ifier = True
        Exit Function
    End If
    ' VALIDATION
    If p < 1 Or p > 32 Then SyntaxError: ifier = False: Exit Function
    it = FindSpriteByTag(CLng(p))
    ' COMMANDS OR PARAMMETERS
    ' COMMANDS show, hide and swap
    If FastSymbol(rest$, ",") Then
        If Not IsExp(bstack, rest$, x) Then  ' get new left or leave it empty
            If it = 0 Then
                x = 0
            Else
                x = Form1.dSprite(it).Left + players(it).x
            End If
            If FastSymbol(rest$, ",") Then
                If Not IsExp(bstack, rest$, y) Then MissNumExpr: ifier = False: Exit Function
            Else
                MissNumExpr
                ifier = False: Exit Function
            End If
        Else
            If FastSymbol(rest$, ",") Then   ' so ,, is "stay X where you are
                If Not IsExp(bstack, rest$, y) Then MissNumExpr: ifier = False: Exit Function
            Else
                If it = 0 Then
                    y = 0
                Else
                    y = Form1.dSprite(it).top + players(it).y
                End If
            End If
        End If
        If IsLabelSymbolNew(rest$, "��", "USE", Lang) Then ' no need for coma
            Select Case Abs(IsLabel(bstack, rest$, what$))
            Case 3
                If GetVar(bstack, what$, i) Then s$ = var(i)
            Case 6
                If neoGetArray(bstack, what$, pppp) Then
                    
                    If Not NeoGetArrayItem(pppp, bstack, what$, it, rest$) Then
MissNumExpr
ifier = True: Exit Function
                    End If
                Else
                    MissNumExpr
                    ifier = False: Exit Function
                End If
                s$ = pppp.item(it)  ' get the sprite image
            Case Else
                MissNumExpr
                ifier = False: Exit Function
            End Select
            col = rgb(255, 255, 255)
            sx = 0
            If FastSymbol(rest$, ",") Then  ' get image manipulators..
                    If IsExp(bstack, rest$, sy) Then
                     col = CLng(sy)
                     If col > 0 Then col = QBColor(col Mod 16) Else col = -col
                     ElseIf IsStrExp(bstack, rest$, frm$) Then
                     '' maybe is a mask
                     
                     col = 0
                     Else
                     ifier = False: MissNumExpr: Exit Function
                    End If
                     
                        If FastSymbol(rest$, ",") Then
                            If IsExp(bstack, rest$, sx) Then
                          
                               Else
                            MissNumExpr
                            ifier = False: Exit Function
                            End If
                        Else
                
                        End If
                    
              End If
              If FastSymbol(rest$, ",") Then
                            If IsExp(bstack, rest$, sxy) Then
                        
                               Else
                            MissNumExpr
                            ifier = False: Exit Function
                            End If
                        Else
                
                        End If
                   If IsLabelSymbolNew(rest$, "�������", "SIZE", Lang) Then
              If Not IsExp(bstack, rest$, sy) Then ifier = False: MissNumExpr: Exit Function
              Else
              sy = 1
              End If
              ' so col, sx and sy are image manipulators
            it = GetNewSpriteObj(CLng(p), s$, col, CLng(sx), CSng(sy), CSng(sxy), frm$)
          
            PosSprite CLng(p), x - players(it).x, y - players(it).y
        Else ' without USE
         PosSprite CLng(p), x - players(it).x, y - players(it).y
        End If
        Else ' without x, y
            If IsLabelSymbolNew(rest$, "��", "USE", Lang) Then
        Select Case Abs(IsLabel(bstack, rest$, what$))
        Case 3
            If GetVar(bstack, what$, i) Then s$ = var(i)
        Case 6
             If neoGetArray(bstack, what$, pppp) Then
   
                If Not NeoGetArrayItem(pppp, bstack, what$, it, rest$) Then
                     ifier = False: MissNumExpr: Exit Function
                End If
            Else
                 ifier = False: MissNumExpr: Exit Function
            End If
            s$ = pppp.item(it)
        Case Else
             ifier = False: MissNumExpr: Exit Function
        End Select
        col = rgb(255, 255, 255)
        sx = 0
        If FastSymbol(rest$, ",") Then
        If IsExp(bstack, rest$, sy) Then
                     col = CLng(sy)
                     If col > 0 Then col = QBColor(col) Else col = -col
                     ElseIf IsStrExp(bstack, rest$, frm$) Then
                     '' maybe is a mask
                     
                     col = 0
                     Else
                     ifier = False: MissNumExpr: Exit Function
                    End If
                     
                        If FastSymbol(rest$, ",") Then
                            If IsExp(bstack, rest$, sx) Then
                          
                               Else
                            MissNumExpr
                            ifier = False: Exit Function
                            End If
                        Else
                
                        End If
                    
        
        
        
        
        
        
        
            
        End If
        If FastSymbol(rest$, ",") Then
                            If IsExp(bstack, rest$, sxy) Then
                        
                               Else
                            MissNumExpr
                            ifier = False: Exit Function
                            End If
                        Else
                
                        End If
        If IsLabelSymbolNew(rest$, "�������", "SIZE", Lang) Then          ' SIZE WITHOUT COMMA
            If Not IsExp(bstack, rest$, sy) Then ifier = False: MissNumExpr: Exit Function
        Else
            sy = 1
        End If

        it = GetNewSpriteObj(CLng(p), s$, col, CLng(sx), CSng(sy), CSng(sxy), frm$)
        ' no USE no X, Y or X,Y USE ..
        ' only command
        ElseIf IsLabelSymbolNew(rest$, "�����", "SHOW", Lang) Then     ' SHOW
            SrpiteHideShow p, (True)
        ElseIf IsLabelSymbolNew(rest$, "�����", "HIDE", Lang) Then        ' HIDE
            SrpiteHideShow p, (False)
        ElseIf IsLabelSymbolNew(rest$, "������", "SWAP", Lang) Then       ' SWAP
            If IsExp(bstack, rest$, x) Then
                SpriteControl CLng(p), CLng(x)
            Else
                ifier = False
            End If
        End If
    End If
End If
ifier = True
Exit Function

Case "IMAGE", "������"
If IsStrExp(bstack, rest$, s$) Then
    x1 = 0
    y1 = 0
    If Not (Left$(s$, 4) = "cDIB" And Len(s$) > 12) Then If ExtractType(s$) = "" Then s$ = s$ + ".bmp"
    If IsLabelSymbolNew(rest$, "���", "TO", Lang) Then
        If CFname(s$) <> "" Or (Left$(s$, 4) = "cDIB" And Len(s$) > 12) Then
            Select Case Abs(IsLabel(bstack, rest$, w$))
            Case 3
                If GetVar(bstack, w$, it) Then
                    Set photo = New cDIBSection
                    If CFname(s$) <> "" Then
                    s$ = CFname(s$)
                    On Error GoTo 0
                        photo.CreateFromPicture LoadPicture(GetDosPath(s$))
                         photo.GetDpi 96, 96
                CheckOrientation photo, s$
                        If photo.bitsPerPixel <> 24 Then Conv24 photo
                        
                        If photo.Width = 0 Then
                            Set photo = Nothing
                            MissCdib
                             ifier = False: Exit Function
                        End If
                        ' load the bitmap to string
             ''           var(IT) = DIBtoSTR(photo)
              ''          Set photo = Nothing
                 ''       Exit Function
                    ElseIf Not cDib(s$, photo) Then
                        Set photo = Nothing
                        MissCdibStr
                         Exit Function
                    End If
                    x1 = photo.Width
                    y1 = photo.Height
                    If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then x1 = x1 * p / 100#: y1 = y1 * p / 100#
                    If FastSymbol(rest$, ",") Then
                        If IsExp(bstack, rest$, p) Then
                            y1 = photo.Height * p / 100#
                        Else
                            Set photo = Nothing
                         ifier = False: MissNumExpr: Exit Function
                        End If
                    End If
                    If photo.Width > 0 Then
                    ' SLEEP 1
                    'resample bitmap
                    Set photo = photo.Resample(Abs(y1), Abs(x1))
                        var(it) = DIBtoSTR(photo)
                    End If
                    Set photo = Nothing
                    Exit Function
                Else
                ifier = False
                If w$ <> "" Then
                Nosuchvariable w$
                Else
            MissingStrVar
                     End If
                End If
                Exit Function
            Case 6
    ' ��� ������
                Dim W5 As Long
                
                If neoGetArray(bstack, w$, pppp) Then
                       
                        If Not NeoGetArrayItem(pppp, bstack, w$, W5, rest$) Then ifier = False: MissNumExpr: Exit Function
                     Set photo = New cDIBSection
                    If CFname(s$) <> "" Then
                    s$ = CFname(s$)
                        photo.CreateFromPicture LoadPicture(GetDosPath(s$))
                         
                        If photo.bitsPerPixel <> 24 Then
                        Conv24 photo
                        Else
                        CheckOrientation photo, s$
                        End If
                        If photo.Width = 0 Then
                            Set photo = Nothing
                             ifier = False: MissNumExpr: Exit Function
                        End If
                        ' load the bitmap to string array
                        If IsObject(pppp.item(W5)) Then
                        ' this is an error.we cannot push binary data to Document
                        MyEr "can't copy image to " + Typename(pppp.item(W5)), "��� ����� �� ��������� ������ �� " + Typename(pppp.item(W5))
                        ifier = False
                        Else
                        pppp.item(W5) = DIBtoSTR(photo)
                        End If
                       
                        Set photo = Nothing
                        Exit Function
                    ElseIf Not cDib(s$, photo) Then
                        Set photo = Nothing
                         ifier = False: MissNumExpr: Exit Function
                    End If
                    x1 = photo.Width
                    y1 = photo.Height
                    If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then x1 = x1 * p / 100#: y1 = y1 * p / 100#
                    If FastSymbol(rest$, ",") Then
                        If IsExp(bstack, rest$, p) Then
                            y1 = photo.Height * p / 100#
                        Else
                            Set photo = Nothing
                         ifier = False: MissNumExpr: Exit Function
                        End If
                    End If
                    If photo.Width > 0 Then
                        'resample bitmap to string array
                        Set photo = photo.Resample(y1, x1)
                           If IsObject(pppp.item(W5)) Then
                        ' this is an error.we cannot push binary data to Document
                             MyEr "can't copy image to " + Typename(pppp.item(W5)), "��� ����� �� ��������� ������ �� " + Typename(pppp.item(W5))

                        ifier = False
                        Else
                        pppp.item(W5) = DIBtoSTR(photo)
                        End If
                    End If
                    Set photo = Nothing
                    Exit Function
                Else
                     ifier = False: MissNumExpr: Exit Function
                End If
            End Select
        Else
        MyEr "file missing " & s$, "������ �� ������ ������� " & s$
        ifier = False
        Exit Function
        End If
    ElseIf IsLabelSymbolNew(rest$, "�������", "EXPORT", Lang) Then
        If IsStrExp(bstack, rest$, w$) Then
            If Not CanKillFile(w$) Then FilePathNotForUser:  Exit Function
           Set photo = New cDIBSection
           If cDib(s$, photo) Then
                If FastSymbol(rest$, ",") Then
                    If IsExp(bstack, rest$, p) Then
                        x1 = (Abs(p) - 1) Mod 100 + 1
                        
                        SaveJPG photo, ExtractPath(w$) + ExtractNameOnly(w$) & ".jpg", x1
                     Else
                        Set photo = Nothing
                         ifier = False: MissNumExpr: Exit Function
                    End If
                Else
                    photo.SaveDib ExtractPath(w$) + ExtractNameOnly(w$) & ".bmp"
                End If
            Else
                Set photo = Nothing
                 ifier = False: MissNumExpr: Exit Function
            End If
            Set photo = Nothing
            Exit Function
        Else
             ifier = False: MissNumExpr: Exit Function
        End If
    Else
        If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then x1 = p
        If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then y1 = p Else ifier = False: MissNumExpr: Exit Function
        SImage scr, x1, y1, s$
    End If
End If
Case "SPRITE", "�������", "���������"
            If IsStrExp(bstack, rest$, s$) Then
            sprite bstack, s$, rest$
           MyDoEvents1 scr
End If
Case "COPY", "���������", "���������"
            x1 = 0
            y1 = 0
            Dim x2 As Long, y2 As Long
            If IsStrExp(bstack, rest$, s$) Then
            On Error Resume Next
            If ExtractType(s$) = "" Then s$ = s$ + ".bmp"
            FixPath s$
            If Not CanKillFile(s$) Then FilePathNotForUser:  Exit Function
            Set photo = New cDIBSection
            photo.CopyPicture scr
            photo.SaveDib s$
            Set photo = Nothing
            Exit Function
Else
If IsExp(bstack, rest$, p) Then x1 = p
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then y1 = p

If IsLabelSymbolNew(rest$, "���", "TO", Lang) Then
Select Case Abs(IsLabel(bstack, rest$, s$))
Case 3
    If GetVar(bstack, s$, it) Then
    
    Set photo = New cDIBSection
    With players(GetCode(scr))
    x1 = scr.ScaleX(x1 + .XGRAPH, 1, 3) - scr.ScaleX(.XGRAPH, 1, 3)
    y1 = scr.ScaleX(y1 + .YGRAPH, 1, 3) - scr.ScaleX(.YGRAPH, 1, 3)
    If photo.Create(CLng(x1), CLng(y1)) Then
    photo.LoadPictureBlt scr.hDC, CLng(scr.ScaleX(.XGRAPH, 1, 3)), CLng(scr.ScaleX(.YGRAPH, 1, 3))
    
    If photo.bitsPerPixel <> 24 Then Conv24 photo
    
    var(it) = DIBtoSTR(photo)
    ' DOSE OK
    End If
    End With
     Set photo = Nothing
    Exit Function
    Else
    what$ = s$
    I3 = False
    Exit Function
    End If
Case 6
    ' ��� ������
    Dim W6 As Long
    If neoGetArray(bstack, s$, pppp) Then
           If Not NeoGetArrayItem(pppp, bstack, s$, W6, rest$) Then Exit Function
    
    
      Set photo = New cDIBSection
      With players(GetCode(scr))
    x1 = scr.ScaleX(x1 + .XGRAPH, 1, 3) - scr.ScaleX(.XGRAPH, 1, 3)
    y1 = scr.ScaleX(y1 + .YGRAPH, 1, 3) - scr.ScaleX(.YGRAPH, 1, 3)
    If photo.Create(CLng(x1), CLng(y1)) Then
            photo.LoadPictureBlt scr.hDC, CLng(scr.ScaleX(.XGRAPH, 1, 3)), CLng(scr.ScaleX(.YGRAPH, 1, 3))

            If photo.bitsPerPixel <> 24 Then Conv24 photo
               If IsObject(pppp.item(W6)) Then
                          MyEr "can't copy image to " + Typename(pppp.item(W6)), "��� ����� �� ��������� ������ �� " + Typename(pppp.item(W6))
 ifier = False
                        Else
                        pppp.item(W6) = DIBtoSTR(photo)
                        End If
            ' DOSE OK
        End If
            End With
       Set photo = Nothing

        Exit Function
    
        Else
    what$ = s$
    I3 = False
    Exit Function
    End If

End Select
ElseIf IsLabelSymbolNew(rest$, "��", "USE", Lang) Then

If IsStrExp(bstack, rest$, s$) Then
 Set photo = New cDIBSection

If cDib(s$, photo) Then
x2 = 0
    If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then x2 = p
    If y2 = 0 Then y2 = 100
    If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then y2 = p Else y2 = 100
    If x2 = 0 Then
    If y2 = 100 Then
 photo.PaintPicture scr.hDC, CLng(scr.ScaleX(x1, 1, 3)), CLng(scr.ScaleX(y1, 1, 3))
''      photo.StretchPicture scr.hDC, CLng(scr.ScaleX(x1, 1, 3)), CLng(scr.ScaleX(y1, 1, 3))  ', photo.Width * y2 \ 100, photo.Height * y2 \ 100

    Else
        photo.StretchPicture scr.hDC, CLng(scr.ScaleX(x1, 1, 3)), CLng(scr.ScaleX(y1, 1, 3)), photo.Width * y2 \ 100, photo.Height * y2 \ 100
        End If
     ' UpdateWindow scr.hwnd
    Else
  ''  RotateDib bstack, photo, x2, y2, scr.BackColor  ' players(GetCode(scr)).Paper
     RotateDib1 bstack, photo, x2, y2, scr.BackColor '', CLng(x1), CLng(y1)
      photo.PaintPicture scr.hDC, CLng(scr.ScaleX(x1, 1, 3)), CLng(scr.ScaleX(y1, 1, 3))
 ''       photo.StretchPicture scr.hDC, CLng(scr.ScaleX(x1, 1, 3)), CLng(scr.ScaleX(y1, 1, 3)) '' , photo.Width * y2 \ 100, photo.Height * y2 \ 100
      '  UpdateWindow scr.hwnd
    End If
End If
Set photo = Nothing




Else
 ifier = False: MissNumExpr: Exit Function
End If
ElseIf IsLabelSymbolNew(rest$, "�����", "TOP", Lang) Then

If IsStrExp(bstack, rest$, s$) Then
 Set photo = New cDIBSection

If cDib(s$, photo) Then
x2 = 0
    If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then x2 = p
    If y2 = 0 Then y2 = 100
    If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then y2 = p Else y2 = 100
    

     RotateDib1 bstack, photo, x2, y2, , CLng(x1), CLng(y1)
       
        photo.PaintPicture scr.hDC, MyRound((scr.ScaleX(x1, 1, 3)), 0), MyRound((scr.ScaleX(y1, 1, 3)), 0) '', photo.Width * y2 \ 100, photo.Height * y2 \ 100
     
 
End If
Set photo = Nothing

Else
 ifier = False: MissNumExpr: Exit Function
End If
Else
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then x2 = p

If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then y2 = p Else ifier = False: MissNumExpr: Exit Function

If x2 = 0 Or y2 = 0 Then ifier = False: MissNumExpr: Exit Function
ICOPY scr, x1, y1, x2, y2
End If
End If
MyDoEvents1 scr
'' LCT scr, .currow, .curpos
Case "FRAME", "�������" ' BOX X1,Y1,COL,BOX
prive = GetCode(scr)
With players(prive)
x1 = 1
y1 = 1
col = .mypen
If FastSymbol(rest$, "@") Then
If FastSymbol(rest$, "(") Then
    If IsExp(bstack, rest$, p) Then x1 = Abs(p + .curpos) Mod (.mx + 1)
    If Not FastSymbol(rest$, ")") Then MissSymbol rest$, ")": Exit Function
Else
    If IsExp(bstack, rest$, p) Then x1 = Abs(p) Mod (.mx + 1)
End If
If FastSymbol(rest$, ",") Then
    If FastSymbol(rest$, "(") Then
        If IsExp(bstack, rest$, p) Then y1 = Abs(p + .currow - 1) Mod (.My + 1)
        If Not FastSymbol(rest$, ")") Then MissSymbol rest$, ")": Exit Function
    
    Else
        If IsExp(bstack, rest$, p) Then y1 = Abs(p) Mod (.My + 1)
    End If
    '
    
End If
y = 5
If FastSymbol(rest$, ",") Then If Not IsExp(bstack, rest$, y) Then y = 5
If FastSymbol(rest$, ",") Then
If IsExp(bstack, rest$, x) Then
If FastSymbol(rest$, ",") Then
If IsExp(bstack, rest$, p) Then
MyRect scr, players(prive), (x1), (y1), (y), (x), (p)
Else
 ifier = False: MissNumExpr: Exit Function
End If
Else
MyRect scr, players(prive), (x1), (y1), (y), (x)
End If
ElseIf IsStrExp(bstack, rest$, SS$) Then
MyRect scr, players(prive), (x1), (y1), (y), SS$
Else
MyRect scr, players(prive), (x1), (y1), 5, "?"
End If
Else
MyRect scr, players(prive), (x1), (y1), 6, 0
End If
Else
If IsExp(bstack, rest$, p) Then x1 = Abs(p) Mod .mx
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then y1 = Abs(p) Mod .My

x1 = x1 + .curpos - 1
y1 = y1 + .currow - 1
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then BoxColorNew scr, players(prive), x1, y1, (p)


If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then col = p Else ifier = False: MissNumExpr: Exit Function


BoxBigNew scr, players(prive), x1, y1, col
End If
End With
MyDoEvents1 scr
Case "MARK", "������"
prive = GetCode(scr)
With players(prive)
x1 = 1
y1 = 1
col = .mypen
If IsExp(bstack, rest$, p) Then x1 = Abs(p) Mod .mx
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then y1 = Abs(p) Mod .My
x1 = x1 + .curpos - 1
y1 = y1 + .currow - 1
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then col = p

If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then par = Not (p = 0)

CircleBig scr, players(prive), x1, y1, col, par
End With
MyDoEvents1 scr
Case "LINE", "������"
ifier = False
If IsLabelSymbolNew(rest$, "���������", "INPUT", Lang) Then
If FastSymbol(rest$, "#") Then

    If Not IsExp(bstack, rest$, p) Then Exit Function
    If Not FastSymbol(rest$, ",") Then Exit Function
    f = p Mod 512
    Select Case Abs(IsLabel(bstack, rest$, what$))
    Case 3
    ifier = True
    If Uni(f) Then
    If Not getUniStringlINE(f, s$) Then ifier = False: MyEr "Can't input, not UTF16LE", "��� ����� �� ������, ��� UTF16LE": Exit Function
    Else
    getAnsiStringlINE f, s$
    End If
    If GetVar(bstack, what$, i) Then
    CheckVar var(i), s$
    Else
    GlobalVar what$, s$
    End If
    Case 6
    If neoGetArray(bstack, what$, pppp) Then

    If Not NeoGetArrayItem(pppp, bstack, what$, it, rest$) Then Exit Function
    Else
    Exit Function
    End If
    ifier = True
    If Uni(f) Then
    If Not getUniStringlINE(f, s$) Then ifier = False: MyEr "Can;t input, not UTF16LE", "��� ����� �� ������, ��� UTF16LE": Exit Function
    Else
    getAnsiStringlINE f, s$
    End If
    If Typename(pppp.item(it)) = doc Then
    Set pppp.item(it) = New Document
    If s$ <> "" Then pppp.item(it).textDoc = s$
    Else
    pppp.item(it) = s$
    End If
    End Select
Else
If Not releasemouse Then If Not Form1.Visible Then Form1.Visible = True
If bstack.toprinter = True Then oxiforPrinter:   Exit Function
Select Case Abs(IsLabel(bstack, rest$, what$))
Case 3
           prive = GetCode(scr)
                If players(prive).lastprint Then
                LCTbasket scr, players(prive), players(prive).currow, players(prive).curpos
                players(prive).lastprint = False
                End If
QUERY bstack, frm$, s$, 1000, False

                If GetVar(bstack, what$, i) Then
                        CheckVar var(i), s$
                Else
                        GlobalVar what$, s$
                End If
                 ifier = True
Case 6
If neoGetArray(bstack, what$, pppp) Then
                       If Not NeoGetArrayItem(pppp, bstack, what$, it, rest$) Then Exit Function
                Else
                 MyEr "No such array", "��� ������� ������� �������"
                       Exit Function
                End If
                           prive = GetCode(scr)
                If players(prive).lastprint Then
                LCTbasket scr, players(prive), players(prive).currow, players(prive).curpos
                players(prive).lastprint = False
                End If
QUERY bstack, frm$, s$, 1000, False

 If Typename(pppp.item(it)) = doc Then
                Set pppp.item(it) = New Document
                        If s$ <> "" Then pppp.item(it).textDoc = s$
                Else
                        pppp.item(it) = s$
                End If
                 ifier = True
End Select

End If


End If
Exit Function
Case "CURSOR", "�������" ' CURSOR X,Y
prive = GetCode(scr)
With players(prive)
If IsExp(bstack, rest$, p) Then
x1 = CLng(p) Mod 1000 '' Mod (.mx + 1)
If FastSymbol(rest$, ",") Then
If IsExp(bstack, rest$, p) Then
y1 = CLng(p) Mod 1000   ''Mod (.my + 1)
.curpos = x1
.currow = y1

Else
I3 = False
End If
Else
.curpos = x1
End If
Else
I3 = False
End If
.lastprint = False
End With
Case "STEP", "����"
With players(GetCode(scr))
If IsLabelSymbolNew(rest$, "�����", "ANGLE", Lang) Then
If IsExp(bstack, rest$, p) Then sx = p Else ifier = False: MissNumExpr: Exit Function
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then sy = p Else ifier = False: MissNumExpr: Exit Function
sx = sx / PI2
sx = (sx - Fix(sx)) * PI2
.XGRAPH = .XGRAPH + Cos(sx) * sy
.YGRAPH = .YGRAPH - Sin(sx) * sy
Else
If IsExp(bstack, rest$, p) Then .XGRAPH = .XGRAPH + p
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then .YGRAPH = .YGRAPH + p Else ifier = False: MissNumExpr: Exit Function
End If
End With

Case "MOVE", "����"
With players(GetCode(scr))
If IsExp(bstack, rest$, p) Then .XGRAPH = p
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then .YGRAPH = p Else ifier = False: MissNumExpr: Exit Function
End With
Case "FILL", "����"
prive = GetCode(scr)
With players(prive)
If FastSymbol(rest$, "@") Then par = True
x1 = 0
y1 = 1
col = players(prive).mypen
If IsExp(bstack, rest$, p) Then x1 = p
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then y1 = p

scr.CurrentX = .XGRAPH
scr.CurrentY = .YGRAPH
If par Then

'*****************
y = 5
If FastSymbol(rest$, ",") Then If Not IsExp(bstack, rest$, y) Then y = 5
If FastSymbol(rest$, ",") Then
If IsExp(bstack, rest$, x) Then
If FastSymbol(rest$, ",") Then
If IsExp(bstack, rest$, p) Then
MyFill scr, (x1), (y1), (y), (x), (p)
Else
 ifier = False: MissNumExpr: Exit Function
End If
Else
MyFill scr, (x1), (y1), (y), (x)
End If
ElseIf IsStrExp(bstack, rest$, SS$) Then
MyFill scr, (x1), (y1), (y), SS$
Else
MyFill scr, (x1), (y1), 5, "?"
End If
Else
MyFill scr, (x1), (y1), 6, 0
End If

'*******************
Else
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then col = p Else ifier = False: MissNumExpr: Exit Function
If FastSymbol(rest$, ",") Then 'ok
par = False
    If Not IsExp(bstack, rest$, x) Then
        If col = 0 Then x = rgb(255, 255, 255) Else x = 0
        Else
        par = True
    End If
    y = True
    If FastSymbol(rest$, ",") Then 'ok
        If IsExp(bstack, rest$, y) Then
            y = y <> 0
            par = True
        End If
    End If
    p = True
    If FastSymbol(rest$, ",") Then
        If IsExp(bstack, rest$, p) Then
            p = p <> 0
            par = True
        End If
    End If
    If par Then
    Gradient scr, mycolor(col), mycolor(x), RMIN(.XGRAPH, x1 + .XGRAPH), scr.Width - RMAX(.XGRAPH, x1 + .XGRAPH), RMIN(.YGRAPH, y1 + .YGRAPH), scr.Height - RMAX(.YGRAPH, y1 + .YGRAPH), y, p
    .XGRAPH = .XGRAPH + x1
    .YGRAPH = .YGRAPH + y1
    '' LCT scr, .currow, .curpos
    MyDoEvents1 scr
    Exit Function
    End If
    '' LCT scr, .currow, .curpos
 ifier = False: MissNumExpr: Exit Function
Else
scr.Line (.XGRAPH, .YGRAPH)-Step(x1, y1), mycolor(col), BF
.XGRAPH = scr.CurrentX
.YGRAPH = scr.CurrentY
End If
End If

'' LCT scr, .currow, .curpos
End With
MyDoEvents1 scr
Exit Function

Case "FLOODFILL", "������"
With players(GetCode(scr))
par = IsLabelSymbolNew(rest$, "�����", "COLOR", Lang)
x1 = .XGRAPH
y1 = .YGRAPH
col = .mypen
If IsExp(bstack, rest$, p) Then x1 = p
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then y1 = p

If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then col = p Else ifier = False: MissNumExpr: Exit Function
Ffill scr, (x1), (y1), col, par
End With
MyDoEvents1 scr
'' LCT scr, .currow, .curpos
Case "������", "DRAW"   ' LINE X1,Y1,COL
With players(GetCode(scr))
x1 = 0
y1 = 1
col = .mypen
If IsLabelSymbolNew(rest$, "���", "TO", Lang) Then
If IsExp(bstack, rest$, p) Then x1 = p Else x1 = .XGRAPH
If FastSymbol(rest$, ",") Then
If IsExp(bstack, rest$, p) Then y1 = p Else y1 = .YGRAPH
If FastSymbol(rest$, ",") Then
If IsExp(bstack, rest$, p) Then col = p Else I3 = False: Exit Function
End If
Else
 y1 = .YGRAPH
End If
scr.CurrentX = .XGRAPH
scr.CurrentY = .YGRAPH
scr.Line (.XGRAPH, .YGRAPH)-(x1, y1), mycolor(col)

.XGRAPH = scr.CurrentX
.YGRAPH = scr.CurrentY
MyDoEvents1 scr
'' LCT scr, .currow, .curpos
Exit Function
ElseIf IsLabelSymbolNew(rest$, "�����", "ANGLE", Lang) Then
If IsExp(bstack, rest$, p) Then sx = p Else I3 = False: Exit Function
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then sy = p Else I3 = False: Exit Function
sx = sx / PI2
sx = (sx - Fix(sx)) * PI2
x1 = Cos(sx) * sy
y1 = -Sin(sx) * sy
Else
If IsExp(bstack, rest$, p) Then x1 = p
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then y1 = p
End If
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then col = p Else I3 = False: Exit Function

scr.CurrentX = .XGRAPH
scr.CurrentY = .YGRAPH

scr.Line (.XGRAPH, .YGRAPH)-Step(x1, y1), mycolor(col)

.XGRAPH = scr.CurrentX
.YGRAPH = scr.CurrentY
'' LCT scr, .currow, .curpos
End With
Case "WIDTH", "�����"

If IsExp(bstack, rest$, p) Then
i = scr.DrawWidth
x1 = scr.DrawStyle
scr.DrawWidth = p
If p = 1 Then
If FastSymbol(rest$, ",") Then
If IsExp(bstack, rest$, x) Then
On Error Resume Next
x = Int(x)
If x >= 0 Or x <= 6 Then

scr.DrawStyle = x
If Err Then x = 0: scr.DrawStyle = Int(x)
scr.DrawWidth = p
End If
End If
End If
End If
If FastSymbol(rest$, "{") Then
SS$ = "{" & block(rest$) & "}"
frm$ = rest$
If FastSymbol(rest$, "}") Then
Call executeblock(it, bstack, SS$, False, False)

' what for 2 and 3 values
End If
End If
End If
scr.DrawWidth = i
scr.DrawStyle = x1
''If it > i Or Once = True Then  ' what is this???
''bstack.LastComm = ss$
''bstack.LastOnce = Once
''bstack.LastExecute = it
''ifier = True
''Exit Function
''End If
If it <> 1 Then
 If Trim(SS$) = "" Then SS$ = " "
rest$ = Left$(SS$, Len(SS$) - 1) + frm$
 ifier = False
Exit Function
End If
Exit Function
Case "�������", "CURVE"
With players(GetCode(scr))
If IsLabelSymbolNew(rest$, "�����", "ANGLE", Lang) Then par = True
f = 32
ReDim PLG(f)
x1 = 1
PLG(0).x = scr.ScaleX(.XGRAPH, 1, 3)
PLG(0).y = scr.ScaleY(.YGRAPH, 1, 3)
Do
If x1 >= f Then f = f * 2: ReDim Preserve PLG(f)
If IsExp(bstack, rest$, p) Then
x = p

If Not FastSymbol(rest$, ",") Then ifier = False: MissNumExpr: Exit Function
If IsExp(bstack, rest$, p) Then
If par Then
sx = x / PI2
sx = (sx - Fix(sx)) * PI2
.XGRAPH = .XGRAPH + Cos(sx) * p
.YGRAPH = .YGRAPH - Sin(sx) * p
Else
.XGRAPH = .XGRAPH + CLng(x)
.YGRAPH = .YGRAPH + CLng(p)
End If
PLG(x1).x = scr.ScaleX(.XGRAPH, 1, 3)
PLG(x1).y = scr.ScaleY(.YGRAPH, 1, 3)

Else
 ifier = False: MissNumExpr: Exit Function
End If
Else
 ifier = False: MissNumExpr: Exit Function
End If

x1 = x1 + 1
Loop Until Not FastSymbol(rest$, ",")
x1 = x1 - 1

If PolyBezier(scr.hDC, PLG(0), x1 + 1) = 0 Then
BadGraphic
 Exit Function
End If
scr.FillStyle = vbSolid
End With
MyDoEvents1 scr
'' LCT scr, .currow, .curpos
Case "PATH", "COLOR", "�����", "�����"
f = IsLabelSymbolNew(rest$, "����", "OVER", Lang)
If FastSymbol(rest$, "!") Then par = True

If IsExp(bstack, rest$, p) Then
        col = p  ' using a fill color
        If FastSymbol(rest$, ",") Then
           If Not IsExp(bstack, rest$, x) Then MissNumExpr
           Else
           x = vbSolid
           End If
        If FastSymbol(rest$, "{") Then
            SS$ = "{" & block(rest$) & "}"
            frm$ = rest$
            If FastSymbol(rest$, "}") Then
          
                        BeginPath scr.hDC
                        Call executeblock(it, bstack, SS$, False, False)
                      
                        ' what for 2 and 3 values
                        EndPath scr.hDC
        
                        scr.FillStyle = Int(x) Mod 8
                        scr.FillColor = mycolor(col)
                        col = p ' from  6.3 change
                        If par Then scr.DrawMode = 7
                        If f Then  ' from 8 rev 83
                                If scr.FillStyle = 1 Then
                                   StrokeAndFillPath scr.hDC
                                Else
                                    FillPath scr.hDC
                                  End If
                        Else
                             StrokeAndFillPath scr.hDC         ' stroke and fill path
                        End If
                        If par Then scr.DrawMode = 13
                        scr.FillStyle = vbSolid
          
                If Trim(SS$) = "" Then SS$ = " "
                  If it <> 1 Then rest$ = Left$(SS$, Len(SS$) - 1) + frm$: ifier = False
              End If
            Else
       MissPar
ifier = False
        End If
        Exit Function
    Else
        If FastSymbol(rest$, "{") Then
            SS$ = block(rest$)
            If Trim(SS$) = "" Then
             ifier = FastSymbol(rest$, "}")
            If FastSymbol(rest$, ";") Then
  
                SelectClipRgn scr.hDC, 0&
            
            End If
            Exit Function
            End If
            SS$ = "{" & SS$ & "}"
            frm$ = rest$
            If FastSymbol(rest$, "}") Then
            
                BeginPath scr.hDC
                Call executeblock(it, bstack, SS$, False, False)
                EndPath scr.hDC
                scr.FillStyle = vbSolid
                If FastSymbol(rest$, ";") Then           ' path { block of commands };
                If f Then
                SelectClipPath scr.hDC, 2
                Else
                    SelectClipPath scr.hDC, RGN_COPY  ' make a clip path
                    End If
                Else
                    If par Then scr.DrawMode = 7
                    StrokePath scr.hDC               ' stroke path
                    If par Then scr.DrawMode = 13
                End If
                If Trim(SS$) = "" Then SS$ = " "
                   If it <> 1 Then rest$ = Left$(SS$, Len(SS$) - 1) + frm$: ifier = False: Exit Function

        End If
    Else
MissPar
ifier = False
    End If
    
End If
Exit Function
Case "DESKTOP", "���������"
olamazi
If IsLabelSymbolNew(rest$, "������", "IMAGE", Lang) Then
If IsStrExp(bstack, rest$, s$) Then
' FILL WIDTH  IMAGE
 If Left$(s$, 4) = "cDIB" And Len(s$) > 12 Then
 Set photo = New cDIBSection
 If Not cDib(s$, photo) Then MissCdibStr:  Exit Function
  photo.GetDpi 96, 96
  If form5iamloaded Then
  Form5.RestoreSizePos
  Form5.Cls
  photo.ThumbnailPaint Form5
  Else
  photo.ThumbnailPaint Form1
  End If
 Else
 If ExtractType(s$) = "" Then s$ = s$ & ".jpg"
                    If CFname(s$) = "" Then
                        s$ = mcd & s$
                        If CFname(s$) = "" Then
                        BadFilename
                        ifier = False
                        Exit Function
                        End If
                    Else
                        s$ = CFname(s$)
                    End If
        If Len(s$) < 254 Then
        ' look for image to load
            Set photo = New cDIBSection
            If CFname(s$) <> "" Then
            s$ = CFname(s$)
                    photo.CreateFromPicture LoadPicture(GetDosPath(s$))
                                           
                    If photo.bitsPerPixel <> 24 Then
                        Conv24 photo
                        Else
                        CheckOrientation photo, s$
                        End If
                       photo.GetDpi 96, 96
                       If form5iamloaded Then
                       Form5.RestoreSizePos
                       Form5.Cls
                       photo.ThumbnailPaint Form5
                       Else
                       photo.ThumbnailPaint Form1
                       End If
                    End If
        Else
        BadFilename
        End If
        End If
 Set photo = Nothing
End If
ElseIf IsLabelSymbolNew(rest$, "�����", "HIDE", Lang) Then
If Not form5iamloaded Then
'
End If
Form5.BackColor = &H0 ' ALWAYS BLACK
Form5.Cls
SetTrans Form5, CByte(255), mycolor(0), True
ElseIf IsLabelSymbolNew(rest$, "������", "CLEAR", Lang) Then
If form5iamloaded Then
Form5.RestoreSizePos
Form5.BackColor = &H0 ' ALWAYS BLACK
Form5.Cls

Set Form5.Picture = LoadPicture("")
Form5.Cls
SetTrans Form5, CByte(255), mycolor(-2)

Else
Form1.Cls
End If
Else
If Not Form1.Visible Then
ifier = False
MyEr "You cant't set DESKTOP before a SHOW or after HIDE", "��� ������� �� ��������� ��� ��������� �� ��� ������ � �����"
Exit Function
End If
If IsExp(bstack, rest$, p) Then
If FastSymbol(rest$, ",") Then
If IsExp(bstack, rest$, x) Then

Form5.Visible = True
Form5.ZOrder 1
SetTrans Form1, CByte(p And &HFF), mycolor(x), True

End If
Else

Form5.Visible = True
'Form5.ZOrder 1

SetTrans Form1, CByte(p And &HFF)

End If
Else
CdESK
End If
End If
Exit Function
Case "CHOOSE.COLOR", "�������.�����", "�������.�����"
olamazi
With players(GetCode(bstack.Owner))
If IsExp(bstack, rest$, p) Then
i = CLng(p)
Else
i = -.mypen
End If
it = i
If i > 16 Then it = -it
If i > 0 And i < 16 Then i = QBColor(i)


If Form1.Visible Then
Set photo = Form1
Else
Set photo = Nothing
End If
DialogSetupLang Lang
If OpenColor(bstack, photo, i) Then
bstack.soros.PushVal CDbl(-i)
Else
bstack.soros.PushVal CDbl(-it)

End If
Set photo = Nothing
End With
Case "SAVE.AS", "����������.��"
If IsSelectorInUse Then
ifier = False
SelectorInUse
Exit Function
End If
olamazi

frm$ = mcd
If myUcase(what$) = "SAVE.AS" Then
DialogSetupLang 1
Else
DialogSetupLang 0
End If
'����������.�� ���.�����$, ���������$, ������$, ������������$
IsStrExp bstack, rest$, s$
If FastSymbol(rest$, ",") Then If IsStrExp(bstack, rest$, pa$) Then frm$ = pa$
If frm$ <> "" Then If Not isdir(frm$) Then NoSuchFolder rest$: Exit Function
If FastSymbol(rest$, ",") Then If IsStrExp(bstack, rest$, pa$) Then SS$ = pa$
If FastSymbol(rest$, ",") Then If Not IsStrExp(bstack, rest$, w$) Then I3 = False: Exit Function
'If FastSymbol(Rest$, ",") Then f = IsExp(bstack, Rest$, p) Else p = 0
par = True ' p <> 0
'If FastSymbol(Rest$, ",") Then f = IsExp(bstack, Rest$, p) Else p = 0
' DUM = p <> 0 NOT USED FOR SAVE FILE
DUM = False
olamazi
If Form1.Visible Then
Set photo = Form1
Else
Set photo = Nothing
End If
' change for file type
If InStr(w$, "|") > 0 Then w$ = ""  ' NOT COMBATIBLE..CHANGE TO ALL FILES
If SaveAsDialog(bstack, photo, s$, frm$, SS$, w$) Then
bstack.soros.PushStr ReturnFile
Else
bstack.soros.PushStr ""
End If

Set photo = Nothing
Exit Function

Case "������", "CHANGE"

If IsExp(bstack, rest$, p) Then
p = CLng(p)
If p >= 0 And p < UBound(q()) Then
     
              '
While FastSymbol(rest$, ",")
If IsLabelSymbolNew(rest$, "�����", "TEXT", Lang) Then
If IsStrExp(bstack, rest$, w$) Then q(p).Tag = w$
ElseIf IsLabelSymbolNew(rest$, "����", "PEN", Lang) Then
If IsExp(bstack, rest$, x) Then q(p).Pen = x
ElseIf IsLabelSymbolNew(rest$, "�����", "BACK", Lang) Then
If IsExp(bstack, rest$, x) Then q(p).back = x
ElseIf IsLabelSymbolNew(rest$, "�������", "BORDER", Lang) Then
If IsExp(bstack, rest$, x) Then q(p).fore = x
ElseIf IsLabelSymbolNew(rest$, "������", "COMMAND", Lang) Then
If IsStrExp(bstack, rest$, w$) Then q(p).Comm = w$
End If

Wend
RTarget bstack, q(p)
End If
End If
Case "BACK", "BACKGROUND", "���������"
ProcBackGround bstack, rest$, Lang, ifier
Exit Function
Case "BACK", "BACKGROUND", "���������"
ProcBackGround bstack, rest$, Lang, ifier
Exit Function
'**********************************************************************************

Case "STACK", "�����"
   If IsLabelSymbolNew(rest$, "����", "NEW", Lang) Then
   If FastSymbol(rest$, "{") Then
SS$ = "{" & block(rest$) & "}"
frm$ = rest$
If FastSymbol(rest$, "}") Then
Set ps = bstack.soros
Set bstack.Sorosref = New mStiva
Call executeblock(it, bstack, SS$, False, Once)
Set bstack.Sorosref = ps
Set ps = Nothing
If it = 0 Then ifier = False
Exit Function
End If
End If
   Else
If FastSymbol(rest$, "!") Then
If VALIDATEpart(rest$, s$) Then
Do While s$ <> ""
If ISSTRINGA(s$, pa$) Then
bstack.soros.DataStr pa$
ElseIf IsNumberD(s$, x) Then
bstack.soros.DataVal x
Else
Exit Do
End If
Loop
Else
ifier = False
End If
Exit Function
Else
' STACK A$
' stack a$, "NN"
x1 = Abs(IsLabel(bstack, rest$, what$))
If x1 = 3 Then
If GetVar(bstack, what$, it) Then
SS$ = var(it)
If FastSymbol(rest$, ",") Then
If Not IsStrExp(bstack, rest$, pa$) Then ifier = False: Exit Function
End If
If VALIDATE(SS$, pa$, frm$) Then
IsSymbol3 pa$, ","
If Typename(var(it)) = doc Then
Set var(it) = New Document
var(it).textDoc = pa$
Else
var(it) = pa$
End If
Set ps = New mStiva
i = 1
Do While i <= Len(frm$) And SS$ <> ""
If Mid$(frm$, i, 1) = "S" Then
    If ISSTRINGA(SS$, pa$) Then ps.DataStr pa$
Else
    If IsNumberD(SS$, x) Then ps.DataVal x
End If
IsSymbol SS$, ","
i = i + 1
Loop
bstack.soros.MergeTop ps
Else
ifier = False
Exit Function
End If
Else
rest$ = what$ & " " & rest$
If IsStrExp(bstack, rest$, SS$) Then
pa$ = ""
If VALIDATE(SS$, pa$, frm$) Then
Set ps = New mStiva
i = 1
Do While i <= Len(frm$) And SS$ <> ""
If Mid$(frm$, i, 1) = "S" Then
    If ISSTRINGA(SS$, pa$) Then ps.DataStr pa$
Else
    If IsNumberD(SS$, x) Then ps.DataVal x
End If
IsSymbol SS$, ","
i = i + 1
Loop
bstack.soros.MergeTop ps
End If
Else
ifier = False
Exit Function
End If
End If
ElseIf x1 = 6 Then
If neoGetArray(bstack, what$, pppp) Then
If Not NeoGetArrayItem(pppp, bstack, what$, f, rest$) Then ifier = False: Exit Function
SS$ = pppp.item(f)
If FastSymbol(rest$, ",") Then
If Not IsStrExp(bstack, rest$, pa$) Then ifier = False: Exit Function
End If

If VALIDATE(SS$, pa$, frm$) Then
IsSymbol3 pa$, ","
If Typename(pppp.item(f)) = doc Then
s$ = pppp.item(f)
       Set pppp.item(f) = New Document
       If s$ <> "" Then
       pppp.item(f).textDoc = s$
       End If
Else
pppp.item(f) = pa$
End If
Set ps = New mStiva
i = 1
Do While i <= Len(frm$) And SS$ <> ""
If Mid$(frm$, i, 1) = "S" Then
    If ISSTRINGA(SS$, pa$) Then ps.DataStr pa$
Else
    If IsNumberD(SS$, x) Then ps.DataVal x
End If
IsSymbol SS$, ","
i = i + 1
Loop
bstack.soros.MergeTop ps
'stack$(bstack) = ss$ & stack$(bstack)
Else
ifier = False
Exit Function
End If
Else
rest$ = what$ & rest$
If IsStrExp(bstack, rest$, SS$) Then
pa$ = ""
If VALIDATE(SS$, pa$, frm$) Then
Set ps = New mStiva
i = 1
Do While i <= Len(frm$) And SS$ <> ""
If Mid$(frm$, i, 1) = "S" Then
    If ISSTRINGA(SS$, pa$) Then ps.DataStr pa$
Else
    If IsNumberD(SS$, x) Then ps.DataVal x
End If
IsSymbol SS$, ","
i = i + 1
Loop
bstack.soros.MergeTop ps
'stack$(bstack) = ss$ & stack$(bstack)
End If
Else
ifier = False
Exit Function
End If
End If
ElseIf IsStrExp(bstack, rest$, SS$) Then
pa$ = ""
If VALIDATE(SS$, pa$, frm$) Then
Set ps = New mStiva
i = 1
Do While i <= Len(frm$) And SS$ <> ""
If Mid$(frm$, i, 1) = "S" Then
    If ISSTRINGA(SS$, pa$) Then ps.DataStr pa$
Else
    If IsNumberD(SS$, x) Then ps.DataVal x
End If
IsSymbol SS$, ","
i = i + 1
Loop
bstack.soros.MergeTop ps
'stack$(bstack) = ss$ & stack$(bstack)
End If
Else
i = 0
With bstack.soros
s$ = ""
Do
i = i + 1
If .Total < i Then Exit Do

Select Case .StackItemType(i)
Case "?"
s$ = s$ & "(?) "
Case "N"
s$ = s$ & CStr(.StackItem(i)) & " "
Case "S"
SS$ = .StackItem(i)
    If Len(SS$) > 78 Then
    s$ = s$ & Chr(34) + Left$(SS$, 75) & ".." & Chr(34)
    Else
    s$ = s$ & Chr(34) + SS$ & Chr(34)
    End If

Case Else
Set photo = .StackItem(i)
    s$ = s$ + "*[" + Typename(photo) + "]"
End Select
Loop
Set photo = Nothing
End With
prive = GetCode(scr)
PlainBaSket scr, players(prive), s$
crNew bstack, players(prive)
Exit Function
End If
End If
End If
Case "������", "VERSION"
prive = GetCode(scr)
PlainBaSket scr, players(prive), CStr(App.Major) & "." & CStr((App.Minor \ 1000) - 1) & " (" & CStr(App.Minor Mod 1000) & ")"
crNew bstack, players(prive)
Exit Function
Case "FONT", "�������������"     '********************************************************FONT "TAHOMA"
    ' NAME ONLY
    ' RESET WINDOW
    prive = GetCode(scr)
    If IsStrExp(bstack, rest$, s$) Then
        On Error Resume Next
        x1 = scr.Font.charset
        scr.Font.name = s$
        If Not (x1 = scr.Font.charset) Then
            scr.Font.charset = x1
        End If
    
        If LCase(scr.Font.name) <> LCase(s$) Then
        
            scr.Font.name = MYFONT
            scr.Font.charset = bstack.myCharSet
        Else
             ''MYFONT = s$
        End If
    End If
        Form3.StoreFont scr.Font.name, players(prive).SZ, scr.Font.charset
        players(prive).FontName = scr.Font.name
    Exit Function
Case "SCROLL", "������"
If bstack.toprinter Then
MyEr "No scrolling for printer document", "��� ������ ��� �� ������� ���������"
ifier = False
Else
prive = GetCode(scr)
If IsLabelSymbolNew(rest$, "����", "DOWN", Lang) Then
    ScrollDownNew scr, players(prive)
ElseIf IsLabelSymbolNew(rest$, "�������", "SPLIT", Lang) Then
If IsExp(bstack, rest$, p) Then
''SetText scr
With players(prive)
    If p < 0 Then p = .My + p
    If p >= 0 And p < .My Then .mysplit = p
End With
Else
ifier = False
SyntaxError
End If
Else
 DUM = IsLabelSymbolNew(rest$, "���", "UP", Lang)
ScrollUpNew scr, players(prive)


End If
End If
Exit Function

Case "EDIT.DOC", "��������"
prive = GetCode(scr)
With players(prive)
ifier = False
                Form1.EditTextWord = Not IsLabelSymbolNew(rest$, "������", "CODE", Lang)
                DUM = False
                    y1 = Abs(IsLabel(bstack, rest$, s$))
                     
                    If y1 = 6 Then
                                If neoGetArray(bstack, s$, pppp) Then
                                 If Not NeoGetArrayItem(pppp, bstack, s$, i, rest$) Then Exit Function
                                Else
                                MissingDoc
                                
                                Exit Function
                                End If
                    End If
                    If FastSymbol(rest$, ",") Then
                        If Not IsExp(bstack, rest$, sx) Then    ' FROM
                      If FastSymbol(rest$, ",") Then
                      GoTo conteditdoc
                      Else
                             MissNumExpr
                            
                            Exit Function
                      End If
                        End If
                    Else
                
                    
                 sx = 0
                    End If
                    If FastSymbol(rest$, ",") Then
conteditdoc:
                        If Not IsStrExp(bstack, rest$, frm$) Then
                        If FastSymbol(rest$, ",") Then GoTo conteditdoc2
                        End If
                          Else
                    Form1.ResetMarks
                     frm$ = ""
                    
                    End If
                    If FastSymbol(rest$, ",") Then
conteditdoc2:
                        If Not IsExp(bstack, rest$, p) Then    ' FROM
                            MissStringExpr
                            
                            Exit Function
                            Else
                            col = CLng(p)
                            DUM = True
                        End If
                        
                    Else
                    Form1.ResetMarks
                    End If
                        If y1 = 3 Then
                            If GetVar(bstack, s$, i) Then
                                If Typename(var(i)) = doc Then
                                If var(i).LastSelStart > 0 And sx = 0 Then
                                x1 = var(i).LastSelStart
                                    Else
                                    If sx = 0 Then sx = -1
                                    x1 = sx
                                End If
                                   Form1.TEXT1.title = frm$ + " "
                                  ScreenEditDOC bstack, var(i), 0, .mysplit, .mx - 1, .My - 1, x1, DUM, col
                                    var(i).LastSelStart = x1
                                    ifier = True
                                Else
                                    MissingDoc
                                    
                                End If
                            Else
                                   MissFuncParameterStringVar
                                    
                            End If
                        ElseIf y1 = 6 Then
                                    If Typename(pppp.item(i)) = doc Then
                                                  If pppp.item(i).LastSelStart > 0 And sx = 0 Then
                                x1 = pppp.item(i).LastSelStart
                                    Else
                                    If sx = 0 Then sx = -1
                                    x1 = sx
                                End If
                                    Form1.TEXT1.title = frm$ + " "
                                  ScreenEditDOC bstack, pppp.item(i), 0, .mysplit, .mx - 1, .My - 1, x1, DUM, col
                                    pppp.item(i).LastSelStart = x1
                                    ifier = True
                                    
                                      Else
                                      MissingDoc
                                      
                                      End If
                               
                                    
                    Else
                          MissPar
                          
                    End If
End With
                    Exit Function

Case "REPORT", "�������"
ifier = False
prive = GetCode(scr)
''If Lang Then pa$ = "LINE" Else pa$ = "������"
If IsExp(bstack, rest$, p) Then
If Not FastSymbol(rest$, ",") Then MissPar:: Exit Function
Else
p = 0
End If
If IsStrExp(bstack, rest$, s$) Then
 x = scr.Width
If FastSymbol(rest$, ",") Then
If Not IsExp(bstack, rest$, x) Then: Exit Function
With players(prive)
If x <= .mx Then
x = x * .Xt - 2 * dv15
scr.CurrentX = scr.CurrentX + dv15
End If
End With
End If

If FastSymbol(rest$, ",") Then
If Not IsExp(bstack, rest$, y) Then: Exit Function
y1 = y - 1
If IsLabelSymbolNew(rest$, "������", "LINE", Lang) Then
        If Not IsExp(bstack, rest$, sx) Then: Exit Function
        x1 = sx - 1
If IsLabelSymbolNew(rest$, "��", "AS", Lang) Then
          wwPlain bstack, players(prive), s$, CLng(x), y1, , , CLng(p), x1, , , True
  rest$ = "@READ " + rest$
  If Not executeblock(i, bstack, rest$, True, False) Then
' error ??
  End If
  Else
        wwPlain bstack, players(prive), s$, CLng(x), y1, , , CLng(p), x1
      End If
Else
If IsLabelSymbolNew(rest$, "��", "AS", Lang) Then
  wwPlain bstack, players(prive), s$, CLng(x), y1, , , CLng(p), , it, , True
  rest$ = "@READ " + rest$
  If Not executeblock(i, bstack, rest$, True, False) Then
 ' error ?
  End If
  
Else
  wwPlain bstack, players(prive), s$, CLng(x), y1, , , CLng(p), , it
  End If
 End If
players(prive).LastReportLines = CDbl(it)
  
Else

 wwPlain bstack, players(prive), s$, CLng(x), 100000, True, , CLng(p), , it
   players(prive).LastReportLines = -1
End If

ifier = True
Else
If LastErNum <> 0 Then LastErNum = 0:: Exit Function      'ifier=true

End If
Exit Function

Case "ITALIC", "������"   '.......................

If IsExp(bstack, rest$, p) Then
bstack.myitalic = (p <> 0)
Else
bstack.myitalic = Not bstack.myitalic
p = CDbl(bstack.myitalic)
End If
players(GetCode(scr)).italics = Abs(p <> 0)
scr.Font.Italic = (p <> 0)


Exit Function

Case "������", "FKEY"

If IsLabelSymbolNew(rest$, "������", "CLEAR", Lang) Then
    For i = 1 To 13: FK$(i) = "": Next i
ElseIf IsExp(bstack, rest$, p) Then
prive = GetCode(scr)
i = ((CLng(p) + 11) Mod 12) + 1
    If FastSymbol(rest$, ",") Then
        If IsStrExp(bstack, rest$, s$) Then
        FK$(i) = s$
        Else
: MissPar: ifier = False:
         Exit Function
        End If
    Else
    
        PlainBaSket scr, players(prive), FK$(i)
        crNew bstack, players(prive)
    End If
Else
pa$ = "": prive = GetCode(scr)
For i = 1 To 13
If FK$(i) <> "" Then
pa$ = pa$ + placeme$("������", "FKEY", Lang) + Right$(" " & Str$(i), 3) & " [" & FK$(i) & "]" ' FKEY
If i = 13 Then pa$ = pa$ + " SHIFT + F1" Else pa$ = pa$ + " F" & CStr(i)
pa$ = pa$ + vbCrLf

End If
Next i
RepPlain bstack, scr, pa$
End If
Exit Function


Case "CHARSET", "����������"
If IsExp(bstack, rest$, p) Then
On Error Resume Next
chr11:
prive = GetCode(scr)
    scr.Font.charset = CInt(p)
    Form1.TEXT1.Font.charset = scr.Font.charset
    Form1.List1.Font.charset = scr.Font.charset
      Form3.StoreFont scr.Font.name, players(prive).SZ, scr.Font.charset
      players(prive).charset = scr.Font.charset
Exit Function
End If
Case "OPEN", "������"
ifier = False
If IsStrExp(bstack, rest$, s$) Then
If s$ <> "" Then
FixPath s$
Else
BadFilename
ifier = False
Exit Function
End If
    If IsLabelSymbolNew(rest$, "���", "FOR", Lang) Then
    
    i = FreeFile
   Uni(i) = IsLabelSymbolNew(rest$, "�����", "WIDE", Lang)
   'SPELLING CORRECTION FOR GREEK WORD..
   If Not Uni(i) Then Uni(i) = IsLabelSymbolNew(rest$, "������", "WCHAR", Lang)
    If IsLabelSymbolNew(rest$, "��������", "INPUT", Lang) Then
            If IsLabelSymbolNew(rest$, "��", "AS", Lang) Then
                    If Abs(IsLabel(bstack, rest$, what$)) = 1 Then
                        If GetVar(bstack, what$, it) Then
                            var(it) = i
                        Else
                            GlobalVar what$, i
                        End If
                        FLEN(i) = 1
                        If CFname(GetDosPath(s$)) <> "" Then
                            On Error Resume Next
                                Open GetDosPath(s$) For Binary Access Read As i
                            If Err.Number > 0 Then ifier = False: Exit Function
                         
                        End If
                End If
                End If
        ElseIf IsLabelSymbolNew(rest$, "����������", "APPEND", Lang) Then
         If Not CanKillFile(s$) Then FilePathNotForUser:  Exit Function
            If IsLabelSymbolNew(rest$, "��", "AS", Lang) Then
                If Abs(IsLabel(bstack, rest$, what$)) = 1 Then
                    If GetVar(bstack, what$, it) Then
                        var(it) = i
                    Else
                        GlobalVar what$, i
                    End If
                    If CFname(GetDosPath(s$)) <> "" Then
                        FLEN(i) = 1
                        On Error Resume Next
                        If Not WeCanWrite(GetDosPath(s$)) Then ifier = False: Exit Function
                            Open GetDosPath(s$) For Binary Access Write As i
                            Seek i, LOF(i) + 1
                        If Err.Number > 0 Then:    ifier = False: Exit Function

                    End If
                End If
            End If
        ElseIf IsLabelSymbolNew(rest$, "�������", "OUTPUT", Lang) Then
        If Not CanKillFile(s$) Then FilePathNotForUser:  Exit Function
        If IsLabelSymbolNew(rest$, "��", "AS", Lang) Then
            If Abs(IsLabel(bstack, rest$, what$)) = 1 Then
                If GetVar(bstack, what$, it) Then
                var(it) = i
                Else
                GlobalVar what$, i
                End If
                On Error Resume Next
                FLEN(i) = 1
                If Not NeoUnicodeFile(s$) Then ifier = False: Exit Function

                 On Error Resume Next
                 Open GetDosPath(s$) For Binary Access Write As i
 
                    If Err.Number > 0 Then ifier = False: Exit Function

               End If
       End If
        ElseIf IsLabelSymbolNew(rest$, "�����", "RANDOM", Lang) Then
        If Not CanKillFile(s$) Then FilePathNotForUser:  Exit Function
      If IsLabelSymbolNew(rest$, "��", "AS", Lang) Then
            If Abs(IsLabel(bstack, rest$, what$)) = 1 Then
                If GetVar(bstack, what$, it) Then
                    var(it) = i
                 Else
                    GlobalVar what$, i
                End If
                If IsLabelSymbolNew(rest$, "�����", "LEN", Lang, , , , False) Then
                    If FastSymbol(rest$, "=") Then
                        If IsExp(bstack, rest$, p) Then
                                p = Abs(p)
                   If Uni(i) Then p = p * 2
                                        If p > 32767 Then p = 32767
                                        
                                        x1 = p
                        
                                 FLEN(i) = x1
                        Else
                                Exit Function
                        End If
                    Else
                            Exit Function
                    End If

                        On Error Resume Next
                        If CFname(s$) = "" Then
                         If Not NeoUnicodeFile(s$) Then ifier = False: Exit Function
                        End If
            
                
                        Open GetDosPath(s$) For Binary As i
                        If Err.Number > 0 Then: ifier = False: Exit Function
                        
                End If
          End If
        End If
   
            End If

  
    End If
    ifier = True
Exit Function
End If

Case "NAME", "�����"
x1 = Abs(IsLabelBig(bstack, rest$, s$, , w$))

If x1 = 1 Then
s$ = w$
 If Not IsLabelSymbolNew(rest$, "��", "AS", Lang) Then ifier = False: Exit Function
 y1 = Abs(IsLabelBig(bstack, rest$, SS$, , w$))
 If y1 = 0 Then
rest$ = w$ + rest$
y1 = IsStrExp(bstack, rest$, SS$)
ElseIf y1 = 1 Then
SS$ = w$
End If
If y1 <> 0 Then
If Not CanKillFile(CFname(s$)) Then FilePathNotForUser: ifier = False: Exit Function
RenameFile s$, SS$

Exit Function
End If
Else
rest$ = s$ + rest$
End If
If IsStrExp(bstack, rest$, s$) Then
 If Not IsLabelSymbolNew(rest$, "��", "AS", Lang) Then ifier = False: Exit Function
If IsStrExp(bstack, rest$, SS$) Then
On Error Resume Next
RenameFile s$, SS$
On Error GoTo 0
Else
ifier = False
Exit Function
End If
Else
ifier = False
Exit Function
End If


Case "WITH", "��"
' WITH A, "SIZE" SET ALFA  ' SET
' WITH A, "SIZE" AS ALFA  ' GET
' WITH A, "SIZE", 1244  ' LET
If Abs(IsLabel(bstack, rest$, s$)) = 1 Then
If GetVar(bstack, s$, i) Then
If Not IsObject(var(i)) Then BadObjectDecl:  Exit Function
If Not var(i) Is Nothing Then  ''???
       Do While FastSymbol(rest$, ",")
        If IsStrExp(bstack, rest$, SS$) Then
        On Error Resume Next
          ProcProperty bstack, var(), i, SS$, rest$, Lang
          ifier = Err = 0
          Err.clear
        Else
        MissStringExpr
        ifier = False
        Exit Do
        End If
        Loop
        Exit Function
Else
BadObjectDecl
Exit Function
End If
Else

 Nosuchvariable s$
End If
End If
Exit Function
Case "METHOD", "�������"
' METHOD A,"Multiply",12,12 [AS RESULT]   (or Result$)  if [As] isn't there so
' METHOD A "Multiply",12,12 AS RESULT  without
' METHOD A "Multiply", &alfa,&beta$   'passing by reference
i = Abs(IsLabel(bstack, rest$, s$))


If i = 1 Then
 If GetVar(bstack, s$, i) Then
        If IsObject(var(i)) Then
            If var(i) Is Nothing Then
                MissingObj
            Else
                IsSymbol3 rest$, ","
                If IsStrExp(bstack, rest$, pa$) Then
           ''     IsSymbol3 rest$, ","
              ProcMethod bstack, var(), i, pa$, rest$, Lang
          ifier = Err = 0
          Err.clear
                End If
            End If
        Else
            MissingObjRef
        End If
        Exit Function
 Else
  Nosuchvariable s$
 End If
End If

Exit Function
Case "TUNE", "�������"
If IsExp(bstack, rest$, p) Then
    If Not FastSymbol(rest$, ",") Then
        beeperBEAT = CLng(p)
    ElseIf IsStrExp(bstack, rest$, s$) Then
    ' B C D E F G
    beeperBEAT = CLng(p)
    PlayTune (s$)
    Else
   MyEr "wrong parameter", "����� ����������"
    ifier = False
    Exit Function
    End If
ElseIf IsStrExp(bstack, rest$, s$) Then
' B C D E F G
PlayTune (s$)
End If
Exit Function
Case "����", "SOUND"
If IsStrExp(bstack, rest$, s$) Then
PlaySoundNew s$
End If
Case "DB.USER", "����.�������"
    If IsStrExp(bstack, rest$, s$) Then
        If s$ = "" Then
            extDBUser = ""
            extDBUserPassword = ""
        Else
            extDBUser = s$
        End If
        If FastSymbol(rest$, ",") Then
            If Not IsStrExp(bstack, rest$, extDBUserPassword) Then
                extDBUserPassword = ""
            End If
            DBUser = extDBUser
            DBUserPassword = extDBUserPassword
        End If
    End If
Case "DB.PROVIDER", "����.�������"
If IsStrExp(bstack, rest$, pa$) Then
If pa$ = "" Then
JetPrefixUser = JetPrefixHelp
JetPostfixUser = JetPostfixHelp
Else
' DB.PROVIDER "Microsoft.Jet.OLEDB.4.0", "Jet OLEDB", "100101"
' DB.PROVIDER "dns=testme;Uid=admin;Pwd=12alfa45", "ODBC", "100101"
' use (name) for database name

 JetPrefixUser = "Provider=" + pa$ + ";Data Source="  ' normal
    If FastSymbol(rest$, ",") Then
       If IsStrExp(bstack, rest$, s$) Then
          If s$ = "" Then
             ifier = False
          ElseIf UCase(s$) = "ODBC" Or UCase(s$) = "PATH" Then
                If FastSymbol(rest$, ",") Then
                 If IsStrExp(bstack, rest$, SS$) Then
                 JetPrefixUser = pa$ & ";Password=" & SS$
                 Else
                 JetPrefixUser = pa$ & ";Password="
                 End If
                Else
                JetPrefixUser = pa$
                End If
                JetPostfixUser = ";"
          Else
          
             If FastSymbol(rest$, ",") Then
                If IsStrExp(bstack, rest$, SS$) Then
                   If SS$ = "" Then
                       JetPostfixUser = ";" & s$ & ":Database Password=100101;"
                   Else
                       JetPostfixUser = ";" & s$ & ":Database Password=" & SS$ & ";"
                   
                   End If
                    
                Else
                    ifier = False
                End If
             Else
                JetPostfixUser = ";" & s$ & ":Database Password=100101;"
             End If
          End If
        Else
         ifier = False
       End If
    Else
       JetPostfixUser = JetPostfixHelp

    End If
 End If
 Else
 JetPrefixUser = JetPrefixHelp
 
End If
JetPostfix = JetPostfixUser
JetPrefix = JetPrefixUser
Case "TONE", "�����"
If IsExp(bstack, rest$, p) Then
    If Not FastSymbol(rest$, ",") Then
       Beeper 1000, p
    ElseIf IsExp(bstack, rest$, sx) Then
    Beeper sx, p
    Else
   MyEr "wrong parameter", "����� ����������"
    ifier = False
    Exit Function
    End If
Else
Beeper 1000, 100
End If
Exit Function
Case "VIEW", "�����"
If bstack.toprinter Then
oxiforPrinter
 ifier = False
Exit Function
End If
getnames bstack, rest$, Form1.List1, Lang
mywait bstack, CDbl(100)
If Not FastSymbol(rest$, ";") Then GoTo ekei
Exit Function
Case "CHOOSE.ORGAN", "�������.������", "�������.������"
If Form4.Visible Then
Form4.Visible = False
    If Form1.TEXT1.Visible Then
        Form1.TEXT1.SetFocus
    Else
        Form1.SetFocus
    End If
End If
Form1.List1.clear
f = 0
For i = 1 To 127
s$ = ORGAN(i)
Form1.List1.additemFast s$
If TextWidth(scr, s$) > f Then f = TextWidth(scr, s$)
Next i
GoTo ekei
Case "BROWSER", "��������"
s$ = ""
If Not IsStrExp(bstack, rest$, s$) Then
    If Not Abs(IsLabelBig(bstack, rest$, s$, , w$)) = 1 Then
    If NOEDIT Then
    
    If Form1.view1.Visible Then
     Form1.KeyPreview = True
     ProcTask2 bstack
    Form1.view1.SetFocus: Form1.KeyPreview = False
    Else
    Form1.KeyPreview = True
    End If
    Else
    
    End If
        Exit Function
    Else
    s$ = w$ '' low case
    End If
End If
            If FastSymbol(rest$, ",") Then
                    If IsExp(bstack, rest$, x) Then IEX = CLng(x): IESizeX = Form1.ScaleWidth - IEX Else MissNumExpr: ifier = False: Exit Function
                If FastSymbol(rest$, ",") Then
                    If IsExp(bstack, rest$, x) Then IEY = CLng(x): IESizeY = Form1.ScaleHeight - IEY Else MissNumExpr: ifier = False: Exit Function
                                If FastSymbol(rest$, ",") Then
                    If IsExp(bstack, rest$, x) Then IESizeX = CLng(x) Else MissNumExpr: ifier = False: Exit Function
                                    If FastSymbol(rest$, ",") Then
                    If IsExp(bstack, rest$, x) Then IESizeY = CLng(x) Else MissNumExpr: ifier = False: Exit Function
                 End If
                End If
             End If
           End If
           If IESizeX = 0 Or IESizeY = 0 Then
           IEX = Form1.ScaleWidth / 8
           IEY = Form1.ScaleHeight / 8
           IESizeX = Form1.ScaleWidth * 6 / 8
           IESizeY = Form1.ScaleHeight * 6 / 8
           End If

If myLcase(Left$(s$, 7)) = "http://" Or myLcase(Left$(s$, 4)) = "www." Or myLcase(Left$(s$, 6)) = "about:" Then
Form1.IEUP s$
ElseIf s$ <> "" Then
Form1.IEUP "file:" & strTemp + s$
Else
Form1.IEUP ""
Form1.KeyPreview = True
End If
ProcTask2 bstack
Exit Function
Case "����", "BEEP"
''If Not extreme Then If Not bstack.toprinter Then scr.refresh '(beep is for something wrong..)
If IsExp(bstack, rest$, p) Then
MessageBeep CLng(p)
Else
Beep
End If
' ----------------------------------------------------------------
Case "MENU", "�������"
If bstack.toprinter Then
oxiforPrinter
 ifier = False
Exit Function
End If
prive = GetCode(scr)
            If IsLabelSymbolNew(rest$, "�����", "SHOW", Lang) Then
                If Form1.List1.Visible Then
                        If IsStrExp(bstack, rest$, s$) Then
                            p = Form1.List1.find(s$)
                        ElseIf IsExp(bstack, rest$, p) Then
                            p = p - 1
                        Else
                            SyntaxError
                            ifier = False
                        End If
                        If p <> -1 Then
                            If IsLabelSymbolNew(rest$, "��", "AS", Lang) Then  ' CHANGE MENU ITEM IN AN OPEN MENU
                                If IsStrExp(bstack, rest$, s$) Then
                                    Form1.List1.List(CLng(p)) = s$
                                Else
                                   MissStringExpr
                                  ifier = False
                                End If
                            End If
                            If Not FastSymbol(rest$, ";") Then Form1.List1.ShowThis CLng(p + 1) Else Form1.List1.ShowMe2
                        End If
                Else
                        If Form1.List1.listcount > 0 Then  ' YOU CAN OPEN A MENU WITH A START ITEM OTHER THAN 1
                            If IsStrExp(bstack, rest$, s$) Then
                                p = Form1.List1.find(s$)
                            ElseIf IsExp(bstack, rest$, p) Then
                                p = p - 1
                            Else
                               SyntaxError
                               ifier = False
                            End If
                            If p <> -1 Then
                                If IsLabelSymbolNew(rest$, "��", "AS", Lang) Then  ' CHANGE MENU ITEM IN AN OPEN MENU
                                ' IN A THREAD OR IN A @ VARIANT
                                    If IsStrExp(bstack, rest$, s$) Then
                                        Form1.List1.List(CLng(p)) = s$
                                    Else
                                        MissStringExpr
                                        ifier = False
                                    End If
                                Else
                                    If p < Form1.List1.listcount Then Form1.List1.listindex = CLng(p)
                                End If
                        End If
                        frm$ = Form1.List1.Tag
                End If
                GoTo ekei
        End If
    ElseIf IsLabelSymbolNew(rest$, "������", "FRAME", Lang) Then
            Form1.List1.BorderStyle = 1 - Abs(IsLabelSymbolNew(rest$, "���", "OFF", Lang))
    ElseIf IsLabelSymbolNew(rest$, "����", "FILL", Lang) Then
        If IsExp(bstack, rest$, p) Then
        Form1.List1.CapColor = mycolor(p)
        LEVCOLMENU = 1
        If FastSymbol(rest$, ",") Then
            If IsExp(bstack, rest$, p) Then
                   Form1.List1.BackColor = mycolor(p)
                   LEVCOLMENU = 2
                           If FastSymbol(rest$, ",") Then
                                If IsExp(bstack, rest$, p) Then
                                   Form1.List1.ForeColor = mycolor(p)
                                   LEVCOLMENU = 3
                                   Else
                                   MissNumExpr
                                               ifier = False
                                   End If
                        End If
            
                   Else
                   MissNumExpr
                               ifier = False
                   End If
            End If
     
        Else
        MissNumExpr
                    ifier = False
        End If
        ElseIf IsLabelSymbolNew(rest$, "������", "TITLE", Lang) Then
        If Not IsStrExp(bstack, rest$, s$) Then Exit Function
        If Right$(s$, 2) = vbCrLf Then s$ = Left$(s$, Len(s$) - 2)
        Form1.List1.Enabled = Form1.List1.Visible
    
        Form1.List1.HeadLine = s$
        Form1.List1.FloatList = Not IsLabelSymbolNew(rest$, "�������", "HOLD", Lang)
        ElseIf IsLabelSymbolNew(rest$, "�������", "SELECT", Lang) Then
        '' If Form1.List1.LeaveonChoose Then

         Form1.List1.PressSoft

        '' End If
        Else
If FastSymbol(rest$, "@") Then
    par = True
    If Not IsStrExp(bstack, rest$, s$) Then Exit Function
    frm$ = s$
    If FastSymbol(rest$, "!") Then GoTo ekei
    If Not FastSymbol(rest$, ",") Then Exit Function
    
    Else
    par = False
    End If
    If FastSymbol(rest$, "+") Then
    If Not IsStrExp(bstack, rest$, s$) Then Exit Function

    Form1.List1.additemFast s$
       While FastSymbol(rest$, ",")
    If Not IsStrExp(bstack, rest$, s$) Then ifier = False: Exit Function
    Form1.List1.additemFast s$
    Wend
   If Form1.List1.LeaveonChoose Then GoTo ekei Else Exit Function
    
    End If
    If Not FastSymbol(rest$, "!") Then
    If Form1.List1.Enabled = True Then
    Form1.List1.Visible = False
    If Not par Then Form1.List1.HeadLine = ""
    End If
    
    Form1.List1.Enabled = False
    
    Form1.List1.clear

    If Not IsStrExp(bstack, rest$, s$) Then
  scr.TabStop = False
    Form1.List1.HeadLine = "": Form1.KeyPreview = True: Exit Function
    End If
    
    
    Form1.List1.additemFast s$
    If TextWidth(scr, s$) > f Then f = TextWidth(scr, s$)
    While FastSymbol(rest$, ",")
    If Not IsStrExp(bstack, rest$, s$) Then ifier = False: Exit Function
    Form1.List1.additemFast s$
    If TextWidth(scr, s$) > f Then f = TextWidth(scr, s$)
    Wend
    'f = f \ .xt + 1
    Else
ekei:
    it = Form1.List1.listcount
    f = 0
    If it > 0 Then
    With Form1.List1
            
            For it = it - 1 To 0 Step -1
            If TextWidth(scr, .List(it)) > f Then f = TextWidth(scr, .List(it))
            
            Next
    End With
    End If
    End If
    
    
    it = Form1.List1.listcount
  ''  SetText scr
  ''  If scr.CurrentX <> 0 Then scr.CurrentX = ((scr.CurrentX \ .Xt) + 1) * .Xt
With players(prive)
If .lastprint Then
x1 = (scr.CurrentX + .Xt - dv15) \ .Xt
If x1 < 0 Then x1 = 0
If x1 > .mx Then x1 = .mx - 1
Else
x1 = .curpos

End If
y1 = .currow
If x1 < 0 Then
  x1 = 0
  ElseIf x1 > .mx Then
  x1 = .mx - 1
  Else
  
  ''    GetXYb scr, players(prive), .curpos, .currow
    End If
    f = Int(f / TextWidth(scr, "W") + 0.5)
    If it > 0 Then
            If f < 4 Then f = 4  ' 4 chars minimum
            If f > .mx Then f = .mx  ' .mx maximum
            If f + x1 > .mx Then x1 = .mx - f - 1
            If it > .My \ 2 Then it = .My \ 2
            If CLng(.My - y1) < it Then  ' need space above
                If .My - y1 > 2 Then  ' if we have space under
                    it = .My - .currow - 1
                    
                Else  ' no we dont have
                   y1 = .My - it - 1
                
                End If
            End If

            If Not Form1.Visible Then Form1.Visible = True: MyDoEvents
            scr.refresh
                If Not Form1.List1.Visible Then
                    If Not scr.Visible Then scr.Visible
                    If bstack.tolayer Then scr.ZOrder 0
                End If
                With Form1.List1
            .Enabled = True
            .NoPanRight = False
            .NoFreeMoveUpDown = True
            .SingleLineSlide = True
            SetTextBasketBack scr, players(prive)
            .overrideTextHeight = Form3.TextHeight("fj")
            End With
    ListChoise bstack, frm$, x1, y1, f + x1, it + y1 - 1
''GetXYb scr, players(prive), .curpos, .currow
   '  mywait bstack, CDbl(100)  ' slow down..
    INK$ = ""
    UINK$ = ""
    MINK$ = ""
    End If
    '------------------------
End With

End If

Case "THREAD.PLAN", "������.�������"
'             Interrupted = False              Interrupted = False
If IsLabelSymbolNew(rest$, "����������", "CONCURRENT", Lang) Then
If TaskMaster.QueueCount <> 0 Then
If Not Interrupted Then MyEr "Threads exist, can't change thread plan", "�������� ������, ��� ������� �� �������� ������"
Else
Interrupted = True
End If

ElseIf IsLabelSymbolNew(rest$, "���������", "SEQUENTIAL", Lang) Then
If TaskMaster.QueueCount <> 0 Then
If Interrupted Then MyEr "Threads exist, can't change thread plan", "�������� ������, ��� ������� �� �������� ������"
Else
Interrupted = False
End If
End If

Case Else
I3 = False
End Select
End Function

Sub SpaceForVar(j As Long)
var2used = var2used + 1
If UBound(var()) <= var2used Then
On Error Resume Next
    ReDim Preserve var(UBound(var()) * 2 + 1) As Variant
    If Err.Number > 0 Then
    NOEXECUTION = True
    MyEr Err.Description, Err.Description
    Err.clear
    Exit Sub
    End If
    
End If
j = var2used
End Sub
Function ReboundArr(bstack As basetask, name$, arrcode$) As Boolean
On Error GoTo 0

Dim j As Long, k As Long, SS$
name$ = myUcase(name$)
If Left$(name$, 5) = "����." Or Left$(name$, 5) = "THIS." Then
''If StripThis2(bstack.UseGroupname) = "" Then
SS$ = Chr$(13) + bstack.UseGroupname & Mid(name$, 6)


''Else
''ss$ = Chr$(13) + StripThis2(bstack.UseGroupname) + "." + Mid$(name$, 6)
''End If
Else
If HERE$ = "" Then
SS$ = Chr(13) + name$
Else
SS$ = Chr(13) + myUcase(HERE$) & "." & name$
End If

End If
j = rinstr(arrname$, SS$)
If j > 0 Then
Mid$(arrname$, j + Len(SS$), 17) = arrcode$
ReboundArr = True
End If
End Function
Function ReboundVar(bstack As basetask, name$, q As Variant) As Boolean
On Error GoTo 0

Dim j As Long, k As Long, SS$
name$ = myUcase(name$)
If Left$(name$, 5) = "����." Or Left$(name$, 5) = "THIS." Then

SS$ = Chr$(1) + bstack.UseGroupname & Mid(name$, 6) + " "

Else
If HERE$ = "" Then
SS$ = Chr(1) + name$ + " "
Else
SS$ = Chr(1) + myUcase(HERE$) & "." & name$ + " "
End If

End If
j = rinstr(VarName$, SS$)
If j > 0 Then
Mid$(VarName$, j + Len(SS$) - 1, 16) = constwidth(CLng(q))
ReboundVar = True
End If
End Function
Function GlobalVar(name$, q As Variant, Optional Link As Boolean = False, Optional makeitglobal As Boolean = False) As Long
On Error GoTo 0
Dim j As Long

If Not Link Then
        
        var2used = var2used + 1
        If UBound(var()) <= var2used Then
        On Error Resume Next

            ReDim Preserve var(UBound(var()) * 2 + 1) As Variant
            If Err.Number > 0 Then
            NOEXECUTION = True
            MyEr Err.Description, Err.Description
            Err.clear
            Exit Function
            End If
            
        End If
        j = var2used
            If Right$(name$, 1) = "%" Then
                On Error Resume Next
                q = Int(q)
                If Err.Number = 6 Then q = 0
                On Error GoTo 0
            End If

        var(j) = q

Else
If CStr(q) = "" Then
j = 0
Else
    j = CLng(q)
End If
End If
If HERE$ = "" Or makeitglobal Then
VarName$ = VarName$ & Chr(1) + myUcase(name$) + constwidth(j)
Else
VarName$ = VarName$ & Chr(1) + myUcase(HERE$) & "." & myUcase(name$) + constwidth(j)
End If
GlobalVar = j
End Function
Function GlobalVarRefOnly(name$) As Long
On Error GoTo 0
Dim j As Long
var2used = var2used + 1
If UBound(var()) <= var2used Then
On Error Resume Next
    ReDim Preserve var(UBound(var()) * 2 + 1) As Variant
    If Err.Number > 0 Then
    NOEXECUTION = True
    MyEr Err.Description, Err.Description
    Err.clear
    Exit Function
    End If
    
End If
j = var2used
 var(j) = CLng(0)  ' like an empty...
If HERE$ = "" Then
VarName$ = VarName$ & Chr(1) + myUcase(name$) + constwidth(j)
Else
VarName$ = VarName$ & Chr(1) + myUcase(HERE$) & "." & myUcase(name$) + constwidth(j)
End If
GlobalVarRefOnly = j
End Function
Function LinkGroup(ByVal name$, q As Variant) As Boolean
Dim i As Long, Vlist, AList, FList, f$

If Typename(q) <> "Group" Then Exit Function

If HERE$ = "" Then
name$ = myUcase(name$) + "."
Else
 name$ = myUcase(HERE$) & "." & myUcase(name$) + "."
End If
With q
Vlist = .VarlistTotal(var(), True)
AList = .ArrlistTotal(var(), True)
FList = .FunclistTotal(var(), True)
If Vlist <> "" Then f$ = Chr$(1) + "_ ": VarName$ = VarName$ + Replace(Vlist, f$, Chr$(1) + name$)
If AList <> "" Then f$ = Chr$(13) + "__": arrname$ = arrname$ + Replace(AList, f$, Chr$(13) + name$)
If FList <> "" Then SubName$ = Replace(Replace(FList, Chr$(3), name$), Chr$(2), name$) + SubName$

LinkGroup = Vlist <> "" Or AList <> "" Or FList <> ""
End With

End Function

Sub GlobalArr(bstack As basetask, name$, rst$, items As Long, q As Long, Optional useglobalname As Boolean = False)
' new mArray..
Dim afto As New mArray, newkey As String
If rst$ = "" And q = -1 Then
' Make an empty array
GoTo dummyarray
End If


Dim j As Long, i As Long, p As Double, aa As Boolean
items = 1
i = 0

Do
If IsExp(bstack, rst$, p) Then
i = i + 1
items = items * Int(Abs(p))
afto.PushDim CLng(p)
aa = True
End If
If i > 9 Then Exit Do
Loop Until Not FastSymbol(rst$, ",")

If aa And FastSymbol(rst$, ")") Then
    afto.PushEnd
dummyarray:
    newkey = GetTag$
    ' check valid
    
    On Error Resume Next
    Err.clear
    If InStr(arrname$, " " + newkey$) <> 0 Then
     GoTo dummyarray
    End If

    
    If q = -1 Then rst$ = newkey 'a way to return the handler
    If HERE$ = "" Or useglobalname Then
        arrname$ = arrname$ & Chr(13) + bstack.GroupName + myUcase(name$) & " " & newkey
        afto.arrname = name$
    Else
        arrname$ = arrname$ & Chr(13) + myUcase(HERE$) + "." & bstack.GroupName + myUcase(name$) & " " & newkey
        afto.arrname = myUcase(HERE$) & "." & myUcase(name$)
    End If
    
    neoArray.Add afto, newkey
Else
If FastSymbol(rst$, ",") Then
items = 0
MyEr "No more 10 dimensions allowed", "����� 10 ���������� ������������)"
Else

    items = -1
    rst$ = ":?" & rst$
    End If
End If
End Sub
Sub GlobalArrResize(afto As mArray, bstack As basetask, name$, rst$, items As Long, q As Long)
' new mArray..

Dim j As Long, i As Long, p As Double, aa As Boolean
items = 1
i = 0
afto.StartResize
Do
If IsExp(bstack, rst$, p) Then
i = i + 1
items = items * Int(Abs(p))
afto.PushDim CLng(p)
aa = True
End If
If i > 9 Then Exit Do
Loop Until Not FastSymbol(rst$, ",")
afto.PushEnd
If aa And FastSymbol(rst$, ")") Then
    

Else
     If FastSymbol(rst$, ",") Then
items = 0
MyEr "No more 10 dimensions allowed", "����� 10 ���������� ������������)"
Else
    items = -1
    rst$ = ":?" & rst$
    End If
End If
End Sub

Function GetArrayDim(nm$, ByVal i As Long) As Long
Dim k As Long, x As Long

Dim n$
n$ = Chr(13) + HERE$ & "." & myUcase(nm$)
k = InStrRev(arrname$, n$)
If k = 0 Then
n$ = Chr(13) + myUcase(nm$)
k = InStrRev(arrname$, n$)
End If
If k = 0 Then
GetArrayDim = 0
Else
If i = 0 Then
    k = k + Len(n$) + 1
    GetArrayDim = Asc(Mid$(arrname$, k, 1))
 ' we give the dimensions
Else
    k = k + Len(n$) + 2
    While i > 0
   k = InStr(k, arrname$, Chr(2)) + 1
   i = i - 1
   Wend
   GetArrayDim = Val(Mid$(arrname$, k))
End If
End If
End Function
Function neoGetArray(bstack As basetask, ByVal nm$, ga As mArray, Optional searchonly As Boolean = False, Optional useglobalname As Boolean = False, Optional useLocalOnly As Boolean = False) As Boolean
Dim k As Long
Dim n$
nm$ = myUcase(nm$)


If useglobalname Then
n$ = Chr(13) + bstack.GroupName + nm$

Else

n$ = Chr(13) + HERE$ & "." + bstack.GroupName + nm$

End If

k = InStrRev(arrname$, n$)
If k = 0 And bstack.UseGroupname <> "" Then
If Left$(nm$, 5) = "����." Or Left$(nm$, 5) = "THIS." Then
 If useLocalOnly Then Exit Function
n$ = Chr$(13) + bstack.UseGroupname + Mid$(nm$, 6)
k = InStrRev(arrname$, n$)
If k = 0 Then
                n$ = myUcase(Mid$(nm$, 5))
                    If bstack.GetDot(n$, 1) Then
                    n$ = Chr(13) + n$
                 k = InStrRev(arrname$, n$)
                 End If

End If
End If
End If


If k = 0 Then

            If searchonly Then Exit Function
            If Not useLocalOnly Then
                        n$ = Chr(13) + myUcase(nm$)
                        k = InStrRev(arrname$, n$)
            End If
End If


If k > 0 Then
k = k + Len(n$) + 1
Set ga = neoArray(Mid$(arrname$, k, 16)): neoGetArray = True
         
           
           

End If


End Function
Function neoGetArrayLinkOnly(bstack As basetask, ByVal nm$, Link$, Optional useglobalname As Boolean = False, Optional useLocalOnly As Boolean = False) As Boolean
Dim k As Long
Dim n$
nm$ = myUcase(nm$)
If Len(nm$) > 5 And False Then
           ' not used any more
                If Left$(nm$, 5) = "THIS." Then
               
                    n$ = StripThis2(HERE$)
                    If n$ <> "" Then n$ = Chr(13) + n$ & "." & bstack.GroupName & Mid(nm$, 6) Else n$ = Chr(13) + HERE$ & "." & nm$
                ElseIf Left$(nm$, 5) = "����." Then
           
                    n$ = StripThis2(HERE$)
                    If n$ <> "" Then n$ = Chr(13) + n$ & "." & bstack.GroupName & Mid(nm$, 6) Else n$ = Chr(13) + HERE$ & "." & nm$
                Else
                If useglobalname Then
                    n$ = Chr(13) + nm$
                    Else
                    n$ = Chr(13) + HERE$ & "." & bstack.GroupName & nm$
                    End If
                End If

Else
If useglobalname Then
n$ = Chr(13) & bstack.GroupName + nm$

Else
If HERE$ = "" Then
n$ = Chr(13) + bstack.GroupName & nm$
Else
n$ = Chr(13) + HERE$ & "." & bstack.GroupName & nm$
End If
End If
End If
k = InStrRev(arrname$, n$)
If k = 0 And bstack.UseGroupname <> "" Then
If Left$(nm$, 5) = "����." Or Left$(nm$, 5) = "THIS." Then
 If useLocalOnly Then Exit Function
If StripThis2(bstack.UseGroupname) = "" Then
n$ = Chr$(13) + bstack.UseGroupname + Mid$(nm$, 6)
Else
n$ = Chr$(13) + StripThis2(bstack.UseGroupname) + "." + Mid$(nm$, 6)
End If
k = InStrRev(arrname$, n$)
End If
End If
If k = 0 Then

If Not useLocalOnly Then
n$ = Chr(13) + myUcase(nm$)
k = InStrRev(arrname$, n$)
End If
End If
If k > 0 Then
k = k + Len(n$) + 1
Link$ = Mid$(arrname$, k, 16)
neoGetArrayLinkOnly = True
End If

End Function

Function CopyArrayItems(nm$) As String
Dim k As Long, nd As Long, sd1 As Long
Dim n$
n$ = Chr(13) + HERE$ & "." & myUcase(nm$)
k = InStrRev(arrname$, n$)
If k = 0 Then
n$ = Chr(13) + myUcase(nm$)
k = InStrRev(arrname$, n$)
End If
If k > 0 Then

    k = k + Len(n$) + 1 'for space
   sd1 = k
   
    k = InStr(k + 1, arrname$ & Chr$(13), Chr(13)) + 1
    If k > 0 Then
    CopyArrayItems = Mid$(arrname$, sd1, k - sd1 - 1)
    End If
End If
End Function

Function CopyArrayItemsNoFormated(nm$) As String
Dim k As Long, nd As Long, sd1 As Long
Dim n$
n$ = Chr(13) + myUcase(nm$) + "("
k = rinstr(arrname$, n$)
If k > 0 Then

    k = k + Len(n$)
   sd1 = k
   
    k = InStr(k + 1, arrname$ & Chr$(13), Chr(13)) + 1
    If k > 0 Then
    CopyArrayItemsNoFormated = Mid$(arrname$, sd1, k - sd1 - 1)
    End If
End If
End Function

Function GlobalSub(name$, q As String, Optional sbgroupname As String = "") As Long
Dim j As Long

On Error Resume Next
If UBound(SB()) <= sb2used + 1 Then
ReDim Preserve SB(UBound(SB()) * 2 + 1) As String
ReDim Preserve SBC(UBound(SBC()) * 2 + 1) As Long
ReDim Preserve sbgroup(UBound(sbgroup()) * 2 + 1) As String
End If
sb2used = sb2used + 1
SB(sb2used) = q
sbgroup(sb2used) = sbgroupname
SubName$ = Chr(1) + myUcase(name$) + Str$(sb2used) + Chr(1) + SubName$
GlobalSub = sb2used
End Function

Function GetGlobalVar(nm$, i As Long) As Boolean

Dim n$
n$ = Chr(1) + myUcase(nm$) & " "
i = InStrRev(VarName$, n$)
If i > 0 Then
GetGlobalVar = True
i = Val(Mid$(VarName$, i + Len(n$)))
Else
GetGlobalVar = False
End If
End Function
Function StripThis(ByVal n$) As String

Dim A$, b$, i&

A$ = StripRVAL(n$)  ' we need that
If A$ = n$ Then
StripThis = ""
Exit Function
Else
b$ = A$
End If
i& = InStr(n$, ".")
If i& > 0 Then

DropLeft ".", n$
i& = InStrRev(n$, ".") - 1
If i& > 0 Then
StripThis = b$ & "." & Left$(n$, i&)
Else
StripThis = b$
End If
Else
StripThis = b$
End If
End Function
Function StripThis2(ByVal n$) As String

Dim A$, b$, i&

If StripRVAL2(n$, A$) Then
StripThis2 = A$
Exit Function
End If
If A$ = n$ Then
StripThis2 = ""
Exit Function
Else
b$ = A$
End If
i& = InStr(n$, ".")
If i& > 0 Then

DropLeft ".", n$
i& = InStrRev(n$, ".") - 1
If i& > 0 Then
StripThis2 = b$ & "." & Left$(n$, i&)
Else
StripThis2 = b$
End If
Else
StripThis2 = b$
End If
End Function
Function GetVar2(bstack As basetask, ByVal nm$, i As Long) As Boolean
nm$ = myUcase(nm$)
Dim n$
If Len(nm$) > 5 Then

If Left$(nm$, 5) = "THIS." Then
n$ = Chr(1) + StripThis2(HERE$) & "." & bstack.GroupName & Mid(nm$, 6) & " "
ElseIf Left$(nm$, 5) = "����." Then
n$ = Chr(1) + StripThis2(HERE$) & "." & bstack.GroupName & Mid(nm$, 6) & " "
Else
n$ = Chr(1) + HERE$ & "." & nm$ & " "
End If

Else
n$ = Chr(1) + HERE$ & "." & nm$ & " "
End If
i = InStrRev(VarName$, n$)

If i = 0 Then
n$ = Chr(1) + nm$ & " "
i = InStrRev(VarName$, n$)
End If
If i > 0 Then
GetVar2 = True
i = Val(Mid$(VarName$, i + Len(n$)))
Else
GetVar2 = False
End If
End Function
Function GetVar(bstack As basetask, ByVal nm$, i As Long, Optional lookglobalonly As Boolean = False, Optional skip As Boolean, Optional looklocalonly As Boolean = False) As Boolean
If skip Then Exit Function
''nm$ = myUcase(nm$)

Dim n$

If Len(nm$) > 5 Then
    If Left$(nm$, 5) = "����." Or Left$(nm$, 5) = "THIS." Then
        If bstack.UseGroupname <> "" Then
                n$ = Chr$(1) + bstack.UseGroupname + Mid$(nm$, 6) + " "
                i = InStrRev(VarName$, n$)
                If i > 0 Then GoTo there12
        Else
        
            n$ = StripThis2(HERE$)
            If n$ <> "" Then
            n$ = Chr(1) + n$ & "." & Mid(nm$, 6) & " "
            
            Else
            If IsLabel(bstack, Mid$(nm$, 6), n$) Then ' NO NEED DOT ANY MORE..(WE USE DOTNEW)
                    n$ = Chr(1) + HERE$ & "." & n$ & " "
            Else
                        n$ = Chr(1) + HERE$ & "." & nm$ & " "   '????
            End If
            End If
        End If
    Else
    If lookglobalonly Then
     n$ = Chr(1) + nm$ & " "
    Else
        n$ = Chr(1) + HERE$ & "." & nm$ & " "
        End If
    End If
Else
If nm$ = "THIS" Or nm$ = "����" Then
  n$ = ".DELETEME"
    If IsLabel(bstack, (n$), n$) < 0 Then
        If Len(n$) = 8 Then GetVar = False: Exit Function
    nm$ = Left$(n$, Len(n$) - 9)
    End If
End If
    If lookglobalonly Then
         n$ = Chr(1) + nm$ & " "
        Else

                n$ = Chr(1) + HERE$ & "." & bstack.GroupName & nm$ & " "
   
    End If
End If
i = InStrRev(VarName$, n$)

If i = 0 Then
If Not looklocalonly Then
n$ = Chr(1) + nm$ & " "
i = InStrRev(VarName$, n$)
End If
End If
'***********************
If i > 0 Then
there12:
GetVar = True
i = Val(Mid$(VarName$, i + Len(n$)))
Else



GetVar = False
End If
End Function
Function GetlocalVar(nm$, i As Long) As Boolean
Dim n$
n$ = Chr(1) + HERE$ & "." & myUcase(nm$) & " "
i = InStrRev(VarName$, n$)
If i > 0 Then
GetlocalVar = True
i = Val(Mid$(VarName$, i + Len(n$)))
Else
GetlocalVar = False
End If
End Function

Function RVAL(ByVal s$, V As Long) As String
Dim SS$
If InStr(s$, "[") = 0 Then
RVAL = s$ & "[" & CStr(V) & "]"
Else
SS$ = GetStrUntil("[", s$)

RVAL = SS$ & "[" & CStr(Val(s$) + V) & "]"
End If
End Function
Function TheSame(ByVal s$, ByVal q$) As Boolean
Dim part1 As String
part1 = StripRVAL(s$)
If part1 <> "" Then
    If InStr(part1, ".") > 0 Then
    ' all in part1
    Else
    DropLeft ".", s$
    part1 = part1 & "." & s$
    End If
    End If
TheSame = part1 = q$
End Function
Function StripRVAL2(s$, result$) As Boolean
' return s$ number as string
' return function name...
'
Dim bb$
bb$ = s$
If InStr(s$, "[") = 0 Then
' look varlist to find group
Dim i As Long
i = InStrRev(s$, ".")
If i > 1 Then s$ = Left$(s$, i - 1)
If InStrRev(VarName$, "." + s$ + " ") < 1 Then Exit Function
s$ = Mid$(VarName$, InStrRev(VarName$, Chr$(1), InStrRev(VarName$, "." + s$ + " ")) + 1)
result$ = GetStrUntil(" ", s$)
StripRVAL2 = True
If Not Typename(var(Val(s$))) = "Group" Then StripRVAL2 = False: s$ = bb$: result$ = ""
Else
result$ = GetStrUntil("[", s$)
End If

End Function
Function StripRVAL(ByVal s$) As String
If InStr(s$, "[") = 0 Then
' do not delete this.....
StripRVAL = s$
Else
StripRVAL = GetStrUntil("[", s$)
End If
End Function
Function iRVAL(ByVal s$, V As Long) As Long
If InStr(s$, "[") = 0 Then
iRVAL = V
Else
DropLeft "[", s$
iRVAL = Val(s$) + V
End If
End Function
Function LookFastForModule(w$) As Boolean
Dim A As Long
A = InStr(SubName, w$ + " ")
If A > 0 Then
 LookFastForModule = InStr(Chr$(1) + ".", Mid$(SubName, A - 1, 1)) > 0
 End If
End Function
Function GetSubFullName(nm$, fullname$) As Boolean
Dim i&, n$
''nm$ = myUcase(nm$)

If Len(HERE$) > 0 Then
If Len(HERE$) > Len(nm$) Then
If Mid$(HERE$, Len(HERE$) - Len(nm$)) = "." + nm$ Then
n$ = "." & nm$ & " "
i& = InStr(SubName$, n$)
Dim j&
If i& > 0 Then
j& = InStrRev(SubName$, Chr$(1), i&)
nm$ = Mid$(SubName$, j& + 1, Len(nm$) + i& - j&)
n$ = Mid$(SubName$, j&, Len(nm$) + 1)
i& = j&   ' include a quard char
 
End If
End If

End If
End If

If i& = 0 Then
n$ = Chr(1) + HERE$ & "." & nm$ & " "
i& = InStr(SubName$, n$)
End If
If i& = 0 Then
''n$ = Chr(1) + myUcase(nm$) & " "
n$ = Chr(1) + nm$ & " "
i& = InStr(SubName$, n$)
End If

If i& > 0 Then
GetSubFullName = True
fullname$ = RTrim$(Mid$(n$, 2))


Else
GetSubFullName = False

End If

End Function
Function GetSub(nm$, i&) As Boolean
i& = 0
Dim n$
''nm$ = myUcase(nm$)

If Len(HERE$) > 0 Then
If Len(HERE$) > Len(nm$) Then
If Mid$(HERE$, Len(HERE$) - Len(nm$)) = "." + nm$ Then
n$ = "." & nm$ & " "
i& = InStr(SubName$, n$)
Dim j&
If i& > 0 Then
j& = InStrRev(SubName$, Chr$(1), i&)
nm$ = Mid$(SubName$, j& + 1, Len(nm$) + i& - j&)
n$ = Mid$(SubName$, j&, Len(nm$) + 1)
i& = j&   ' include a quard char
 
End If
End If

End If
End If

If i& = 0 Then
n$ = Chr(1) + HERE$ & "." & nm$ & " "
i& = InStr(SubName$, n$)
End If
If i& = 0 Then
''n$ = Chr(1) + myUcase(nm$) & " "
n$ = Chr(1) + nm$ & " "
i& = InStr(SubName$, n$)
End If

If i& > 0 Then
GetSub = True
i& = Val(Trim$(Mid$(SubName$, i& + Len(n$))))

Else
GetSub = False
End If

End Function
Function GetSubRename(nm$, i&, neo$) As Boolean
i& = 0
Dim n$
'''nm$ = myUcase(nm$)

If Len(HERE$) > 0 Then
If Len(HERE$) > Len(nm$) Then
' corrected in version 7.8
If Mid$(HERE$, Len(HERE$) - Len(nm$)) = "." + nm$ Then
n$ = "." & nm$ & " "
i& = InStrRev(SubName$, n$)
Dim j&
If i& > 0 Then
j& = InStrRev(SubName$, Chr$(1), i&)

n$ = Mid$(SubName$, j& + 1, Len(nm$) + i& - j&)
i& = j&
nm$ = n$
End If
End If

End If
End If
If i& = 0 Then
n$ = Chr(1) + HERE$ & "." & nm$ & " "
i& = InStrRev(SubName$, n$)
End If
If i& = 0 Then
'' n$ = Chr(1) + myUcase(nm$) & " "
n$ = Chr(1) + nm$ & " "
i& = InStrRev(SubName$, n$)
End If

If i& > 0 Then
GetSubRename = True
SubName$ = Mid$(SubName$, 1, i&) + neo$ + Mid$(SubName$, i& + Len(n$) - 1)
Else
GetSubRename = False
End If
End Function
Function GetlocalSub(nm$, i&) As Boolean
Dim n$
n$ = Chr(1) + HERE$ & "." & nm$ & " "
i& = InStr(SubName$, n$)
If i& > 0 Then
GetlocalSub = True
i& = Val(Mid$(SubName$, i& + Len(n$)))
Else
GetlocalSub = False
End If
End Function
Function GetGlobalSubAfterHere(nm$, i&) As Boolean
Dim n$, n1$, j&
n1$ = Chr(1) + HERE$ + " "
j& = InStr(SubName$, n1$)
If j& <= 1 Then Exit Function
'' n$ = Chr(1) + myUcase(nm$) + " "
n$ = Chr(1) + nm$ + " "
i& = InStrRev(SubName$, n$, j& - 1)
If i& > 0 Then
GetGlobalSubAfterHere = True
i& = Val(Mid$(SubName$, i& + Len(n$)))
Else
GetGlobalSubAfterHere = False
End If
End Function

Function GetlocalSubExtra(nm$, i&) As Boolean
Dim n$
' n$ = "." & myUcase(nm$) & " "
n$ = "." & nm$ & " "
i& = InStr(SubName$, n$)
If i& > 0 Then

GetlocalSubExtra = True
i& = Val(Mid$(SubName$, i& + Len(n$)))
Else
GetlocalSubExtra = False
End If
End Function
Function PosLabel(ByVal w$, ByVal b$) As Long
Dim i As Long, j As Long, jmp As Boolean
On Error Resume Next
If Val(Left$(w$, 1)) = 0 Then w$ = w$ & ":": jmp = True

PosLabel = Len(b$) + 1

If Left$(b$, Len(w$)) = w$ Then
    i = 1
Else
i = InStr(b$, Chr(10) + w$)
If i = 0 Then

    Do
    i = InStr(i + 1, b$, " " & w$)
    If i = 0 Then Exit Do
    j = Len(RTrim(Left$(b$, i)))
    If j = 0 Then Exit Do
    If Mid$(b$, j, 1) = Chr(10) Then Exit Do
    Loop
    If i = 0 Then
    Do
    i = InStr(i + 1, b$, "0" & w$)
    If i = 0 Then Exit Do

    j = Len(RTrim(Left$(b$, i)))
    If j = 0 Then Exit Do
    
    While j > 1 And Mid$(b$, j, 1) = "0"
            j = j - 1
    Wend
    
    If Mid$(b$, j, 1) = Chr(10) Then Exit Do
    Loop
    End If
End If

End If
If jmp Then
If i > 0 Then PosLabel = i + 1
Else
If i > 1 Then PosLabel = i + 1 '' Else PosLabel = 1
End If
End Function

Function logical(basestack As basetask, s$, D As Double) As Boolean
Dim b$, S2$, s3$ ' , OSTAC$
Dim ah As String

ah = aheadstatus(s$, False)    '
If InStr(ah, "l") = 0 Then
If InStr(ah, "N") > 0 Then

''If MaybeIsSymbol(s$, "#0123456789") Then
'logical = IsNumberCheck(s$, d)
''Else
logical = IsNumber(basestack, s$, D)
''End If
Else
logical = False
End If
Exit Function
End If

On Error Resume Next

If Err.Number > 0 Then Exit Function
S2$ = s$

If Left$(ah, 1) <> "N" Then
 IsStrExp basestack, s$, b$
logical = False
If FastSymbol(s$, "=") Then
    logical = False
    If IsStrExp(basestack, s$, S2$) Then
    logical = True
    If b$ = S2$ Then D = -1 Else D = 0
    Exit Function
    Else
    If LastErNum = -2 Then logical = True
    Exit Function
    End If
ElseIf FastSymbol(s$, "<>") Then
    logical = False
    If IsStrExp(basestack, s$, S2$) Then
    logical = True
    If b$ <> S2$ Then D = -1 Else D = 0
    Exit Function
        Else
    If LastErNum = -2 Then logical = True
    Exit Function
    End If
ElseIf FastSymbol(s$, "<=") Then
    logical = False
    If IsStrExp(basestack, s$, S2$) Then
    logical = True
    If b$ <= S2$ Then D = -1 Else D = 0
    Exit Function
            Else
    If LastErNum = -2 Then logical = True
    Exit Function
    End If
ElseIf FastSymbol(s$, "<") Then
    logical = False
    If IsStrExp(basestack, s$, S2$) Then
    logical = True
    If b$ < S2$ Then D = -1 Else D = 0
    Exit Function
            Else
    If LastErNum = -2 Then logical = True
    Exit Function
    End If
ElseIf FastSymbol(s$, ">=") Then
    logical = False
    If IsStrExp(basestack, s$, S2$) Then
    logical = True
    If b$ >= S2$ Then D = -1 Else D = 0
    Exit Function
            Else
    If LastErNum = -2 Then logical = True
    Exit Function
    End If
ElseIf FastSymbol(s$, ">") Then
    logical = False
    If IsStrExp(basestack, s$, S2$) Then
    logical = True
    If b$ > S2$ Then D = -1 Else D = 0
    Exit Function
            Else
    If LastErNum = -2 Then logical = True
    Exit Function
    End If
ElseIf FastSymbol(s$, "~") Then
    logical = False
    If IsStrExp(basestack, s$, S2$) Then
    logical = True
    If b$ Like S2$ Then D = -1 Else D = 0
    Exit Function
            Else
    If LastErNum = -2 Then logical = True
    Exit Function
    End If
End If

If LastErNum <> -2 Then s$ = S2$

Else

s$ = S2$
If IsNumber(basestack, s$, D) Then
logical = True
Else

End If
End If
End Function
Function BlockParam(s$) As String
' need to be open
Dim i As Long, j As Long
j = 1
For i = 1 To Len(s$)
Select Case Asc(Mid$(s$, i, 1))
Case 0
Exit For
Case 34
i = InStr(i + 1, s$, Chr(34))
If i = 0 Then Exit Function
Case 40
j = j + 1
Case 41
j = j - 1
If j = 0 Then Exit For
Case 123
i = InStr(i + 1, s$, Chr$(125))
If i = 0 Then Exit Function
End Select
Next i
If j = 0 Then
BlockParam = Left$(s$, i - 1)
End If
End Function
Function block(s$) As String
Dim i As Long, j As Long, c As Long
Dim a1 As Boolean
Dim jump As Boolean
If Trim(s$) = "" Then Exit Function
c = Len(s$)
a1 = True
i = 1
Do
Select Case Asc(Mid$(s$, i, 1))
Case 32
' nothing
Case 34
Do While i < c
i = i + 1
If Asc(Mid$(s$, i, 1)) = 34 Then Exit Do
Loop
Case 39, 92
Do While i < c
i = i + 1
If Mid$(s$, i, 2) = vbCrLf Then Exit Do
Loop
Case 61
jump = True
Case 123


If jump Then
jump = False
' we have a multiline text
Dim target As Long
target = j
    Do
    Select Case Asc(Mid$(s$, i, 1))
    Case 34
    Do While i < c
    i = i + 1
    If Asc(Mid$(s$, i, 1)) = 34 Then Exit Do
    Loop
    Case 123
    j = j - 1
    Case 125
    j = j + 1: If j = target Then Exit Do
    End Select
    i = i + 1
    Loop Until i > c
    If j <> target Then Exit Do
    Else
j = j - 1
End If


Case 125
j = j + 1: If j = 1 Then Exit Do
Case Else
jump = False

End Select
i = i + 1
Loop Until i > c
If j = 1 Then
block = Left$(s$, i - 1)
s$ = Mid$(s$, i)
'DoEvents
Else
block = "" '' "Error " & chr(34) & "missing }" & chr(34)
End If



End Function
Function block2(s$) As String
Dim i As Long, j As Long, c As Long
Dim a1 As Boolean
Dim jump As Boolean
Dim alter As Boolean
If Trim(s$) = "" Then Exit Function

c = Len(s$)
a1 = True
i = 1
Do
Select Case Asc(Mid$(s$, i, 1))
Case 32
' nothing
Case 34
Do While i < c
i = i + 1
If Asc(Mid$(s$, i, 1)) = 34 Then Exit Do
Loop
Case 39, 92
Do While i < c
i = i + 1
If Mid$(s$, i, 2) = vbCrLf Then Exit Do
Loop
Case 61
jump = True
Case 123


If jump Then
jump = False
' we have a multiline text
Dim target As Long
target = j
    Do
    Select Case Asc(Mid$(s$, i, 1))
    Case 34
    Do While i < c
    i = i + 1
    If Asc(Mid$(s$, i, 1)) = 34 Then Exit Do
    Loop
    Case 123
    j = j - 1
    Case 125
    j = j + 1: If j = target Then Exit Do
    End Select
    i = i + 1
    Loop Until i > c
    If j <> target Then Exit Do
    Else
j = j - 1
End If


Case 125
j = j + 1: If j = 1 Then Exit Do
Case Else
jump = False

End Select
i = i + 1
Loop Until i > c
If j = 1 Then
block2 = Left$(s$, i - 1)
s$ = Mid$(s$, i)
'DoEvents
Else
block2 = "" '' "Error " & chr(34) & "missing }" & chr(34)
End If



End Function
Function blockString(s$) As String
Dim i As Long, j As Long, c As Long
Dim a1 As Boolean
c = Len(s$)
a1 = True
i = 1
Do
Select Case Asc(Mid$(s$, i, 1))
Case 34
Do While i < c
i = i + 1
If Asc(Mid$(s$, i, 1)) = 34 Then Exit Do
Loop
Case 123
j = j - 1
Case 125
j = j + 1: If j = 1 Then Exit Do
End Select
i = i + 1
Loop Until i > c
If j = 1 Then
blockString = Left$(s$, i - 1)
s$ = Mid$(s$, i)
Else
blockString = "Error " & Chr(34) & "missing }" & Chr(34)
End If
If Right$(blockString, 1) = " " Then
i = Len(blockString) - Len(RTrim(blockString))
If i > 0 Then blockString = ReplaceStr(Chr$(10) + Space(i), Chr$(10), blockString)
End If

End Function
Sub SetNextLine(c$)
Dim i
i = InStr(c$, vbCrLf)
If i = 0 Then c$ = "" Else c$ = Mid$(c$, i + 2)
End Sub
Function GetNextLine(c$) As String
Dim i, j$
i = InStr(c$, vbCrLf)
If i = 0 Then GetNextLine = Trim$(c$): c$ = "" Else GetNextLine$ = Trim$(Left$(c$, i - 1)): c$ = Mid$(c$, i)
End Function

Sub NoLines(c$)
Dim i
c$ = Trim(c$)
Do While Left$(c$, 2) = vbCrLf
c$ = Trim$(Mid$(c$, 3))
Loop
End Sub

Sub RTarget(ddd As Object, tar As target)
' RENDER TARGET
Dim xl&, yl&, b As Long, f As Long, Tag$, Id&
Dim x&, y&, ox&, oy&
Dim prive As basket, D As Object
Set D = ddd.Owner
prive = players(GetCode(D))
With tar
Id& = .Id
Tag$ = .Tag
x& = .Lx
y& = .ly
xl& = .tx + 1
yl& = .ty
b = .back
f = .fore
prive.mypen = .Pen

Dim dd As Object
If .layer = 0 Then
Set dd = Form1.DIS
ElseIf .layer = -1 Then
Set dd = Form1
ElseIf .layer > 0 Then
Set dd = Form1.dSprite(.layer)
End If

prive.Xt = .Xt
prive.Yt = .Yt
prive.uMineLineSpace = .sUAddTwipsTop
prive.mx = 100
prive.My = 100
prive.SZ = .SZ
End With
dd.FontSize = prive.SZ
LCTbasket dd, prive, y&, x&
If f <> -1 Then BoxBigNew dd, prive, xl& - 1, yl&, f
If b <> -1 Then BoxColorNew dd, prive, xl& - 1, yl&, b
If Id& < 100 Then

    Tag$ = Left$(Tag$, xl& - x&)
    If Tag$ <> "" Then
    '1
    Select Case Id& Mod 10
    Case 4, 5, 6
    y& = (yl& + y&) \ 2
    Case 7, 8, 9
    y& = yl&
    Case Else
    End Select
    
    Select Case Id& Mod 10
    Case 2, 5, 8
   
    x& = (xl& + x& - Len(Tag$)) \ 2
    Case 3, 6, 9
    x& = xl& - Len(Tag$)
    
    Case Else
    End Select
    If (Id& Mod 10) > 0 Then
    LCTbasket dd, prive, y&, x&
    dd.FontTransparent = True
    dd.ForeColor = mycolor(prive.mypen)
    ' ��� ������ �� �� �� ���� basetask �� ������� � ������...
       PlainBaSket dd, prive, Tag$, True, True
    End If
    End If
Else
        If Tag$ <> "" Then
    Id& = Id& Mod 100
    Select Case Id& Mod 10
    Case 4, 5, 6
    y& = (yl& + y&) \ 2
    Case 7, 8, 9
    y& = yl&
    Case Else
    End Select
    f = 3
    Select Case Id& Mod 10
    Case 2, 5, 8
    f = 2
    Case 3, 6, 9
    f = 1
    Case Else
    End Select
    
    If (Id& Mod 10) > 0 Then
    LCTbasket dd, prive, y&, x&
    dd.FontTransparent = True
    dd.CurrentX = dd.CurrentX - dv15 * 2
    wwPlain ddd, prive, Tag$, xl& - x&, 10000, , True, f, , , True
  
    End If
End If
    

End If
PlaceBasket dd, players(GetCode(dd))
End Sub
Private Function textDel(ByVal ThisFile As String) As Boolean
Dim chk As String
ThisFile = strTemp + ThisFile
chk = CFname(ThisFile)
textDel = (chk <> "")
If chk <> "" Then Kill chk
End Function
Private Function textPUT(bstack As basetask, ByVal ThisFile As String, THISBODY As String, c$, mode2save As Long) As Boolean
Dim chk As String, b$, j As Long, PREPARE$, VR$, s$, V As Double, buf$, i As Long
ThisFile = strTemp + ThisFile
chk = GetDosPath(ThisFile)
If chk <> "" And c$ = "new" Then Kill GetDosPath(chk)
On Error GoTo HM
textPUT = True
Do
j = InStr(THISBODY, "##")
If j = 0 Then PREPARE$ = PREPARE$ & THISBODY: Exit Do
If j > 1 Then PREPARE$ = PREPARE$ & Mid$(THISBODY, 1, InStr(THISBODY, "##") - 1)
THISBODY = Mid$(THISBODY, j + 2)
j = InStr(THISBODY, "##")
If j = 0 Then PREPARE$ = PREPARE$ & THISBODY: Exit Do
If j > 1 Then VR$ = Mid$(THISBODY, 1, InStr(THISBODY, "##") - 1)
THISBODY = Mid$(THISBODY, j + 2)
'
If IsExp(bstack, VR$, V) Then
buf$ = Trim$(Str$(V))
ElseIf IsStrExp(bstack, VR$, s$) Then
buf$ = s$
Else
buf$ = VR$
End If
PREPARE$ = PREPARE$ & buf$
Loop
           If Not WeCanWrite(ThisFile) Then GoTo HM

textPUT = SaveUnicode(ThisFile, PREPARE$, mode2save, Not (c$ = "new"))
Exit Function
HM:
textPUT = False
End Function
Public Sub DropLeft(ByVal uStr As String, fromStr As String)
Dim i As Long
i = InStr(fromStr, uStr)
If i > 0 Then
fromStr = Mid$(fromStr, i + Len(uStr))
Else
fromStr = ""
End If
End Sub
Public Function GetStrUntil(ByVal sStr As String, fromStr As String, Optional RemoveSstr As Boolean = True) As String
Dim i As Long

If fromStr = "" Then GetStrUntil = "": Exit Function
i = InStr(fromStr, sStr)
If i < 2 Then
GetStrUntil = ""
fromStr = ""
Else
GetStrUntil = Left$(fromStr, i - 1)
If RemoveSstr Then
fromStr = Mid$(fromStr, Len(sStr) + i)
Else
fromStr = Mid$(fromStr, i)
End If
End If
End Function

Function RESOURCES() As String
'ON ERROR GoTo r1
 '   r1 = GetFreeResources(GFSR_GDIRESOURCES)
  '  r2 = GetFreeResources(GFSR_SYSTEMRESOURCES)
   ' r3 = GetFreeResources(GFSR_USERRESOURCES)
    'If r1 < 12 Or r2 < 12 Or r3 < 12 Then
'    If r1 < 12 Then
'    RESOURCES = "!!GDI!!"
'    ElseIf r2 < 12 Then
'    RESOURCES = "!!SYSTEM!!"
'    Else
'    RESOURCES = "!!USER!!"
'    End If
'    Else
'    RESOURCES = Left$(Format$((r1 + r2 + r3) / 3#, "#0.0"), 2)
'    End If
'    Exit Function
'r1:
    RESOURCES = ""
End Function
Public Function myRegister(tP$) As String
    strTemp = String(MAX_FILENAME_LEN, Chr$(0))
    GetTempPath MAX_FILENAME_LEN, StrPtr(strTemp)
    strTemp = mylcasefILE(Left$(strTemp, InStr(strTemp, Chr(0)) - 1))
Dim i As Long
i = FreeFile
Open strTemp & "tmp." & tP$ For Output As i
Print #i, "test"
Close i
' found me
Dim rl$
rl$ = PCall(strTemp & "tmp." & tP$)
If rl$ <> "" Then
rl$ = GetStrUntil(Chr(34), rl$)
End If
Sleep 10
Kill strTemp & "tmp." & tP$
myRegister = Trim$(rl$)
End Function
Public Function PCall(ByVal sFile As String) As String
Dim S2 As String, i As Long, bsfile As String, rfile As String, MYNULL$
bsfile = mylcasefILE(sFile)
   S2 = String(MAX_FILENAME_LEN, 32)
   'Retrieve the name and handle of the executable, associated with this file
   i = FindExecutable(StrPtr(sFile), StrPtr(MYNULL$), StrPtr(S2))
   If i > 32 Then
   rfile = mylcasefILE(Left$(S2, InStr(S2, Chr$(0)) - 1))
   If ExtractName(bsfile) = ExtractName(rfile) Then
   ' it is an executable
   PCall = mylcasefILE(bsfile)
   Else
      PCall = rfile & " " & Chr(34) + bsfile + Chr(34)
      End If
      Else
      PCall = ""
End If
End Function
Function PathFromApp(ByVal nap$) As String
Dim ap$
nap$ = nap$ & " "
ap$ = GetStrUntil(" ", nap$)
If ExtractType(ap$) = "" Then ap$ = ap$ & ".exe"
Dim cc As New cRegistry
cc.ClassKey = HKEY_CURRENT_USER
cc.SectionKey = "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\" & ap$
cc.ValueKey = ""
cc.ValueType = REG_SZ
On Error GoTo 1111
If IsEmpty(cc.Value) Then
cc.ClassKey = HKEY_LOCAL_MACHINE
If IsEmpty(cc.Value) Then

PathFromApp = ""
Else
PathFromApp = Trim$(mylcasefILE(cc.Value & " " & nap$))

End If
Else
PathFromApp = Trim$(mylcasefILE(cc.Value & " " & nap$))
End If
Exit Function
1111:
PathFromApp = ""
End Function
Public Function MyShell(ww$, Optional way As VbAppWinStyle = vbNormalFocus) As Long
Dim frm$, exst As Boolean, pexist As Boolean, PP$, exe$, PARAM$
' logic
'
On Error GoTo 11111
If ExtractType(ww$) <> "" Then

frm$ = ExtractPath(ww$) + ExtractName(ww$)
PARAM$ = Mid$(ww$, Len(frm$) + 1)
ww$ = frm$
ElseIf ExtractPath(ww$) = "" Then
Dim i As Long, j As Long
i = InStr(ww$, Chr(34))
j = InStrRev(ww$, Chr(34))
If j > i Then
PARAM$ = Mid$(ww$, i, j - i + 1)
ww$ = Left$(ww$, i - 1)
End If

End If
If ww$ = "" Then
If PARAM$ <> "" Then
MyShell = Shell(Trim$(PARAM$), way)
Exit Function
End If
End If
If ExtractPath(ww$) = mylcasefILE(ww$) Then
' it is a path
ww$ = "a.@@@ " & ww$
Else
frm$ = CFname(ww$)
If ExtractName(frm$) <> ExtractName(ww$) Then
On Error Resume Next

MyShell = Shell(Trim$(ww$ & " " & PARAM$), way)
If Err.Number > 0 Then
Err.clear
ww$ = PathFromApp(ww$)
If ww$ <> "" Then
ww$ = ReplaceStr(Chr(34), "", ww$) & " " & PARAM$
MyShell = Shell(Trim$(ww$), way)
End If
End If
Exit Function
End If
If CFname(ww$) <> "" Then ww$ = frm$: exst = True

PP$ = ExtractPath(ww$)
End If
If PP$ <> "" Then
pexist = True
ww$ = Mid$(ww$, Len(PP$) + 1)
End If
ww$ = ww$ & " "
exe$ = ""
If InStr(ww$, ".") > InStr(ww$, " ") Then
exe$ = Left$(ww$, InStr(ww$, "."))
ww$ = Mid$(ww$, Len(exe$) + 1)
End If
ww$ = ww$ & " "
exe$ = exe$ & Trim$(GetStrUntil(" ", ww$))
' until now we have all things splitted
exe$ = mylcasefILE(exe$)
' until now we have all things splitted
Select Case ExtractType(exe$)
Case ""
If pexist Then
' this is not normal
' ***************ERROR*************
Else
' so we put exe by default
exe$ = exe$ & ".exe"
frm$ = PathFromApp(Trim$(exe$ & " " & ww$))
If frm$ <> "" Then
MyShell = Shell(frm$, way)
Exit Function
Else
MyShell = Shell(Trim$(exe$ & " " & ww$ & " " & PARAM$), way)
Exit Function
End If
End If
Case "exe", "bat", "com" ' can be run immediatly
If pexist Then
MyShell = Shell(Trim$(PP$ & exe$ & " " & ww$), way)
Exit Function
Else
frm$ = PathFromApp(Trim$(exe$ & " " & ww$))
If frm$ <> "" Then
MyShell = Shell(frm$, vbNormalFocus)
Exit Function
Else
MyShell = Shell(Trim$(exe$ & " " & ww$), way)
Exit Function
End If
End If
Case "@@@"
MyShell = Shell(RTrim$("explorer " & ww$), way)
Case Else ' its a document
PP$ = ReplaceStr("file:", "", PP$)
frm$ = PCall(PP$ & exe$)
If frm$ <> "" Then
If Asc(frm$) = 34 Then
frm$ = frm$ & "@"
frm$ = ReplaceStr(Chr(34) & "@", PARAM$ & Chr(34), frm$)
frm$ = ReplaceStr("@", "", frm$)
Else
End If
MyShell = Shell(Trim$(frm$ & " " & ww$ & " " & PARAM$), way)
Exit Function
Else
End If
End Select
11111:
MyShell = 0
' its a document
End Function

Private Function ReplaceStr2(sStr As String, dStr As String, fromStr As String) As String
  ReplaceStr2 = Replace$(fromStr, sStr, dStr, vbTextCompare)
End Function
Function StarSTR(ByVal sStr As String) As String
Dim l As Long, s As Long
l = Len(sStr)
sStr = RTrim(sStr)
s = l - Len(sStr)
StarSTR = String$(l - s, "*") + String$(s, " ")

End Function
Function ReplaceStr(sStr As String, dStr As String, fromStr As String) As String
  ReplaceStr = Replace$(fromStr, sStr, dStr)  ' changed
End Function

Sub MyList(bstack As basetask, Optional tofile As Long = -1)
Dim scr As Object, prive As Long
Set scr = bstack.Owner
prive = GetCode(scr)
Dim p As Double, i As Long, s$, pn&, x As Double, y As Double, it As Long, f As Long, pa$
Dim x1 As Long, y1 As Long, frm$, par As Boolean, ohere$, SS$, w$, sx As Double, sy As Double
Dim pppp As mArray, hlp$, h&, all$
pn& = 1
With players(prive)
Do While pn& <= Len(VarName$)
Select Case Asc(Mid$(VarName$, pn&, 1))
Case 1
s$ = ""
Case 32
If InStr(s$, ChrW(&H1FFF)) > 0 Then
Else

    If Right$(s$, 1) = "$" Or Right$(s$, 3) = "$()" Then
        h& = Val(Mid$(VarName$, pn&))
        If Typename(var(h&)) = doc Then
            If var(h&).IsEmpty Then
                hlp$ = " [Empty Document]"
            Else
                hlp$ = " [Document " + CStr(var(h&).SizeCRLF) & " chars]"
            End If
        ElseIf Typename(var(h&)) = "PropReference" Then
        hlp$ = " [Object Property]"
        Else
            If Len(var(Val(Mid$(VarName$, pn&)))) > 3 * .mx Then
                hlp$ = " = " & Chr(34) + Left$(CStr(var(h&)), 4) & "..." & Chr(34)
            Else
                hlp$ = " = " & Chr(34) + CStr(var(h&)) + Chr(34)
            End If
        End If
        s$ = s$ & hlp$
Else
h& = Val(Mid$(VarName$, pn&))
If IsObject(var(h&)) Then
s$ = s$ & "[" & Typename(var(h&)) & "]"
Else
On Error Resume Next
s$ = s$ & " =" & Str(var(Val(Mid$(VarName$, pn&))))
If Err Then
s$ = s$ & " = " & Chr(34) & var(Val(Mid$(VarName$, pn&))) & Chr(34)
Err.clear
End If
End If
End If
If InStr(pn&, VarName$, Chr(1)) <> 0 Or arrname$ <> "" Then s$ = s$ & ", "
If tofile < 0 Then
   If tofile = -1 Then
   If .mx - .curpos < Len(s$) Then crNew bstack, players(prive)
    PlainBaSket scr, players(prive), s$
    End If
    ' proportional
    all = all + " " + s$
   Else
   If Uni(tofile) Then
putUniString tofile, s$
   Else
    putANSIString tofile, s$

    End If
    End If
    End If
    Case "0" To "9"
    Case Else
    s$ = s$ & Mid$(VarName$, pn&, 1)
    End Select
 
pn& = pn& + 1
Loop
If arrname$ <> "" Then
Dim w1 As Long, w2 As Long, DUM As Boolean
pn& = 1
Do While pn& <= Len(arrname$)
Select Case Asc(Mid$(arrname$, pn&, 1))
Case 13
s$ = ""
Case 32
If InStr(s$, ChrW(&H1FFF)) > 0 Then
Else
If Mid$(arrname$, pn& + 1, 16) = "" Then Exit Do
Set pppp = neoArray(Mid$(arrname$, pn& + 1, 16))
pn& = pn& + 16
pppp.SerialItem (0), f, 5
w1 = 0
pppp.SerialItem w2, w1, 6
w1 = w1 + 1
'w2 = Val(Mid$(arrname$, PN&))
If f > 1 Then
If tofile < 0 Then
    If tofile = -1 Then
                If .mx - .curpos < Len(s$ & Trim$(Str$(w2)) & ",") Then crNew bstack, players(prive)
                PlainBaSket scr, players(prive), s$ & Trim$(Str$(w2)) & ","
    Else
    'prop

    all = all + " " + s$ + Trim$(Str$(w2)) + ","
    End If
    Else
       If Uni(tofile) Then
        putUniString tofile, s$ & Trim$(Str$(w2)) & ","
   Else
   putANSIString tofile, s$ & Trim$(Str$(w2)) & ","
'    Print #tofile, S$ & Trim$(str$(w2)) & ",";
    End If
    End If
        Else
        If InStr(pn&, arrname$, Chr(13)) <> 0 Then
        If tofile < 0 Then
            If tofile = -1 Then
            If .mx - .curpos < Len(s$ & Trim$(Str$(w2)) & "), ") Then crNew bstack, players(prive)
            PlainBaSket scr, players(prive), s$ & Trim$(Str$(w2)) & "), "
            Else
            'prop
                all = all + " " + s$ + Trim$(Str$(w2)) + "),"
            End If
            Else
                   If Uni(tofile) Then
        putUniString tofile, s$ & Trim$(Str$(w2)) & "), "
                Else
                putANSIString tofile, s$ & Trim$(Str$(w2)) & "), "
            
            End If
            End If
       Else
        If tofile < 0 Then
                If tofile = -1 Then
          If .mx - .curpos < Len(s$ & Trim$(Str$(w2)) & ")") Then crNew bstack, players(prive)
         PlainBaSket scr, players(prive), s$ & Trim$(Str$(w2)) & ")"
         Else
           all = all + " " + s$ + Trim$(Str$(w2)) + ")"
         End If
         Else
                   If Uni(tofile) Then
        putUniString tofile, s$ & Trim$(Str$(w2)) & ")"
                Else
putANSIString tofile, s$ & Trim$(Str$(w2)) & ")"

         End If
         End If
     End If
    End If
x = f - 1

While x > 0
x = x - 1
pppp.SerialItem w2, w1, 6
w1 = w1 + 1
If x > 0 Then
If tofile < 0 Then
    If tofile = -1 Then
    
    If .mx - .curpos < Len(Trim$(Str$(w2)) & ",") Then crNew bstack, players(prive)
    PlainBaSket scr, players(prive), Trim$(Str$(w2)) & ","
    Else
    ' prop
        all = all + " " + s$ + Trim$(Str$(w2)) + ","
    End If
       Else
        If Uni(tofile) Then
        putUniString tofile, Trim$(Str$(w2)) & ","
                Else
         putANSIString tofile, Trim$(Str$(w2)) & ","
        ' Print #tofile, Trim$(str$(w2)) & ",";
         End If
         End If
    
Else
        If InStr(pn&, arrname$, Chr(13)) <> 0 Then
         If tofile < 0 Then
            If tofile = -1 Then
            If .mx - .curpos < Len(Trim$(Str$(w2)) & "), ") Then crNew bstack, players(prive)
            PlainBaSket scr, players(prive), Trim$(Str$(w2)) & "), "
            Else
            'prop
                all = all + " " + s$ + Trim$(Str$(w2)) + "),"
            End If
            Else
     If Uni(tofile) Then
        putUniString tofile, Trim$(Str$(w2)) & "), "
                Else
                putANSIString tofile, Trim$(Str$(w2)) & "), "
            'Print #tofile, Trim$(str$(w2)) & "), ";
            End If
            End If
        Else
        If tofile < 0 Then
    If tofile = -1 Then
            If .mx - .curpos < Len(Trim$(Str$(w2)) & ")") Then crNew bstack, players(prive)
            PlainBaSket scr, players(prive), Trim$(Str$(w2)) & ")"
            Else
            ' prop
                                all = all + " " + s$ + Trim$(Str$(w2)) + ")"
            End If
            Else
                               If Uni(tofile) Then
        putUniString tofile, Trim$(Str$(w2)) & ")"
                Else
                putANSIString tofile, Trim$(Str$(w2)) & ")"
            'Print #tofile, scr, Trim$(str$(w2)) & ")";
            End If
            End If
        End If
    End If
Wend
End If
Case "0" To "9"
Case Else
s$ = s$ & Mid$(arrname$, pn&, 1)
End Select
pn& = pn& + 1
Loop
End If
    If tofile < -1 Then
    If scr.CurrentX <> 0 Then crNew bstack, players(prive)
    wwPlain bstack, players(prive), all$, scr.Width, 1000, True, , 3
    End If
      If tofile < 0 Then crNew bstack, players(prive)
      End With
End Sub
Function NeoGetArrayItem(PP As mArray, bstack As basetask, V$, offset As Long, rst$, Optional noObject As Boolean = False) As Boolean
If noObject And PP.IHaveClass Then Exit Function
Dim dn As Long, dd As Long, W3 As Long
Dim p As Double
If PP.SerialItem((0), dd, 5) Then
dd = dd - 1
offset = 0
Do While dn <= dd

PP.SerialItem W3, dn, 6
 If IsExp(bstack, rst$, p) Then
 If dn < dd Then
        If Not FastSymbol(rst$, ",") Then MyEr "need index for " & V$ & ")", "���������� ������ ��� �� ������ " & V$ & ")": Exit Function
        Else
        If FastSymbol(rst$, ",") Then MyEr "too many indexes for array " & V$ & ")", "������ ������� ��� �� ������ " & V$ & ")": Exit Function
        If Not FastSymbol(rst$, ")") Then MyEr "missing )", "������ )": Exit Function
    End If
        On Error Resume Next
        If p < 0 Then
         MyEr "negative index in array " & V$ & ")", "��������� ������� ��� ������ " & V$ & ")": Exit Function
    
        End If
        If PP.PushOffset(offset, dn, CLng(p)) Then
        NeoGetArrayItem = True
        Else
          
          MyEr "index too high for array " & V$ & ")", "������� ������ ��� �� ������ " & V$ & ")": Exit Function
        
            
            End If
        Else
         If LastErNum = -2 Then
         Else
   MyEr "missing index for array " & V$ & ")", "������ ������� ��� �� ������ " & V$ & ")"
   End If
   Exit Function
    End If
    dn = dn + 1
Loop
End If
End Function
Sub getfirstpage()
If UBound(MyDM) = 1 Then
PrinterDim pw, ph, psw, psh, pwox, phoy
End If
'If pwox > phoy Then mydpi = phoy Else mydpi = pwox
''mydpi = pwox / 4
If pwox <= phoy Then
mydpi = pwox
Else
mydpi = phoy
End If
' DC FROM PRINTER
If oprinter.Create(Int(psw / pwox * mydpi + 0.5), Int(psh / phoy * mydpi + 0.5)) Then
oprinter.WhiteBits
oprinter.GetDpi mydpi, mydpi
Form1.PrinterDocument1.Cls
oprinter.needHDC
Set Form1.PrinterDocument1 = hDCToPicture(oprinter.HDC1, 0, 0, oprinter.Width, oprinter.Height)
oprinter.FreeHDC
Form1.PrinterDocument1.Scale (0, 0)-(Form1.ScaleX(Int(psw / pwox * (mydpi / 4) + 0.5), 3, 1), Form1.ScaleY(Int(psh / phoy * mydpi / 4 + 0.5), 3, 1))
pnum = 0
End If
End Sub
Sub getnextpage()

If oprinter.Height = 0 Then
getfirstpage

Else
pnum = pnum + 1
With players(-2)
.curpos = 0
.currow = 0
.lastprint = False
.XGRAPH = 0
.YGRAPH = 0
End With
With Form1.PrinterDocument1
.CurrentX = 0
.CurrentY = 0
End With
oprinter.CopyPicture Form1.PrinterDocument1
oprinter.ThumbnailPaintPrinter 1, , False, True, True, , , , , , Form3.Caption & " " & Str$(pnum)
Form1.PrinterDocument1.Cls
End If
End Sub
Sub getenddoc()
pnum = pnum + 1
oprinter.CopyPicture Form1.PrinterDocument1
oprinter.ThumbnailPaintPrinter 1, 100, False, True, True, , , , , , Form3.Caption & " " & Str$(pnum)
oprinter.ClearUp
Form1.PrinterDocument1.Picture = LoadPicture("")
End Sub
Sub Landscape(bstack As basetask)
Dim DUMMY As Object
If UBound(MyDM) = 1 Then
PrinterDim pw, ph, psw, psh, pwox, phoy
End If

'If pwox > phoy Then mydpi = phoy Else mydpi = pwox
mydpi = pwox

If Int(psw / pwox * mydpi + 0.5) / Int(psh / phoy * mydpi + 0.5) < 1 Then ChangeOrientation DUMMY, Printer.DeviceName, MyDM(): PrinterDim pw, ph, psw, psh, pwox, phoy
If Not bstack.toprinter Then Exit Sub
oprinter.ClearUp
If oprinter.Create(Int(psw / pwox * mydpi + 0.5), Int(psh / phoy * mydpi + 0.5)) Then
oprinter.WhiteBits
oprinter.GetDpi mydpi, mydpi
oprinter.needHDC
Set Form1.PrinterDocument1 = hDCToPicture(oprinter.HDC1, 0, 0, oprinter.Width, oprinter.Height)
oprinter.FreeHDC
Form1.PrinterDocument1.Scale (0, 0)-(Form1.ScaleX(Int(psw / pwox * (mydpi / 4) + 0.5), 3, 1), Form1.ScaleY(Int(psh / phoy * mydpi / 4 + 0.5), 3, 1))

End If


End Sub
Sub Portrait(bstack As basetask)
Dim DUMMY As Object
If UBound(MyDM) = 1 Then
PrinterDim pw, ph, psw, psh, pwox, phoy
End If

'If pwox > phoy Then mydpi = phoy Else mydpi = pwox
mydpi = pwox / 4
If Int(psw / pwox * mydpi + 0.5) / Int(psh / phoy * mydpi + 0.5) > 1 Then ChangeOrientation DUMMY, Printer.DeviceName, MyDM(): PrinterDim pw, ph, psw, psh, pwox, phoy
If Not bstack.toprinter Then Exit Sub
oprinter.ClearUp
If oprinter.Create(Int(psw / pwox * mydpi + 0.5), Int(psh / phoy * mydpi + 0.5)) Then

oprinter.WhiteBits
oprinter.GetDpi mydpi, mydpi
oprinter.needHDC
Set Form1.PrinterDocument1 = hDCToPicture(oprinter.HDC1, 0, 0, oprinter.Width, oprinter.Height)
oprinter.FreeHDC
Form1.PrinterDocument1.Scale (0, 0)-(Form1.ScaleX(Int(psw / pwox * (mydpi / 4) + 0.5), 3, 1), Form1.ScaleY(Int(psh / phoy * mydpi / 4 + 0.5), 3, 1))

End If

End Sub
Function StripTerminator(ByVal strString As String) As String
    Dim intZeroPos As Long

    intZeroPos = InStr(strString, Chr$(0))
    If intZeroPos > 0 Then
        StripTerminator = Left$(strString, intZeroPos - 1)
    Else
        StripTerminator = strString
    End If
End Function
Sub AddDirSep(strPathName As String)
    If Right(Trim(strPathName), Len(gstrSEP_URLDIR)) <> gstrSEP_URLDIR And _
       Right(Trim(strPathName), Len(gstrSEP_DIR)) <> gstrSEP_DIR Then
        strPathName = RTrim$(strPathName) & gstrSEP_DIR
    End If
End Sub

Function GetWindowsDir() As String
    Dim strBuf As String

    strBuf = Space$(gintMAX_SIZE)

    '
    'Get the windows directory and then trim the buffer to the exact length
    'returned and add a dir sep (backslash) if the API didn't return one
    '
    If GetWindowsDirectory(strBuf, gintMAX_SIZE) > 0 Then
        strBuf = StripTerminator$(strBuf)
        AddDirSep strBuf

        GetWindowsDir = strBuf
    Else
        GetWindowsDir = ""
    End If
End Function
Function GetWindowsfontDir() As String
    Dim strBuf As String

    strBuf = Space$(gintMAX_SIZE)

    '
    'Get the windows directory and then trim the buffer to the exact length
    'returned and add a dir sep (backslash) if the API didn't return one
    '
    If GetWindowsDirectory(strBuf, gintMAX_SIZE) > 0 Then
        strBuf = StripTerminator$(strBuf)
        AddDirSep strBuf
        strBuf = strBuf & "FONT"
        AddDirSep strBuf
    
        GetWindowsfontDir = strBuf
    Else
        GetWindowsfontDir = ""
    End If
End Function

 
Sub nhelp(bstack As basetask, Optional GREEK As Boolean = False)
Dim di As Object
Set di = bstack.Owner
If GREEK Then
Dim bb$
bb$ = "   �������� � �������� ��� ������� ������������� ��� �� ���� ��������� �������� " & vbCrLf
bb$ = bb$ & "   �� Esc ���������� � �������� ��������  " & vbCrLf
bb$ = bb$ & "   ctrl + f1 ������� ��� �������, ��������� ��� ����������� �������" & vbCrLf
bb$ = bb$ & "   ctrl + c ���������� ��� �������� ��� ���������" & vbCrLf
bb$ = bb$ & "   ctrl + ����������� ������� ������� �� �������� ��������" & vbCrLf
bb$ = bb$ & "   pause/break ����� ����� �������� / ��� ������� ����" & vbCrLf
bb$ = bb$ & "   � ������������� ������� ��� �������� ��� �� �������� ���������" & vbCrLf
bb$ = bb$ & "   � ���������������( ������� ��� �������� ��� �� �������� ���������" & vbCrLf
bb$ = bb$ & "   � ���������������$( ������� ��� �������� ��� �� �������� ���������$" & vbCrLf
bb$ = bb$ & "   �������  [��� ������� �� ������� ��� ����� ��� �� �����]" & vbCrLf
bb$ = bb$ & "   ������� ����  {��� ����� ������� �� ��������� ��������)" & vbCrLf
bb$ = bb$ & "   ? � ������ �������" & vbCrLf
bb$ = bb$ & "   ���� ��� ������ ��������� � ctrl+U ��� �� ������� ��� �� ������� ������������� ��� �� �������" & vbCrLf

Else
bb$ = "   GREEK or LATIN for choose the codepage for errors display" & vbCrLf
bb$ = bb$ & "   with LATIN all error messages are in ENGLISH language  " & vbCrLf
bb$ = bb$ & "   Esc escape execution" & vbCrLf
bb$ = bb$ & "   ctrl + f1 open help form, you can write and click for find" & vbCrLf
bb$ = bb$ & "   ctrl + c terminate execution, clear all" & vbCrLf
bb$ = bb$ & "   ctrl + anykey open for test" & vbCrLf
bb$ = bb$ & "   pause/break for break cold reset / look HELP START" & vbCrLf
bb$ = bb$ & "   EDIT modulename     [open editor for writing program]" & vbCrLf
bb$ = bb$ & "   EDIT functionname( [open editor for writing function()]" & vbCrLf
bb$ = bb$ & "   EDIT functionname$( [open editor for writing function$()]" & vbCrLf
bb$ = bb$ & "   MODULES for a list of modules in memory and on dik" & vbCrLf
bb$ = bb$ & "   use HELP writesomething [to find some help, open the help form]" & vbCrLf
bb$ = bb$ & "   ? or PRINT for printing" & vbCrLf
bb$ = bb$ & "   type SETTINGS or ctrl+U to change the default font and colors" & vbCrLf

End If
wwPlain bstack, players(GetCode(bstack.Owner)), bb$, di.Width, 1000, True
crNew bstack, players(GetCode(bstack.Owner))
End Sub
Public Sub EnableMidi()
Dim curDevice As Long, rc As Long

 If hmidi = 0 Then
rc = GetFuncPtr("winmm.dll", "midiOutOpen")
If rc <> 0 Then
    rc = midiOutOpen(hmidi, curDevice, 0, 0, 0)
    If (rc <> 0) Then
        MsgBox "Couldn't open midi device - Error #" & rc
    End If
    End If
    End If
End Sub
Public Sub DisableMidi()
  midiOutClose (hmidi)
  hmidi = 0
End Sub
Public Sub Quit()
  ' An example of an Application Quit routine:
  
  ' The Dispose method must be called to
  ' clean up the queue
  DisableMidi
  TaskMaster.Dispose
  Set TaskMaster = Nothing
  
  ' Insure all but 1 form is unloaded.
  ' (When called from Form_Unload, that form
  '  cannot be removed, so 1 is allowed)
  Do While Forms.Count > 1
    Unload Forms(1)
  Loop
  ' Notification if there are problems with demo
  Debug.Assert Forms.Count = 1
End Sub


' TASK MASTER TIMING ROUTINE

Public Sub TaskMasterTick()
' This is the TimerFunction that will be
' called when SetTimer times out.

  If Not TaskMaster Is Nothing Then
     ''MasterTimer + CDbl(TaskMaster.Interval)
    '' CDbl(timeGetTime)
    If Abs(MasterTimer - CDbl(timeGetTime)) > 50 Then
  If Not extreme Then Sleep 1: MyDoEvents1 Form1
    MasterTimer = CDbl(timeGetTime)
    End If
   ' Form1.Caption = MasterTimer
    TaskMaster.TimerTick
  End If

End Sub
Public Sub instrument(insID As Long, Channel As Long)
EnableMidi
Dim midimsg As Long
    midimsg = (insID * 256) + &HC0 + Channel
    midiOutShortMsg hmidi, midimsg
End Sub
Public Function VALIDATEmStiva(bs As basetask, p$, s$) As Boolean
Dim st As mStiva, SS$, j As Long

Set st = bs.soros
Dim i As Long, r$
If p$ <> "" Then
    ''s$ = ""
    If st.Total < Len(p$) Then Exit Function
    Do While i < Len(p$)
    i = i + 1
    j = AscW(st.StackItemType(i))
    If j = 42 Then
    j = AscW(Typename(st.StackItem(i)))
    End If
    Select Case AscW(Mid$(p$, i, 1))
    Case 925, 957, 913, 945, 78, 110 '' number  - use spellunicode to make it
        If j <> 78 Then Exit Function
    Case 915, 947, 83, 115 '' string
         If j <> 83 Then Exit Function
    Case 928, 960, 65, 97  '' array
         If j <> 109 Then Exit Function
        ''j = 65
    Case 927, 959, 922, 954, 71, 103, 67, 99  '' G or  C
         If j <> 71 Then Exit Function
    Case Else
        Exit Function
    End Select
    ''r$ = r$ + ChrW(j)
    Loop
    s$ = " "
    VALIDATEmStiva = True
    Exit Function
Else
Do
    i = i + 1
    If st.Total < i Then Exit Do
    SS$ = st.StackItemType(i)
    If SS$ = "*" Then
    SS$ = Left$(Typename(st.StackItem(i)), 1)
    If SS$ = "m" Then SS$ = "A"
    End If
    r$ = r$ & SS$
    Loop
    s$ = r$
End If
VALIDATEmStiva = r$ <> ""
End Function

Public Function VALIDATE(st$, p$, s$) As Boolean
Dim DUMMY As Double
Dim i As Long, j As Long, ok As Boolean
If Len(st$) = 0 Then
VALIDATE = True
End If
' NORMALIZE
s$ = ""
ok = True
For i = 1 To Len(st$)
Select Case Mid$(st$, i, 1)
Case " ", ",", ChrW(160)

Case Is = Chr(34)
j = InStr(i + 1, st$, Chr(34), vbBinaryCompare)
If j = 0 Then Exit For
s$ = s$ & "S"
i = j + 1
            If p$ <> "" Then
                Select Case AscW(p$)
                Case 915, 947, 83, 115 '' string
                Case Else
                        ok = False: Exit For
                End Select
                    p$ = Mid$(p$, 2)
                    If p$ = "" Then Exit For
             End If
 Case Is = Chr$(2)
            If Len(Mid$(st$, i + 1, 8)) = 8 Then
             i = i + UNPACKLNG(Mid$(st$, i + 1, 8)) + 8
             s$ = s$ & "S"
             If p$ <> "" Then
                Select Case AscW(p$)
                Case 915, 947, 83, 115 '' string
                Case Else
                        ok = False: Exit For
                End Select
             p$ = Mid$(p$, 2)
             If p$ = "" Then Exit For
             End If
             Else
             Exit For
             End If
Case Else
        If IsNumberD3(st$, i, j) Then
                If i = 0 Then i = j + 1
                i = i + j - 2
                s$ = s$ & "N"
                    If p$ <> "" Then
                Select Case AscW(p$)
                 Case 925, 957, 913, 945, 78, 110 '' number
                Case Else
                        ok = False: Exit For
                End Select
                         p$ = Mid$(p$, 2)
                         If p$ = "" Then Exit For
                    End If
      Else
          Exit For
      End If
End Select
      

Next i
 ' TO P$ �� ����� �� ��������

   p$ = Mid$(st$, i + 1)
   st$ = Left$(st$, i)
    VALIDATE = ok
End Function
Function constwidth(one As Long) As String
constwidth = " ..............."
Mid$(constwidth, 2) = CStr(one)
End Function
Public Function VALIDATEpart(st$, p$) As Boolean
Dim DUMMY As Double
Dim i As Long, j As Long, ok As Boolean, s$
If Len(st$) = 0 Then
VALIDATEpart = False   ' reverse logic here...
End If
' NORMALIZE
s$ = ""
ok = True
For i = 1 To Len(st$)
If Mid$(st$, i, 1) = Chr$(2) Then
            If Len(Mid$(st$, i + 1, 8)) = 8 Then
             i = i + UNPACKLNG(Mid$(st$, i + 1, 8)) + 8
             Else
             Exit For
             End If
      ElseIf IsNumberD3(st$, i, j) Then
      i = j + i - 2
      Else
      i = i - 1
      Exit For
      End If
      

Next i
p$ = Left$(st$, i)
    st$ = " " & Mid$(st$, i + 1)
    VALIDATEpart = p$ <> ""
End Function

Private Function validateold(st$, p$, s$) As Boolean
Dim counter As Long, MARKSTART As Long, MARKEND As Long, TEST$, dumy As Double
Dim i As Long, j As Long, ok As Boolean
If Len(st$) = 0 Then
validateold = True
End If
MARKSTART = Len(st$) + 1
s$ = ""
ok = True
For i = 1 To Len(st$)
If i < MARKSTART Then
    MARKSTART = i: MARKEND = i
            If Mid$(st$, i, 1) = Chr$(2) Then
            If Len(Mid$(st$, i + 1, 8)) = 8 Then
             i = i + UNPACKLNG(Mid$(st$, i + 1, 8)) + 8
             s$ = s$ & "S"
             Else
             ok = False: Exit For
             End If
            MARKSTART = Len(st$) + 1
            End If
    ElseIf Mid$(st$, i, 1) = Chr$(2) Then
        If MARKEND > MARKSTART Then
            If Mid$(st$, MARKSTART, 1) = " " Then
                TEST$ = Mid$(st$, MARKSTART, MARKEND - MARKSTART + 1)
                If IsNumberD2(TEST$, dumy) Then
                If Len(TEST$) <> 0 Then ok = False: Exit For
                End If
                s$ = s$ & "N"
           '  MARKSTART = Len(ST$) + 1
            Else
                ok = False: Exit For
            End If
         End If
                If p$ <> "" Then
                   If Len(s$) = Len(p$) Then
                   If s$ <> p$ Then ok = False
                   Exit For
                   End If
                   End If
               If Len(Mid$(st$, i + 1, 8)) = 8 Then
             i = i + UNPACKLNG(Mid$(st$, i + 1, 8)) + 8
             s$ = s$ & "S"
             Else
             ok = False: Exit For
             End If
        MARKSTART = Len(st$) + 1
    ElseIf Mid$(st$, i, 1) = " " Then
      If MARKEND > MARKSTART Then
            If Mid$(st$, MARKSTART, 1) = " " Then
                TEST$ = Mid$(st$, MARKSTART, MARKEND - MARKSTART + 1)
                If IsNumberD2(TEST$, dumy) Then
                If Len(TEST$) <> 0 Then ok = False: Exit For
                End If
              s$ = s$ & "N"
            Else
                ok = False: Exit For
            End If
         End If
        MARKSTART = i: MARKEND = i
    Else
    MARKEND = MARKEND + 1
End If
If p$ <> "" Then
If Len(s$) = Len(p$) Then
If s$ <> p$ Then ok = False
Exit For
End If
End If
Next i
If Not (ok And s$ = p$ And s$ <> "") Then
 If ok And (MARKEND > MARKSTART) Then
If Mid$(st$, MARKSTART, 1) = " " Then
                TEST$ = Mid$(st$, MARKSTART, MARKEND - MARKSTART + 1)
                If IsNumberD2(TEST$, dumy) Then
                If Len(TEST$) <> 0 Then ok = False
                End If
              s$ = s$ & "N"
            Else
                ok = False
            End If
    End If
    If p$ <> "" Then
If Len(s$) = Len(p$) Then
If s$ <> p$ Then ok = False
End If
End If
    End If
    If ok And p$ <> "" Then
    p$ = Mid$(st$, i)
    st$ = Left$(st$, i - 1)
    End If
    validateold = ok
End Function

Public Function GetTempFileName() As String

   Dim sTmp    As String
   Dim sTmp2   As String
   Dim EXENAME As String
   EXENAME = App.EXENAME

   sTmp2 = GetTempPathgg
   sTmp = Space(Len(sTmp2) + 256)
   Call GetTempFileNameW(StrPtr(sTmp2), StrPtr(EXENAME), UNIQUE_NAME, StrPtr(sTmp))
   GetTempFileName = Left$(sTmp, InStr(sTmp, Chr$(0)) - 1)
    tempList2delete = Sput(GetTempFileName) + tempList2delete
End Function
Public Sub DelTemp()
Dim Tmp$
On Error Resume Next
While tempList2delete <> ""
If Not ISSTRINGA(tempList2delete, Tmp$) Then Exit Sub
Kill Tmp$
Wend

End Sub

Private Function GetTempPathgg() As String
  
   Dim sTmp       As String
   Dim i          As Long
    Dim EM$
    
   i = GetTempPath(0, StrPtr(EM$))
   sTmp = Space(i)

   Call GetTempPath(i, StrPtr(sTmp))
   GetTempPathgg = AddBackslash(Left$(sTmp, i - 1))

End Function

Private Function AddBackslash(s As String) As String

   If Len(s) > 0 Then
      If Right$(s, 1) <> "\" Then
         AddBackslash = s & "\"
      Else
         AddBackslash = s
      End If
   Else
      AddBackslash = "\"
   End If

End Function


Private Sub olamazi()
If Form4.Visible Then
Form4.Visible = False
If Form1.Visible Then
   
   ' If Form2.Visible Then Form2.ZOrder
    If Form1.TEXT1.Visible Then
        Form1.TEXT1.SetFocus
    Else
        Form1.SetFocus
    End If
    End If
    End If
End Sub
Sub mywait(bstack As basetask, PP As Double)
Dim p As Boolean, e As Boolean
On Error Resume Next
If bstack.Process Is Nothing Then
''If extreme Then MyDoEvents1 Form1
If PP = 0 Then Exit Sub
Else

Err.clear
p = bstack.Process.Done
If Err.Number = 0 Then
e = True
If p <> 0 Then
Exit Sub
End If
End If
End If
PP = PP + CDbl(timeGetTime)

Do


If TaskMaster.Processing And Not bstack.TaskMain Then
        If Not bstack.toprinter Then bstack.Owner.refresh
        TaskMaster.TimerTick
       ' SleepWait 1
        MyDoEvents1 Form1
Else
        ' SleepWait 1
        MyDoEvents1 Form1
End If
If e Then
p = bstack.Process.Done
If Err.Number = 0 Then
If p <> 0 Then
Exit Do
End If
End If
End If
Loop Until PP <= CDbl(timeGetTime) Or NOEXECUTION

                       If exWnd <> 0 Then
                mytitle$ bstack
                End If
End Sub
Sub ProcTask(bstack As basetask)
If TaskMaster.Processing Then
           TaskMaster.RestEnd1
 TaskMaster.TimerTick
''TaskMaster.rest
ElseIf Not bstack.IamChild Then
If REFRESHRATE > 25 Then k1 = 0
REFRESHRATE = 40
Sleep 1
ElseIf SLOW Then
Sleep 1
End If
TaskMaster.rest
SleepWaitEdit 1
TaskMaster.RestEnd
End Sub
Sub ProcTask2(bstack As basetask)
If TaskMaster.Processing Then
          TaskMaster.RestEnd1
 TaskMaster.TimerTickNow

ElseIf SLOW Then
Sleep 1

End If
TaskMaster.rest

SleepWaitEdit2 1
TaskMaster.RestEnd
End Sub
Function mybreakkey() As Boolean
If RRCOUNTER = 1 Then
    If KeyPressedLong(&H13) = 1 Then
k1 = 0
mybreakkey = Form1.mybreak1()
End If
RRCOUNTER = 2
End If
               


End Function
Sub ResetBreak()
Do While KeyPressedLong(&H13) <> 0
MyDoEvents
Loop

End Sub
Function myexit(bstack As basetask) As Boolean
Static counter As Long
Dim p As Boolean
On Error Resume Next
If Not extreme Then
            If escok Then
                        If KeyPressed(&H1B) Then
                                    If AVIRUN Then AVI.GETLOST
                                    NOEXECUTION = True
                                    While KeyPressed(&H1B)
                                            MyDoEvents
                                    Wend
                                    myexit = True
                                    Exit Function
                        End If
             End If
End If
If counter = 0 Then Sleep 0: counter = 5001
counter = counter - 1
If bstack Is Nothing Then
myexit = True: Exit Function
End If
If TaskMaster.OnlyMusic Then
TaskMaster.TimerTick
End If
If bstack.IamThread Then

myexit = bstack.Process.Done
Else
myexit = False
End If
End Function

Sub closeAll()
Dim i As Long
For i = 0 To 511
If FLEN(i) > 0 Then
FLEN(i) = 0
Close i
End If
Next i
CloseAllConnections
End Sub
Sub MakeitObjectLong(var As Variant)
Dim aa As Long
var = aa
End Sub
Sub MakeitObject(var As Variant)
Dim aa As New Document
Set var = aa
var.textDoc = ""
End Sub
Sub MakeitPropReference(var As Variant)
Dim aa As New PropReference
Set var = aa
End Sub

Sub CreateitObject(var As Variant, THISOBECT As String, Optional ByVal cc As Variant)
Dim aa As Object
If IsMissing(cc) Then
Set aa = CreateObject(THISOBECT)
Else
Set aa = CreateObject(THISOBECT, CStr(cc))
End If
Set var = aa
End Sub
Sub CheckVar(var As Variant, s As String)

If Typename(var) = doc Then
If var.IsEmpty Then
var.textDoc = s
Else
var.InsertDoc var.LastParagraph, var.TextParagraphLen(var.LastParagraph) + 1, s
End If
Else
var = s
End If
End Sub
Sub CheckVarLong(var As Variant, l As Long)

If IsObject(var) Then

Set var = Nothing
var = Empty
End If
var = l

End Sub
Sub LATIN(bstack As basetask)
On Error Resume Next
cLid = 1033
UserCodePage = 1252

With Form1
bstack.myCharSet = 0
If bstack.tolayer > 0 Then
    .dSprite(bstack.tolayer).Font.charset = 0
    ElseIf bstack.toback Then
    .Font.charset = 0
    Else
    
    .DIS.Font.charset = bstack.myCharSet
    .TEXT1.Font.charset = bstack.myCharSet
    .List1.Font.charset = bstack.myCharSet
   ' .List2.Font.CharSet = bstack.myCharSet
    End If
End With
pagio$ = "LATIN"
cLid = 1033
DialogSetupLang 1
End Sub
Sub GREEK(bstack As basetask)
On Error Resume Next
cLid = 1032
UserCodePage = 1253
With Form1
   bstack.myCharSet = 161
If bstack.tolayer > 0 Then
    .dSprite(bstack.tolayer).Font.charset = 161
    ElseIf bstack.toback Then
    .Font.charset = 161
    Else
 
    .DIS.Font.charset = bstack.myCharSet
    .TEXT1.Font.charset = bstack.myCharSet
    .List1.Font.charset = bstack.myCharSet
   ' .List2.Font.CharSet = bstack.myCharSet
    End If
End With
pagio$ = "GREEK"
cLid = 1032
DialogSetupLang 0
End Sub
Private Function GetLCIDFromKeyboard() As Long
    Dim Buffer As String, Ret&, r&
    Buffer = String$(514, 0)
      r = GetKeyboardLayout(DWL_ANYTHREAD) And &HFFFF
      r = Val("&H" & Right(Hex(r), 4))
        Ret = GetLocaleInfoW(r, LOCALE_ILANGUAGE, StrPtr(Buffer), Len(Buffer))
    GetLCIDFromKeyboard = CLng(Val("&h" + Left$(Buffer, Ret - 1)))
End Function
Public Function GetLCIDFromKeyboardLanguage() As String
    Dim Buffer As String, Ret&, r&
    Buffer = String$(514, 0)
      r = GetKeyboardLayout(DWL_ANYTHREAD) And &HFFFF
      r = Val("&H" & Right(Hex(r), 4))
      'LOCALE_SENGLANGUAGE&
      If cLid = 0 Then ''
      Ret = GetLocaleInfoW(r, LOCALE_SENGLANGUAGE&, StrPtr(Buffer), Len(Buffer))
      Else
        Ret = GetLocaleInfoW(r, LOCALE_SLANGUAGE&, StrPtr(Buffer), Len(Buffer))
        End If
     If shortlang Then If Ret > 3 Then Ret = 4
     On Error Resume Next
    GetLCIDFromKeyboardLanguage = Left$(Buffer, Ret - 1)

End Function
Private Function GetlocaleString(ByVal this As Long) As String
On Error GoTo 1234
    Dim Buffer As String, Ret&, r&
    Buffer = String$(514, 0)
      
        Ret = GetLocaleInfoW(cLid, this, StrPtr(Buffer), Len(Buffer))
    GetlocaleString = Left$(Buffer, Ret - 1)
    
1234:
    
End Function
Sub helpBin(f&, n$)
Dim A() As Byte
A() = n$
Put #f, , A
End Sub
Sub MakeitObject2(var As Variant)
Dim aa As Object
Set aa = New Group
Set var = aa
End Sub

Sub prepareGroup(bstack As basetask, ByVal ohere$, vvv As Long)
Dim hv As Boolean
'' ohere$ = myUcase(ohere$)

If HERE$ = "" Then
    hv = GetVar(bstack, bstack.GroupName & ohere$, vvv)
Else
    hv = GetlocalVar(bstack.GroupName & ohere$, vvv)
End If
If hv Then
' so it is an object now
    If Not IsObject(var(vvv)) Then
        MakeitObject2 var(vvv)
    ElseIf Typename(var(vvv)) <> "Group" Then
        MakeitObject2 var(vvv)
    End If
Else
    vvv = GlobalVarRefOnly(bstack.GroupName & ohere$)
    MakeitObject2 var(vvv)

    var(vvv).GroupName = ohere$ + "."
End If
var(vvv).edittag = ""
End Sub
Function ExecuteVarOnly(bstack As basetask, ohere$, vvv As Long, rest$, Lang As Long) As Long
Dim w$, p As Double, V As Long, SS$, b$, i As Long, lcl As Boolean, j As Long, nm$, x1 As Long, y1 As Long, frm$
Const tt$ = "=-+*/<!,{" + vbCr
If Trim(rest$) = "" Then
    var(vvv) = CLng(0)
    ExecuteVarOnly = 1
    Exit Function
End If
Dim myobject As Object
'' ohere$ = myUcase$(ohere$)
Dim OvarnameLen As Long, OarrnameLen As Long
Dim f$
Dim pppp As mArray

OvarnameLen = Len(VarName$) + 1   'we record ...
OarrnameLen = Len(arrname$) + 1


   
 If bstack.GroupName <> "" Then
  bstack.GroupName = bstack.GroupName & var(vvv).GroupName '' & "."
  Else
  bstack.GroupName = var(vvv).GroupName ''& "."
  End If


   ExecuteVarOnly = 1
Do
there100:
Do

If Left$(NLtrim$(rest$) + "00", 2) = vbCrLf Or MaybeIsSymbol(rest$, "\'") Then
SetNextLine rest$
lcl = False
Else
Exit Do
End If

Loop
there12345:
If rest$ = "" Then Exit Do
V = IsLabelA(HERE$, rest$, w$)
' DOCUMENT DIM LONG....
' ������� ������� ������...

If V = 0 Then Exit Do



''w$ = myUcase(w$)
Select Case w$
Case "LOCAL", "������", "������", "�������"
lcl = True
GoTo there12345
Case "CLASS", "�����"
If IsLabelSymbolNew(rest$, "������", "GLOBAL", Lang) Then
MyEr "GLOBAL can't used in a CLASS", "� ����� ���� ����� ��� ������ �� ����� ������"
ExecuteVarOnly = False
Exit Function
End If
 If IsLabelA("", rest$, w$) = 1 Then
                     If IsLabelSymbolNew(rest$, "�����", "TYPE", Lang) Then
                     MyEr "Use here a Group not a Class", "������������� ��� ����� ��� ��� ��� �����"
                    ExecuteVarOnly = False
                    Exit Function
                    End If
                If HERE$ = "" Then
                f$ = bstack.GroupName + w$
                Else
                f$ = w$
                End If
        If Lang = 1 Then
               If FastSymbol(rest$, "{") Then
            SS$ = block(rest$)
            If Right$("  " + SS$, 2) <> vbCrLf Then SS$ = SS$ + vbCrLf
            rest$ = f$ + "  {  group " + w$ + " {" + SS$ & "}" + vbCrLf + " try { call! " + w$ + "." + w$ + " }  : =" + w$ + rest$
            w$ = "Function"
            GoTo classcontclass
            Else
             f$ = w$
            w$ = "Group "
            End If
         Else
            If FastSymbol(rest$, "{") Then
            SS$ = block(rest$)
                If Right$("  " + SS$, 2) <> vbCrLf Then SS$ = SS$ + vbCrLf
            rest$ = f$ + "  {  ����� " + w$ + " {" + SS$ & "}" + vbCrLf + " try { call! " + w$ + "." + w$ + "}  : =" + w$ + rest$
            w$ = "���������"
            GoTo classcontclass
            Else
             f$ = w$
            w$ = "����� "
            End If
            
        End If
        
        Do While FastSymbol(rest$, ",")
         If IsLabelA("", rest$, nm$) <> 1 Then
            SyntaxError
            ExecuteVarOnly = False
            Exit Function
         End If
             f$ = f$ + w$ + nm$ + vbCrLf
        Loop
            If IsLabelSymbolNew(rest$, "�����", "TYPE", Lang) Then
                 MyEr "Use here a Group not a Class", "������������� ��� ����� ��� ��� ��� �����"
                ExecuteVarOnly = False
            Exit Function
            End If
            w$ = Trim$(w$)
            rest$ = f$ + rest$
        GoTo contVar
            Else
            SyntaxError
            ExecuteVarOnly = False
            Exit Function
            
   End If
Case "REM", "���"
SetNextLine rest$: GoTo there100
Case "FUNCTION", "���������"
If IsLabelSymbolNew(rest$, "������", "GLOBAL", Lang) Then
MyEr "GLOBAL can't used in a Group", "� ��������� ���� ����� ��� ������ �� ����� ������"
ExecuteVarOnly = False
Exit Function
End If
classcontclass:
x1 = Abs(IsLabel(bstack, rest$, f$))
''f$ = myUcase$(f$)
If x1 <> 0 Then
  If var(vvv).FuncList <> "" Then  ' maybe we have it
  If InStr(var(vvv).FuncList, Chr$(2) + f$ + "() ") > 0 Then
  IsSymbol3 rest$, "{"
    SS$ = block(rest$)
    If FastSymbol(rest$, "}") Then
             If GetSub(bstack.GroupName + f$ + "()", i) Then
                         If rinstr(sbgroup(i), bstack.GroupName) + Len(bstack.GroupName) - 1 = Len(sbgroup(i)) Then
                         bstack.IndexSub = i
                          SB(i) = SS$
                          GoTo there12345
                          Else
                          End If
             End If
 
   If HERE$ <> "" Then

             If Lang = 1 Then
                rest$ = "GLOBAL " + Chr(34) + HERE$ + "." + bstack.GroupName + f$ + Chr(34) + " { " + SS$ + "} " + rest$
                  Else
                  rest$ = "������ " + Chr(34) + HERE$ + "." + bstack.GroupName + f$ + Chr(34) + " { " + SS$ + "} " + rest$ ''SBgroup(i) +  " { " + ss$ + "} " + Rest$
                  End If
   GoTo BYPASS3
   Else
   
        ExecuteVarOnly = 0: Exit Function
   End If
   End If
  End If
  End If
  ' so is the first time, put it back
  If Left$(SB(bstack.OriginalCode), 10) = "'11001EDIT" Then
   
   SS$ = rest$
     IsSymbol3 SS$, "{"
    frm$ = block(SS$)
  If Right$(SS$, 2) <> vbCrLf Then
        b$ = GetNextLine((SB(bstack.OriginalCode))) + "+2"
  Else
        b$ = GetNextLine((SB(bstack.OriginalCode)))
        End If
        nm$ = GetStrUntil(",", Mid$(b$, 12))
      GetSub nm$, i
      IsSymbol3 rest, "{"
       b$ = "{" + b$ + "+" + CStr(Len(SB(i))) + "-" + CStr(Len(SS$)) + vbCrLf
     
        
    rest$ = b$ + rest$


  End If
  If HERE$ = "" Then
  rest$ = bstack.GroupName + f$ & " " & rest$
  Else
  rest$ = f$ & " " & rest$
  End If
BYPASS3:
 ExecuteVarOnly = Abs(Identifier(bstack, w$, rest$))

   
  If GetSub(bstack.GroupName + f$ + "()", i) Then
 '''��� �� ���� �� group name ����!!!!! ��� ������� �� �� i
   If Not lcl Then
   var(vvv).FuncList = Chr$(1) + Chr$(2) + f$ + "() " + CStr(i) + Chr$(1) + var(vvv).FuncList
   Else
   var(vvv).LocalList = var(vvv).LocalList + vbCrLf + "Local Function " + f$ + "{" + SB(i) + "}"
   End If
   If HERE$ = "" Then
   sbgroup(i) = bstack.GroupName
   Else
    sbgroup(i) = HERE$ + "." + bstack.GroupName
  End If
  If lcl Then
  
  End If
  End If
   
  ''   Bstack.GroupName = oldgroupname$
     Else
     ExecuteVarOnly = 0
     End If
     
     If ExecuteVarOnly = 0 Then Exit Function
     

Case "MODULE", "�����"
If IsLabelSymbolNew(rest$, "������", "GLOBAL", Lang) Then
MyEr "GLOBAL can't used in a Group", "� ��������� ���� ����� ��� ������ �� ����� ������"
ExecuteVarOnly = False
Exit Function
End If
x1 = Abs(IsLabel(bstack, rest$, f$))
''f$ = myUcase$(f$)
If x1 <> 0 Then
  If var(vvv).FuncList <> "" Then  ' maybe we have it
  If InStr(var(vvv).FuncList, Chr$(3) + f$ + " ") > 0 Then
    IsSymbol3 rest$, "{"
    SS$ = block(rest$)
    If Right$(SS$, 2) <> vbCrLf Then SS$ = SS$ + vbCrLf
    If FastSymbol(rest$, "}") Then
             If GetSub(bstack.GroupName + f$, i) Then
            '' IF SBGROUP(I)
                         If rinstr(sbgroup(i), bstack.GroupName) + Len(bstack.GroupName) - 1 = Len(sbgroup(i)) Then
                          bstack.IndexSub = i
                          SB(i) = SS$
                          GoTo there12345
                          End If
             End If

 
   If HERE$ <> "" Then
V = 123
             If Lang = 1 Then
                rest$ = "GLOBAL " + Chr(34) + HERE$ + "." + bstack.GroupName + f$ + Chr(34) + " {'11001EDIT " + CStr(bstack.OriginalCode) + ", 3" + vbCrLf + SS$ + "} " + rest$
                  Else
                  rest$ = "������ " + Chr(34) + HERE$ + "." + bstack.GroupName + f$ + Chr(34) + " {'11001EDIT " + CStr(bstack.OriginalCode) + ", 3" + vbCrLf + SS$ + "} " + rest$
                  End If
   GoTo BYPASS4
   Else
   
        ExecuteVarOnly = 0: Exit Function
   End If
   End If
  End If
  End If
  ' so is the first time, put it back
  If Left$(SB(bstack.OriginalCode), 10) = "'11001EDIT" Then
   
   SS$ = rest$
     IsSymbol3 SS$, "{"
    frm$ = block(SS$)
 If Right$(SS$, 2) <> vbCrLf Then
        b$ = GetNextLine((SB(bstack.OriginalCode)))
  Else
        b$ = GetNextLine((SB(bstack.OriginalCode)))
        End If
        nm$ = GetStrUntil(",", Mid$(b$, 12))
      GetSub nm$, i
      IsSymbol3 rest, "{"
       b$ = "{" + b$ + "+" + CStr(Len(SB(i))) + "-" + CStr(Len(SS$)) + vbCrLf
     
        
    rest$ = b$ + rest$


  End If
  If HERE$ = "" Then
  
  rest$ = bstack.GroupName + f$ & " " & rest$
  Else
  
  rest$ = f$ & " " & rest$
  End If
BYPASS4:
 ExecuteVarOnly = Abs(Identifier(bstack, w$, rest$))

  If GetSub(bstack.GroupName + f$, i) Then

 If Not lcl Then
 var(vvv).FuncList = Chr$(1) + Chr$(3) + f$ + " " + CStr(i) + Chr$(1) + var(vvv).FuncList
 Else
  var(vvv).LocalList = var(vvv).LocalList + vbCrLf + "Local Module " + f$ + "{" + SB(i) + "}"
 End If

        If HERE$ = "" Then
   sbgroup(i) = bstack.GroupName
   Else
    sbgroup(i) = HERE$ + "." + bstack.GroupName
  End If
  End If

     Else
     ExecuteVarOnly = 0
     End If
     If ExecuteVarOnly = 0 Then Exit Function

Case "DOCUMENT", "�������", "DIM", "�������", "GROUP", "�����", "LONG", "������"
' put back, change HERE$ and
contVar:
If w$ = "GROUP" Or w$ = "�����" Then
                                                 x1 = Abs(IsLabel(bstack, rest$, w$))
                                                  If x1 = 1 Then
                                                                     If IsLabelSymbolNew(rest$, "�����", "TYPE", Lang) Then
                                                                                        If IsStrExp(bstack, rest$, SS$) Then
                                                                                        frm$ = bstack.GroupName
                                                                                        prepareGroup bstack, w$, y1
                                                                                        LogGroup bstack, vvv, ohere$, OvarnameLen, OarrnameLen, lcl
                                                                                         ExecuteVarOnly = Abs(ExecuteVarOnly(bstack, bstack.GroupName & w$, y1, SS$, Lang))
                                                                                        
                                                                                            OvarnameLen = Len(VarName$) + 1   'we record ...
                                                                                        OarrnameLen = Len(arrname$) + 1
                                                                                        
                                                                                         bstack.GroupName = frm$
                                                                                        End If
                                                
                                                                        Else
                                                                      If FastSymbol(rest$, "{") Then
                                                                                      SS$ = block(rest$)
                                                                                      frm$ = bstack.GroupName
                                                                                      prepareGroup bstack, w$, y1
                                                                                    LogGroup bstack, vvv, ohere$, OvarnameLen, OarrnameLen, lcl
                                                                                    
                                                                                    If Abs(ExecuteVarOnly(bstack, bstack.GroupName & w$, y1, SS$, Lang)) = 0 Then
                                                                                        rest$ = SS$ + rest$
                                                                                    Else
                                                                                        ExecuteVarOnly = FastSymbol(rest$, "}")
                                                                                    End If
                                                                                        OvarnameLen = Len(VarName$) + 1   'we record ...
                                                                                    OarrnameLen = Len(arrname$) + 1
                                                                                     bstack.GroupName = frm$
                                                                                     If Typename(var(y1)) <> "Group" Then Set var(y1) = New Group
                                                                                     
                                                                                  Else
                                                                                  prepareGroup bstack, w$, y1
                                                                                    LogGroup bstack, vvv, ohere$, OvarnameLen, OarrnameLen, lcl
                                                                        End If
                                                                    End If
                                                         End If
                                   





Else
  ExecuteVarOnly = Abs(Identifier(bstack, w$, rest$))
End If

     If ExecuteVarOnly = 0 Then Exit Function
       ''LogGroup bstack, vvv, oHere$, OvarnameLen, OarrnameLen, lcl
Case Else
' check if we have a class

nm$ = ""
If Len(rest$) > 0 Then
If Not MaybeIsSymbol(rest$, tt$) Then
    If GetSub(w$ + "()", j) Then
        f$ = "=" + w$ + "()"
        
            If IsLabelA(HERE$, rest$, w$) <> 1 Then Exit Do
            ''w$ = myUcase(w$)
            rest$ = f$ + rest$
            nm$ = w$
            ''
    ElseIf GetSub(bstack.GroupName + w$ + "()", j) Then   '' why not here??
        f$ = "=" + bstack.GroupName + w$ + "()"
        If IsLabelA(HERE$, rest$, w$) <> 1 Then Exit Do
        ''w$ = myUcase(w$)
        rest$ = f$ + rest$
        nm$ = w$
        
    End If
End If
End If
w$ = ohere$ & "." & w$
''If b$ = "" Then b$ = W$ Else b$ = b$ + ", " + W$
Select Case V
Case 1
p = 0
If HERE$ = "" Then
    If Not GetVar(bstack, w$, V) Then V = GlobalVar(w$, p) ': GetVar bstack, W$, v
Else
    If Not GetlocalVar(w$, V) Then V = GlobalVar(w$, p) ': GetlocalVar W$, v
End If

If FastSymbol(rest$, "=") Then
        
               If IsExp(bstack, rest$, p) Then
               If Not bstack.LastObj Is Nothing Then
                                If Typename(bstack.LastObj) = "Group" Then
                                            Set myobject = bstack.LastObj
                                                                                                                                                                    
againgroup:
                                LogGroup bstack, vvv, ohere$, OvarnameLen, OarrnameLen, lcl

                       
                                            If nm$ <> "" Then
                                                
                                                UnFloatGroup bstack, nm$, V, myobject

                                                                                            OvarnameLen = Len(VarName$) + 1   'we record ...
                                                                                        OarrnameLen = Len(arrname$) + 1
                                            End If
                                            If FastSymbol(rest$, ",") Then
                                            
                                          
                                                If IsLabelA(HERE$, rest$, nm$) = 1 Then
                                                    If HERE$ = "" Then
                                                        If Not GetVar(bstack, ohere$ & "." & nm$, V) Then V = GlobalVar(ohere$ & "." & nm$, p)   ': GetVar bstack, nm$, v
                                                    Else
                                                        If Not GetlocalVar(ohere$ & "." & nm$, V) Then V = GlobalVar(ohere$ & "." & nm$, p)   ': GetlocalVar W$, v
                                                    End If
                                                    GoTo againgroup:
                                                Else
                                                    SyntaxError
                                                    Exit Do
                                                End If
                                       
                                        End If

                                         Set bstack.LastObj = Nothing
                                        GoTo continuehere
                                    Set bstack.LastObj = Nothing
                                        ' look for other
                                Else
                                SyntaxError
                                Exit Do
                                End If
            ElseIf VarType(var(V)) = vbLong Then
                    var(V) = CLng(p)
                    Else
                    var(V) = p
                    End If
            
                 Else
                
                
                
                   If LastErNum <> -2 Then
                   NoValueForvariable w$
                    ExecuteVarOnly = 0
                     
                     Exit Function
                     End If
                    
                End If
               
        Else
        SS$ = ""
         If MaybeIsSymbol(rest$, "=-+*/<!") Then
            If FastSymbol(rest$, "+=") Then
                SS$ = "+"
            ElseIf FastSymbol(rest$, "/=") Then
            SS$ = "/"
            ElseIf FastSymbol(rest$, "-=") Then
            SS$ = "-"
            ElseIf FastSymbol(rest$, "*=") Then
            SS$ = "*"
            ElseIf IsOperator(rest$, "++") Then
            SS$ = "++"
            ElseIf IsOperator(rest$, "--") Then
            SS$ = "--"
            ElseIf IsOperator(rest$, "-!") Then
            SS$ = "-!"
            ElseIf IsOperator(rest$, "~") Then
            SS$ = "!"
            ElseIf FastSymbol(rest$, "<=") Then
            SS$ = "="
            End If
        End If
        If Len(SS$) > 0 Then
        
        If GetVar(bstack, w$, V) Then
        If Len(SS$) = 1 Then
                    If IsExp(bstack, rest$, p) Then
                            On Error Resume Next
                            If VarType(var(V)) = vbLong Then
                               Select Case SS$
                                Case "="
                                var(V) = CLng(p)
                                Case "+"
                                var(V) = CLng(p) + var(V)
                                Case "*"
                                 var(V) = CLng(p) * var(V)
                                Case "-"
                                var(V) = var(V) - CLng(p)
                                Case "/"
                                If p = 0 Then
                                   ExecuteVarOnly = 0
                                   Exit Do
                                End If
                                 var(V) = var(V) \ CLng(p)
                                         Case "!"
                                 var(V) = -1 - (var(V) <> 0)
                            End Select
                            Else
                            Select Case SS$
                                Case "="
                                var(V) = p
                                Case "+"
                                var(V) = p + var(V)
                                Case "*"
                                 var(V) = p * var(V)
                                Case "-"
                                var(V) = var(V) - p
                                Case "/"
                                If p = 0 Then
                                   ExecuteVarOnly = 0
                                    
                                   Exit Function
                                End If
                          
                                 var(V) = var(V) / p
                                     Case "!"
                                 var(V) = -1 - (var(V) <> 0)
                            End Select
                            End If
                            If Err.Number = 6 Then
                             
                                Exit Function   'why ?
                          
                                             
                               End If
                               On Error GoTo 0
                    Else
        
       If LastErNum <> -2 Then
        NoValueForvariable w$
        ExecuteVarOnly = 0
         
         Exit Function
   
      
       End If
              
                               
                    End If
        Else
        If SS$ = "++" Then
        var(V) = 1 + var(V)
        ElseIf SS$ = "--" Then
        var(V) = var(V) - 1
        Else
        var(V) = -var(V)
        End If
        
        End If
    Else
                    ExecuteVarOnly = 0
                     
                                     Exit Function
    End If
        Else
     '         If Not ExecuteVarOnly(bstack, W$, Rest$) Then
             ''  ExecuteVarOnly = 0: Exit Function
          ''     End If
          ''  If Left$(HERE$ & "#", 1) = "!" Then HERE$ = Mid$(HERE$, 2): HERE$ = HERE$
        End If
        
    End If
        
    
        
Case 2
rest$ = w$ & rest$: Exit Function
Case 3
        SS$ = ""
         If MaybeIsSymbol(rest$, "=<") Then
            If FastSymbol(rest$, "<=") Then
                SS$ = "g"  'global
            ElseIf FastSymbol(rest$, "=") Then
            SS$ = "="
            End If
        End If
       

If SS$ <> "" Then

    If SS$ = "=" Then
    
    If HERE$ = "" Then
            If GetVar(bstack, w$, V) Then
                If IsStrExp(bstack, rest$, SS$) Then CheckVar var(V), SS$
            ElseIf IsStrExp(bstack, rest$, SS$) Then
                GlobalVar w$, SS$
            
            End If
    Else
    
            If GetlocalVar(w$, V) Then
                If IsStrExp(bstack, rest$, SS$) Then CheckVar var(V), SS$
            ElseIf IsStrExp(bstack, rest$, SS$) Then
                GlobalVar w$, SS$
            
            End If
            End If
        Else    ' g
          If GetVar(bstack, w$, V) Then
          
               If IsStrExp(bstack, rest$, SS$) Then
               CheckVar var(V), SS$
               Else
               NoValueForvariable w$
               End If
            Else
            Nosuchvariable w$
          End If
    End If
Else
' NO VALUE IS OK
If Not GetlocalVar(w$, V) Then
                V = GlobalVar(w$, SS$)
                ''GetlocalVar W$, v
                var(V) = ""

            End If
End If
Case 4
If HERE$ = "" Then
If Not GetVar(bstack, w$, V) Then V = GlobalVar(w$, p) '': GetVar bstack, W$, v
Else
If Not GetlocalVar(w$, V) Then V = GlobalVar(w$, p) '': GetlocalVar W$, v
End If
        If FastSymbol(rest$, "=") Then
                If IsExp(bstack, rest$, p) Then
                 var(V) = Int(p)
                If Err.Number = 6 Then ExecuteVarOnly = 0:   Exit Function

                Else
                      If LastErNum <> -2 Then
                     NoValueForvariable w$
                    ExecuteVarOnly = 0
                     
                     Exit Function
                     End If
            
            End If
Else
    If FastSymbol(rest$, "+=") Then
    SS$ = "+"
    ElseIf FastSymbol(rest$, "/=") Then
    SS$ = "/"
    ElseIf FastSymbol(rest$, "-=") Then
    SS$ = "-"
    ElseIf FastSymbol(rest$, "*=") Then
    SS$ = "*"
    ElseIf IsOperator(rest$, "++") Then
    SS$ = "++"
    ElseIf IsOperator(rest$, "--") Then
    SS$ = "--"
    ElseIf IsOperator(rest$, "-!") Then
    SS$ = "-!"
                ElseIf IsOperator(rest$, "~") Then
            SS$ = "!"
    ElseIf FastSymbol(rest$, "<=") Then
    SS$ = "="
    End If
    If SS$ = "" Then
              GoTo continuehere
                 
    End If
    If GetVar(bstack, w$, V) Then
        If Len(SS$) = 1 Then
                    If IsExp(bstack, rest$, p) Then
                            On Error Resume Next
                            Select Case SS$
                            Case "="
                            var(V) = Int(p)
                            Case "+"
                                var(V) = Int(p) + var(V)
                                Case "*"
                                 var(V) = Int(Int(p) * var(V))
                                Case "-"
                                var(V) = var(V) - Int(p)
                                Case "/"
                                     If p = 0 Then
                                ExecuteVarOnly = 0:   Exit Function
                                End If
                                 var(V) = var(V) \ Int(p)
                                                     Case "!"
                                 var(V) = -1 - (var(V) <> 0)
                            End Select
                            If Err.Number = 6 Then ExecuteVarOnly = 0:   Exit Function
                                On Error GoTo 0
                    Else
                                ExecuteVarOnly = 0:   Exit Function
                    End If
        Else
        If SS$ = "++" Then
          var(V) = 1 + var(V)
          ElseIf SS$ = "--" Then
          var(V) = var(V) - 1
          Else
          var(V) = -var(V)
          End If
        End If
    Else
            ExecuteVarOnly = 0:   Exit Function
    End If
End If
Case 5
If neoGetArray(bstack, w$, pppp) Then
If Not NeoGetArrayItem(pppp, bstack, w$, V, rest$) Then

 
If LastErNum = -2 Then

ExecuteVarOnly = 0:  Exit Function
Else
ExecuteVarOnly = 0
Exit Function
End If
End If
On Error Resume Next

If Not FastSymbol(rest$, "=", True) Then

End If
If Not IsExp(bstack, rest$, p) Then
If LastErNum = -2 Then

Else
MissNumExpr
End If
 
ExecuteVarOnly = 0: Exit Function
End If
pppp.item(V) = p
Do While FastSymbol(rest$, ",")
If pppp.UpperMonoLimit > V Then
V = V + 1
If Not IsExp(bstack, rest$, p) Then ExecuteVarOnly = 0:   Exit Function
pppp.item(V) = p
Else
Exit Do
End If
Loop
lcl = False
Else
MyEr "Can't find array " & w$ & ")", "��� ������ ������ " & w$ & ")"
ExecuteVarOnly = 0:   Exit Function
End If
Case 6
If neoGetArray(bstack, w$, pppp) Then
If Not NeoGetArrayItem(pppp, bstack, w$, V, rest$) Then ExecuteVarOnly = 0:   Exit Function
On Error Resume Next

If Not FastSymbol(rest$, "=") Then
  If FastSymbol(rest$, ":=") Then
    SS$ = Left$(aheadstatus(rest$), 1)
        If SS$ = "S" Then
        If Not IsStrExp(bstack, rest$, SS$) Then ExecuteVarOnly = 0:      Exit Function
        Else
        If Not IsExp(bstack, rest$, p) Then ExecuteVarOnly = 0:    Exit Function
        SS$ = Trim$(Str$(p))
        End If
             If Not IsObject(pppp.item(V)) Then
          pppp.item(V) = SS$
          Else
        CheckVar pppp.item(V), SS$
        
        End If
        Do While FastSymbol(rest$, ",")
        If pppp.UpperMonoLimit > V Then
        V = V + 1
          SS$ = Left$(aheadstatus(rest$), 1)
                        If SS$ = "S" Then
        If Not IsStrExp(bstack, rest$, SS$) Then ExecuteVarOnly = 0:     Exit Function
        Else
        If Not IsExp(bstack, rest$, p) Then ExecuteVarOnly = 0:   Exit Function
        SS$ = Trim$(Str$(p))
        End If
        
                If Not IsObject(pppp.item(V)) Then
                  pppp.item(V) = SS$
                  Else
                CheckVar pppp.item(V), SS$
                
                End If
        Else
        Exit Do
        End If
        Loop
   lcl = False
    Else
        ExecuteVarOnly = 0:   Exit Function
    End If
Else
If Not IsStrExp(bstack, rest$, SS$) Then
     ExecuteVarOnly = 0:   Exit Function
     End If
    If Not IsObject(pppp.item(V)) Then
        pppp.item(V) = SS$
    Else
        CheckVar pppp.item(V), SS$
    End If
        Do While FastSymbol(rest$, ",")
        If pppp.UpperMonoLimit > V Then
        V = V + 1
        If Not IsStrExp(bstack, rest$, SS$) Then ExecuteVarOnly = 0:   Exit Function
        
        If Not IsObject(pppp.item(V)) Then
          pppp.item(V) = SS$
          Else
        CheckVar pppp.item(V), SS$
        
        End If
        Else
        Exit Do
        End If
        Loop
        lcl = False
End If
Else
ExecuteVarOnly = 0:   Exit Function
End If
Case 7
If neoGetArray(bstack, w$, pppp) Then
If Not NeoGetArrayItem(pppp, bstack, w$, V, rest$) Then ExecuteVarOnly = 0:   Exit Function
On Error Resume Next
If Not FastSymbol(rest$, "=") Then ExecuteVarOnly = 0: Exit Function
If Not IsExp(bstack, rest$, p) Then ExecuteVarOnly = 0: Exit Function
p = Int(p)
If Err.Number > 0 Then ExecuteVarOnly = 0: Exit Function
pppp.item(V) = p
Do While FastSymbol(rest$, ",")
If pppp.UpperMonoLimit > V Then
V = V + 1
If Not IsExp(bstack, rest$, p) Then ExecuteVarOnly = 0: Exit Function
pppp.item(V) = p
Else
Exit Do
End If
Loop
Else
ExecuteVarOnly = 0: Exit Function
End If
Case Else

If MaybeIsSymbol(rest$, ",-+*/_!@()[];<>|~`") Then
SyntaxError
ExecuteVarOnly = 0
Exit Function
End If
End Select
End Select
continuehere:
''\\\\\\\\\\\\\\\\
LogGroup bstack, vvv, ohere$, OvarnameLen, OarrnameLen, lcl
If MaybeIsSymbol(rest$, "}") Then

ExecuteVarOnly = 1
Exit Do
End If
If Not FastSymbol(rest$, ",") Then
SetNextLine rest$
lcl = False
End If
ExecuteVarOnly = 1
Loop Until Trim(rest$) = ""


End Function
Private Sub CallByObject2(bstack As basetask, b$, i As Long, Ret As Boolean)
Dim that As stdCallFunction
Dim k As Long, p As Double, final(0 To 63) As Variant
Dim x1 As Long, what$, curtype As Long, s$
Dim pppp As mArray, par(0 To 63) As Variant, thisref(0 To 63) As Long

Set that = var(i)
For k = 1 To that.Count
       
        If that.IsByRef(k - 1) Then
            ' look for label..and check it
            IsSymbol3 b$, "&"   'drop it is optional
            curtype = Abs(IsLabel(bstack, b$, what$))
            If that.CheckType(k - 1, curtype) Then
            ' so this is the right type
            
                    If curtype <= 4 Then
                            If GetlocalVar(bstack.GroupName & what$, x1) Then   '''why GetlocalVar(bstack.GroupName
                                    thisref(k - 1) = x1 ' so that is used to restore value
                                    If IsObject(var(x1)) Then
                                         ' THIS IS NOT GOOD
                                    
                                    Else
                                             final(k - 1) = var(x1)  ' so if this is a long we place a variant long
                                     End If
                            Else
                            ' no such variable
                            End If
                            ''****************
                    ElseIf neoGetArray(bstack, what$, pppp, HERE$ <> "") Then ''bstack.GroupName &
                            If NeoGetArrayItem(pppp, bstack, bstack.GroupName & what$, x1, b$) Then
                                Set par(k - 1) = pppp ' we hold a reference to array
                                If IsObject(pppp.item(x1)) Then
                                   ' THIS IS NOT GOOD
                                Else
                                final(k - 1) = pppp.item(x1)
                                End If
                            End If
                    
                    End If
            Else
            ' type mismatch
            ' exit - error
            End If
        Else
                Select Case that.ReadType(k - 1)
                Case 2
                    If Not IsExp(bstack, b$, p) Then Exit For
                    final(k - 1) = CLng(p)
                Case 1, 5
                    If Not IsExp(bstack, b$, p) Then Exit For
                    final(k - 1) = p
                Case 4, 7
                    If Not IsExp(bstack, b$, p) Then Exit For
                    final(k - 1) = Int(p)
                Case Else
                    If Not IsStrExp(bstack, b$, s$) Then Exit For
                    final(k - 1) = s$
                End Select
        End If
Next k
If k > that.Count Then
'all is ok
' make your call

''x1 = stdCallW(that.LIB, that.FUNC, vbLong, final(), that.Count)
x1 = 100
If Ret Then
bstack.soros.PushVal CDbl(x1)   ' FEEDBACK TO STACK
End If
Else
'error message


Exit Sub
End If
For k = 1 To that.Count
If that.IsByRef(k - 1) Then
' RESTORE VALUES...
    If that.IsArrayItem(k - 1) Then
    par(k - 1).item(thisref(k - 1)) = final(k - 1)
    Set par(k - 1) = Nothing
    Else
    
    End If
End If
Next k

End Sub
Private Sub CallByObject(bstack As basetask, i As Long, Ret As Boolean)
Dim that As stdCallFunction
Dim k As Long, p As Double, final(0 To 63) As Variant
Dim x1 As Long, what$, curtype As Long, s$, Link$
Dim thisref(0 To 63) As Long

Set that = var(i)
For k = 1 To that.Count
       
        If that.IsByRef(k - 1) Then
            ' look for label..and check it
           If bstack.IsInStackString(what$) Then
                    If that.ReadType(k - 1) <= 4 Then
                            If GetGlobalVar(bstack.GroupName & what$, x1) Then
                                    thisref(k - 1) = x1 ' so that is used to restore value
                                    If IsObject(var(x1)) Then
                                         ' THIS IS NOT GOOD
                                    
                                    Else
                                             final(k - 1) = var(x1)  ' so if this is a long we place a variant long
                                            thisref(k - 1) = x1
                                     End If
                            Else
                            ' no such variable
                            End If
                    Else
                    ' error no array yet
                    
                    End If
            Else
            ' type mismatch
            ' exit - error
            End If
        Else
                Select Case that.ReadType(k - 1)
                Case 2
                   If Not bstack.IsInStackNumber(p) Then Exit For
                    final(k - 1) = CLng(p)
                Case 1, 5
                     If Not bstack.IsInStackNumber(p) Then Exit For
                    final(k - 1) = p
                Case 4, 7
                    If Not bstack.IsInStackNumber(p) Then Exit For
                    final(k - 1) = Int(p)
                Case Else
                    If Not bstack.IsInStackString(s$) Then Exit For
                    final(k - 1) = s$
                End Select
        End If
Next k
If k > that.Count Then
'all is ok
' make your call

x1 = stdCallW(that.LIB, that.FUNC, vbLong, final(), that.Count)
If Ret Then
If that.RetType = 0 Then
bstack.soros.PushVal CDbl(x1)   ' FEEDBACK TO STACK
Else
bstack.soros.PushStr GetBStrFromPtr(x1)
End If
End If
Else
'error message


Exit Sub
End If
For k = 1 To that.Count
If that.IsByRef(k - 1) Then
' RESTORE VALUES...
    If that.ReadType(k - 1) < 5 Then
    var(thisref(k - 1)) = final(k - 1)
    
    End If
End If
Next k

End Sub

Sub CallGlobal(s$)
Dim ohere$
ohere$ = HERE$
HERE$ = "@"
 Execute basestack1, s$, False
 s$ = ""
HERE$ = ohere$
End Sub



Public Sub ProcProperty(bstack As basetask, V(), vIndex As Long, FN$, rest$, language As Long)
Dim var1() As Variant, s$, r As Double, l As Long, newref As Long, many As Long
Dim var2() As String
Dim vv As Object
Set vv = V(vIndex)
ReDim var1(0 To 0)

Do
If FastSymbol(rest$, ",") Then
If IsExp(bstack, rest$, r) Then
''var1(0) = r
l = FindDISPID(vv, FN$)
ChangeOneParameter vv, l, (r), FN$
ElseIf IsStrExp(bstack, rest$, s$) Then
var1(0) = s$

CallByNameFixParamArray vv, FN$, VbLet, var1(), var2(), 1

End If
ElseIf IsLabelSymbolNew(rest$, "��", "AS", language) Then
' WE MAKE A NEW OBJECT

l = FindDISPID(vv, FN$)
FN$ = Typename(vv) & "." & UCase(FN$)
If l <> -1 Then
' we have vv, fn$, l and we are looking for a label to make an object to that
If Abs(IsLabel(bstack, rest$, s$)) < 5 Then
' now we have  S$, but maybe is used
''s$ = myUcase(s$)
If GetlocalVar(s$, newref) Then
' so it is an object now
If Not IsObject(V(newref)) Then
MakeitPropReference V(newref)
ElseIf Typename(V(newref)) <> "PropReference" Then
MakeitPropReference V(newref)
End If
Else
''GlobalVar s$, 0   'we push a zero..GlobalVar create
''GetlocalVar s$, newref
newref = GlobalVarRefOnly(bstack.GroupName & s$)
MakeitPropReference V(newref)
V(newref).Construct vIndex, l   ' this is the link vindex is an index to var()
' so for every method or property we use this simple struct
' we can define the value type

End If


End If
End If
ElseIf IsLabelSymbolNew(rest$, "����", "SET", language) Then
' we make a new reference to that property
End If
 If FastSymbol(rest$, ",") Then
 If Not IsStrExp(bstack, rest$, FN$) Then Exit Do
 Else
 Exit Do
 End If
Loop
End Sub
''ProcProperty bstack, var(i), sS$, rest$,  LANG
' METHOD A,"Multiply" (12,12) [AS RESULT]   (or Result$)  if [As] isn't there so
' METHOD A "Multiply" (12,12)  AS RESULT  without
' METHOD A "Multiply", &alfa,&beta$   'passing by reference
''ProcMethod bstack, var(i), sS$, rest$,  LANG
Sub ProcMethod(bstack As basetask, V(), vIndex As Long, FN$, rest$, language As Long)
Dim var1() As Variant, s$, r As Double, l As Long, newref As Long, glob As Boolean
Dim vv As Object, mstack As New mStiva, result As Variant, retobject As Object
Dim namarg As Long
Set vv = V(vIndex)
ReDim var1(0 To 0)
Dim var2() As String
ReDim var2(0 To 0)
' expression or label:=expression'

''Exit Sub
Dim what$, it As Long, items As Long
 If FastSymbol(rest$, ",") Then
' we have parameters..(by value)
If FastSymbol(rest$, "(") Then  ' we have "(par1, par2...) as result"
RealMeth bstack, rest$, var1(), var2(), items, namarg
If Not FastSymbol(rest$, ")", True) Then Exit Sub
Else
RealMeth bstack, rest$, var1(), var2(), items, namarg  ' if we have as result then we get an error...
End If
 result = CallByNameFixParamArray(vv, FN$, VbMethod, var1(), var2(), items, retobject, namarg)
Else
 result = CallByNameFixParamArray(vv, FN$, VbMethod, var1(), var2(), 0, retobject, namarg)
End If
If Not retobject Is Nothing Then
     If IsLabelSymbolNew(rest$, "��", "AS", language) Then
             glob = IsLabelSymbolNew(rest$, "������", "GLOBAL", language)
             If Abs(IsLabel(bstack, rest$, what$)) = 1 Then
                                If GetVar(bstack, what$, it) Then
                                    Set var(it) = retobject
                                Else
                                    it = GlobalVar(what$, 0, glob)
                                    Set var(it) = retobject
                                End If
            End If
     End If
Else
     If IsLabelSymbolNew(rest$, "��", "AS", language) Then
             glob = IsLabelSymbolNew(rest$, "������", "GLOBAL", language)
             Select Case Abs(IsLabel(bstack, rest$, what$))
             Case 1
                                If GetVar(bstack, what$, it) Then
                                    var(it) = CDbl(result)
                                    
                                Else
                                    GlobalVar what$, CDbl(result), glob
                                    
                                End If
              Case 4
                                If GetVar(bstack, what$, it) Then
                                    var(it) = Int(CDbl(result))
                                Else
                                    GlobalVar what$, Int(CDbl(result)), glob
                                    
                                End If
              Case 3
              If GetVar(bstack, what$, it) Then
                                    var(it) = CStr(result)
                                Else
                                    GlobalVar what$, CStr(result), glob
                                    
                                End If
              End Select
            
    End If
End If
End Sub
Sub RealMeth(bstack As basetask, rest$, var2() As Variant, var3() As String, NoNameditems As Long, namedargument As Long)
'  testmeth "122,&beta,121,alfa:=a+4, beta:=122"
Dim s$, l$
Dim trap As Long, SS$, p As Double, items As Long
Do
again:
s$ = aheadstatus(rest$, True) + " "

Select Case Left$(s$, 1)
Case "S"
If (trap Mod 2 = 0) And namedargument > 0 Then Exit Do  ' is a fault
        If IsStrExp(bstack, rest$, SS$) Then
            var2(items) = SS$
           If namedargument = 0 Then NoNameditems = NoNameditems + 1
        Else
            var2(items) = ""
            s$ = ""
        End If
        If trap > 0 Then trap = trap + 1
        items = items + 1
        If UBound(var2()) < items Then ReDim Preserve var2(items + 1)
Case "N"


        ' maybe is a named argument
        l$ = rest$
        If IsLabel(bstack, l$, SS$) Then
                If IsOperator(l$, ":=") Then
                    'push name to
                    namedargument = namedargument + 1
                    If UBound(var3()) < namedargument Then ReDim Preserve var3(namedargument + 1)
                    var3(namedargument) = SS$
                    
                    trap = 1
                    rest$ = l$
                    GoTo again
                Else
                       If Not ((trap Mod 2 = 0) And namedargument > 0) Then
                            
                            If IsExp(bstack, rest$, p) Then
                                 var2(items) = p
                                If namedargument = 0 Then NoNameditems = NoNameditems + 1
                                  If trap > 0 Then trap = trap + 1
                             Else
                             
                             End If
                        Else
                        Exit Do
                        End If
                End If
        Else
                If Not ((trap Mod 2 = 0) And namedargument > 0) Then
                         If IsExp(bstack, rest$, p) Then
                             var2(items) = p
                             If namedargument = 0 Then NoNameditems = NoNameditems + 1
                              If trap > 0 Then trap = trap + 1
                         Else
                                 Exit Do
                         End If
                 Else
                             Exit Do
                 End If
    End If
        items = items + 1
        If UBound(var2()) < items Then ReDim Preserve var2(items + 1)
End Select
If Not FastSymbol(rest$, ",") Then Exit Do
Loop Until s$ = ""

End Sub
Sub TestMeth(rest$)
'  testmeth "122,&beta,121,alfa:=a+4, beta:=122"
Dim s$, y1 As Long, l$, namedargument As Long
Dim trap As Long
Do
s$ = aheadstatus(rest$, True, y1)
''Debug.Print s$, Mid$(rest$, 1, y1 - 1)
If s$ <> "" Then
    l$ = Mid$(rest$, 1, y1 - 1)
    rest$ = Mid$(rest$, y1)
End If
If FastSymbol(rest$, ":=") Then

namedargument = namedargument + 1
trap = 0
ElseIf FastSymbol(rest$, ",") Then
trap = trap + 1
If trap > 1 And namedargument > 0 Then
''Debug.Print "error...no normal after namedvariablesl"
Exit Sub
End If
End If
y1 = 1
Loop Until s$ = ""
End Sub
Function ReadProp(fromIndex As Long, ByVal propIndex As Long) As Variant
Dim o As Object, er$
Set o = var(fromIndex)
er$ = ""
ReadProp = ReadOneParameter(o, propIndex, er$)
If er$ <> "" Then
BadGetProp
End If
End Function
Sub WriteProp(fromIndex As Long, ByVal propIndex As Long, Anyval As Variant)
Dim o As Object, er$
Set o = var(fromIndex)
ChangeOneParameter o, propIndex, Anyval, er$
If er$ <> "" Then
BadLetProp
End If
End Sub

Sub MakeThisSub(ThatStack As basetask, rest$)

If Left$(rest$, 5) = "THIS." Then

    If ThatStack.GroupName = "" Then
        rest$ = ThatStack.UseGroupname & Mid$(rest$, 6)
    Else
        rest$ = ThatStack.GroupName & Mid$(rest$, 6)
    End If

ElseIf Left$(rest$, 5) = "����." Then

If ThatStack.GroupName = "" Then
    rest$ = ThatStack.UseGroupname & Mid$(rest$, 6)

Else

    rest$ = ThatStack.GroupName & Mid$(rest$, 6)
End If

Else

End If
End Sub

Sub MakeThisSubNum(ThatStack As basetask, rest$)
If Left$(rest$, 5) = "THIS." Then
    If ThatStack.UseGroupname <> "" Then
        rest$ = ThatStack.UseGroupname & Mid$(rest$, 6)
    Else
        rest$ = ThatStack.GroupName & Mid$(rest$, 6)
    End If
ElseIf Left$(rest$, 5) = "����." Then
    If ThatStack.UseGroupname <> "" Then
       rest$ = ThatStack.UseGroupname & Mid$(rest$, 6)
    Else
        rest$ = ThatStack.GroupName & Mid$(rest$, 6)
    End If
End If

End Sub

Function ColorRGB(bstack As basetask, n$, r As Double) As Boolean
Dim r2 As Double, r3 As Double, SS$, par As Boolean
ColorRGB = True
    If IsExp(bstack, n$, r) Then
            
            r = mycolor(r)
            par = True
            If FastSymbol(n$, ",") Then
            par = IsExp(bstack, n$, r2)
            If par And FastSymbol(n$, ",") Then
            par = IsExp(bstack, n$, r3)
            End If
            r = rgb(Abs(r Mod 256), Abs(r2 Mod 256), Abs(r3 Mod 256))
            End If
            If Not par Then ColorRGB = False: Exit Function
    ElseIf IsStrExp(bstack, n$, SS$) Then
            ' value in hexadecimal input as in html RGB
            ' we have to make BGR
    
            SS$ = Right$("00000000" & SS$, 8)
   r = CDbl(UNPACKLNG(Right$(SS$, 2)) * 65536#) + CDbl(UNPACKLNG(Mid$(SS$, 5, 2)) * 256#) + CDbl(UNPACKLNG(Mid$(SS$, 3, 2)))
   
         
             Else
              ColorRGB = False
              
    End If
End Function

Function globalArrByPointer(bs As basetask, basestack As basetask, what$, Optional newonly As Boolean = False) As Boolean
Dim pppp As mArray, myobject As Object
   If bs.IsObjectRef(myobject) Then
   If newonly Then GoTo there1
             If neoGetArray(basestack, what$, pppp) Then ''basestack.GroupName &
             If Not pppp Is Nothing Then
                myobject.CopyArray pppp
                Set myobject = Nothing
                globalArrByPointer = True
                End If
            Else
there1:
      
                GlobalArr basestack, basestack.GroupName & what$, "", 0, -1
                If neoGetArray(basestack, what$, pppp) Then  ''basestack.GroupName &
                   myobject.CopyArray pppp
                   Set myobject = Nothing
                   globalArrByPointer = True
                End If
                
             End If
      
    End If
End Function

Public Sub CopyGroup(mg As Variant, bstack As basetask)
Dim mgroup As Group
Set mgroup = mg
Dim name$, k As Group, i As Long, j As Long, s$, V As Variant, W3 As Long
Dim b$(), vvl As Variant, delme As Document, myArray As mArray, mySecondArray As mArray
Dim c$(), arrIndex As Long, choose$
Set k = New Group
b$() = Split(LTrim(Replace(mgroup.Varlist, Chr$(1) + "_ ", " ")), " ")
c$() = Split(LTrim(Replace(mgroup.ArrList, Chr$(13) + "__", " ")), " ")
choose$ = mgroup.types()
''Debug.Print "Copy this "; mgroup.GroupName; " to bstack.lastobj " + choose$
' counters
Dim BI As Long, Ci As Long, tI As Long
tI = 1
i = Len(choose)
k.BeginFloat i + 2
k.PokeItem 0, "Variables-Arrays"
k.PokeItem 1, i
For j = 2 To i * 2 + 1 Step 2
If Mid$(choose$, tI, 1) = "V" Then

k.PokeItem j, b$(BI)
''Debug.Print "Place to bag this :"; b$(bi)
If Typename(var(Val(b$(BI + 1)))) = doc Then 'preserve Documents
 MakeitObject vvl
 vvl.EmptyDoc
 vvl.textDoc = var(Val(b$(BI + 1))).textDoc
 k.PokeItem j + 1, vvl
ElseIf Typename(var(Val(b$(BI + 1)))) = "Group" Then
MakeitObject2 vvl

vvl.GroupName = var(Val(b$(BI + 1))).GroupName


CopyGroup var(Val(b$(BI + 1))), bstack
Set vvl = bstack.LastObj
Set bstack.LastObj = Nothing
k.PokeItem j + 1, vvl

Else
k.PokeItem j + 1, var(Val(b$(BI + 1)))
End If
BI = BI + 2
Else

k.PokeItem j, c$(Ci) + ")"
If c$(Ci + 1) = "" Then
Set vvl = New mArray
Else
Set myArray = neoArray(c$(Ci + 1))

Set mySecondArray = New mArray
myArray.CopyArray mySecondArray
mySecondArray.arrname = myArray.arrname
Set vvl = mySecondArray
Set myArray = Nothing
End If
 k.PokeItem j + 1, vvl
Set vvl = Nothing

Ci = Ci + 2

End If
tI = tI + 1
Next j
k.PokeItem j, mgroup.LocalList
k.PokeItem j + 1, GetFunctionList(mgroup.FuncList)
Set bstack.LastObj = k
'groupname-Varlist-FuncList-ArrList not used
End Sub

Sub UnFloatGroup(bstack As basetask, what$, i As Long, myobject As Object)
While Right$(what$, 1) = "."
what$ = Left$(what$, Len(what$) - 1)
Wend
If Trim$(what$) = "" Then Exit Sub
 Dim ps As mStiva, V As Long, s$, frm$, vvl As Variant, x1 As Long, SS$, frmarr$, sss$
 Dim grtype As Variant, ps2push As String
 Set var(i) = New Group
 Set ps = var(i).soros
 Dim subgroup As Object, pppp As mArray
 Dim ohere$, oldgroupname$
 ohere$ = HERE$

If bstack.UseGroupname <> "" Then
HERE$ = ""
End If
 oldgroupname$ = bstack.GroupName
    If bstack.GroupName <> "" Then
  bstack.GroupName = bstack.GroupName & what$ & "."
  Else
  bstack.GroupName = what$ & "."
  End If

With myobject
            If .IamFloatGroup Then
                    .PeekItem 0, grtype
                    .PeekItem 1, vvl
                    For x1 = 2 To 1 + vvl * 2 Step 2
                            .PeekItem x1, vvl    'here is the name
                            If Right$(vvl, 1) = ")" Then
                                       frmarr$ = frmarr$ + Chr$(13) + "__" + Left$(vvl, Len(vvl) - 1) + " "
                            Else
                                       frm$ = frm$ + Chr$(1) + "_ " + vvl
                            End If
                            
                            s$ = vvl

                            
                                     If HERE$ = "" Then
                                        ps2push = bstack.GroupName + s$
                                        Else
                                        ps2push = HERE$ + "." + bstack.GroupName + s$
                                        End If
               
                            
                            .PeekItem x1 + 1, vvl  'here is the value

                                       If InStr(s$, ".") = 0 Then

                            If Typename(vvl) = "mArray" Then
                                            s$ = Left$(s$, Len(s$) - 1)
                                            SS$ = ""
                                            If Not neoGetArrayLinkOnly(bstack, s$, SS$) Then ''
                                                    Set subgroup = vvl
                                                    GlobalArr bstack, s$, SS$, 0, -1 ''bstack.GroupName &
                                                    Set pppp = neoArray.item(SS$)
                                                    subgroup.CopyArray pppp
                                                    Set subgroup = Nothing
                                            End If
                                            frmarr$ = frmarr$ + SS$
                                            ps.DataStr ps2push + " " + SS$
                                            
                            Else  ' is not array so...

                                                        V = GlobalVar(bstack.GroupName & s$, 0)
                     
                                            If Typename(vvl) = "Group" Then
                                                        Dim spare As Object
                                                        Set spare = vvl
                                                        UnFloatGroup bstack, s$, V, spare
                                                    '    vvl.EndFloat
                                                        Set spare = Nothing
                                                         ps.DataStr "*" + ps2push + Str(V)
                                            Else
                                                        If IsObject(vvl) Then
                                                                    Set var(V) = vvl
                                                        Else
                                                                    var(V) = vvl
                                                        End If
                                                ps.DataStr ps2push + Str(V)
                                            End If
                                                         SS$ = String$(16, ".")
                                                        Mid$(SS$, 1) = Str$(V)
                                                        frm$ = frm$ + SS$
                                                  
                            End If
                            End If  ' rom instr
                 Next x1
           
                        If ohere$ = "" Or bstack.UseGroupname <> "" Then
                        HERE$ = ""
                        Else
                        HERE$ = ohere$
                        End If
              
              .PeekItem x1, vvl
     
              If Trim$(vvl) <> "" Then
              s$ = CStr(vvl)

                 ExecuteVarOnly bstack, what$, i, s$, 1
              End If
                .PeekItem x1 + 1, vvl
               
              If Trim$(vvl) <> "" Then
              s$ = CStr(vvl)
           
                bstack.GroupName = ""
              While s$ <> ""
                 If ohere$ = "" Or bstack.UseGroupname <> "" Then
               HERE$ = oldgroupname$ + what$
              Else
              HERE$ = ohere$ + "." + oldgroupname$ + what$
              End If
              
              ''Execute bstack, s$, (True)
          x1 = IsLabelA("", s$, SS$)
        
             If x1 <> 0 Then
                sss$ = s$
                If Len(SS$) > 6 Then
                        x1 = IsLabelA("", s$, SS$)
                        If Identifier(bstack, "@FUNCTION", sss$) Then  '' >6 len for function
                        x1 = bstack.IndexSub
                                              var(i).FuncList = Chr$(1) + Chr$(2) + SS$ + "()" + Str(x1) + Chr$(1) + var(i).FuncList
                                              sbgroup(x1) = HERE$ + "."
                        Else
                        x1 = 0
                         End If
                       
                      
                Else
                        x1 = IsLabelA("", s$, SS$)
                        If Identifier(bstack, "@MODULE", sss$) Then
                         x1 = bstack.IndexSub
                              var(i).FuncList = Chr$(1) + Chr$(2) + SS$ + Str(x1) + Chr$(1) + var(i).FuncList
                              sbgroup(x1) = HERE$ + "."
                      Else
                        x1 = 0
                       End If
                End If
                
       
                sss$ = NLtrim$(sss$) + " "
                While Asc(sss$) = 13
                    SetNextLine sss$
                    sss$ = NLtrim$(sss$) + " "
                Wend
                    If bstack.UseGroupname <> "" Then
                                HERE$ = ""
                    Else
                            HERE$ = ohere$
                    End If
               
                s$ = sss$
              Else
              s$ = ""
              End If
              Wend

              End If
                 End If
                End With
                With var(i)
                 .GroupName = what$ + "."
                 .FloatGroupName = myobject.FloatGroupName
                .Varlist = frm$
                .ArrList = frmarr$
                
         
                End With
            
            HERE$ = ohere$
             bstack.GroupName = oldgroupname$
End Sub
Sub UnFloatGroupReWriteVars(bstack As basetask, what$, i As Long, myobject As Object)
While Right$(what$, 1) = "."
what$ = Left$(what$, Len(what$) - 1)
Wend
If Trim$(what$) = "" Then Exit Sub
 Dim ps As mStiva, V As Long, s$, frm$, vvl As Variant, x1 As Long, SS$, frmarr$, sss$
 Dim grtype As Variant, ps2push As String, tt As Long, ff$
 Set ps = var(i).soros
 Dim subgroup As Object, pppp As mArray
 Dim ohere$, oldgroupname$
 ohere$ = HERE$
If bstack.UseGroupname <> "" Then
' check this please..
HERE$ = ""
End If
 oldgroupname$ = bstack.GroupName
    If bstack.GroupName <> "" Then
  bstack.GroupName = bstack.GroupName & what$ & "."
  Else
  bstack.GroupName = what$ & "."
  End If

             With myobject
             If Not .IamFloatGroup Then

             GoTo exithere1
             End If
                If .IamFloatGroup Then
                 .PeekItem 0, grtype
                 
                 .PeekItem 1, vvl
                    For x1 = 2 To 1 + vvl * 2 Step 2
                            .PeekItem x1, vvl    'here is the name
                            If Right$(vvl, 1) = ")" Then
                                     ff$ = Chr$(13) + "__" + Left$(vvl, Len(vvl) - 1) + " "
                            Else
                                       ff$ = Chr$(1) + "_ " + vvl
                            End If
                            
                            s$ = vvl
                            
                                        If HERE$ = "" Then
                                        ps2push = bstack.GroupName + s$
                                        Else
                                        ps2push = HERE$ + "." + bstack.GroupName + s$
                                        End If
                            
                            .PeekItem x1 + 1, vvl  'here is the value

                            If Typename(vvl) = "mArray" Then
                                            s$ = Left$(s$, Len(s$) - 1)
                                            SS$ = ""
                                            If Not neoGetArrayLinkOnly(bstack, s$, SS$) Then ''
                                                    Set subgroup = vvl
                                                    GlobalArr bstack, s$, SS$, 0, -1
                                                    Set pppp = neoArray.item(SS$)
                                                    subgroup.CopyArray pppp
                                                    Set subgroup = Nothing
                                            Else
                                            Set subgroup = vvl
                                                    Set pppp = neoArray.item(SS$)
                                                    subgroup.CopyArray pppp
                                                    Set subgroup = Nothing
                                            End If
                                            tt = ps.Total
                                            ps.DataStrUn ps2push + " " + SS$
                                            If Not tt = ps.Total Then frmarr$ = frmarr$ + ff$ + SS$
                                            
                                            
                            Else  ' is not array so...
                                  If GetVar(bstack, bstack.GroupName & s$, V) And HERE$ = "" Then
                                  ' this needed for "a<=b"  a copy to a global group
                                
                                                ElseIf Not GetVar(bstack, s$, V) Then
                                                        V = GlobalVar(bstack.GroupName & s$, 0)
                                            End If
                                            If Typename(vvl) = "Group" Then
                                                        Dim spare As Object
                                                        Set spare = vvl
                                                                    If Typename(var(V)) <> "Group" Then
                                                                                UnFloatGroup bstack, s$, V, spare
                                                                    Else
                                                                                UnFloatGroupReWriteVars bstack, s$, V, spare
                                                                    End If
                                           
                                                        Set spare = Nothing
                                                                  tt = ps.Total
                              
                                                         ps.DataStrUn "*" + ps2push + Str(V)
                                            Else
                                                        If IsObject(vvl) Then
                                                                    Set var(V) = vvl
                                                        Else
                                                                    var(V) = vvl
                                                        End If
                                                         tt = ps.Total
                                                             ps.DataStrUn ps2push + Str(V)
                                            End If
                                                     If Not tt = ps.Total Then
                                                        SS$ = String$(16, ".")
                                                        Mid$(SS$, 1) = Str$(V)
                                                        frm$ = frm$ + ff$ + SS$
                                       End If

                            End If
                 Next x1
                End If
                 If ohere$ = "" Or bstack.UseGroupname <> "" Then
                                HERE$ = ""
              Else
                                 HERE$ = ohere$
              End If
              
              .PeekItem x1, vvl
              If Trim$(vvl) <> "" Then
              s$ = CStr(vvl)
                   ExecuteVarOnly bstack, what$, i, s$, 1
              End If
                .PeekItem x1 + 1, vvl
               
              If Trim$(vvl) <> "" Then
              s$ = CStr(vvl)
           
                bstack.GroupName = ""
              While s$ <> ""
                 If ohere$ = "" Or bstack.UseGroupname <> "" Then
               HERE$ = oldgroupname$ + what$
              Else
     HERE$ = ohere$ + "." + oldgroupname$ + what$
              End If
              
              ''Execute bstack, s$, (True)
          x1 = IsLabelA("", s$, SS$)
        
             If x1 <> 0 Then
                sss$ = s$
                If Len(SS$) > 6 Then
                        x1 = IsLabelA("", s$, SS$)
                        If Identifier(bstack, "@FUNCTION", sss$) Then  '' >6 len for function
                        x1 = bstack.IndexSub
                                              var(i).FuncList = Chr$(1) + Chr$(2) + SS$ + "()" + Str(x1) + Chr$(1) + var(i).FuncList
                                              sbgroup(x1) = HERE$ + "."
                        Else
                        x1 = 0
                         End If
                       
                      
                Else
                        x1 = IsLabelA("", s$, SS$)
                        If Identifier(bstack, "@MODULE", sss$) Then
                         x1 = bstack.IndexSub
                              var(i).FuncList = Chr$(1) + Chr$(2) + SS$ + Str(x1) + Chr$(1) + var(i).FuncList
                              sbgroup(x1) = HERE$ + "."
                      Else
                        x1 = 0
                       End If
                End If
                
       
                sss$ = NLtrim$(sss$) + " "
                While Asc(sss$) = 13
                    SetNextLine sss$
                    sss$ = NLtrim$(sss$) + " "
                Wend
                        If bstack.UseGroupname <> "" Then
                    HERE$ = ""
                    Else
                                  HERE$ = ohere$
                    End If
               
                s$ = sss$
              Else
              s$ = ""
              End If
              Wend

              End If
             
             ''\   .EndFloat
                   
                
                
                End With
                With var(i)
                 .GroupName = what$ + "."
                .Varlist = .Varlist + frm$
                .ArrList = .ArrList + frmarr$
                
         
                End With
exithere1:
            HERE$ = ohere$
             bstack.GroupName = oldgroupname$

End Sub
Function GetFunctionList(ByVal s$) As String
Dim c$, f$, k$(), b$(), q$(), dd$, qq$
While s$ <> ""
If ISSTRINGA(s$, c$) Then
k$() = Split(c$, " ")
qq$ = RTrim$(SB(Val(k$(1))))
If qq$ <> "" Then
  ''      While Left$(qq$, 10) = "'11001EDIT"
   ''           SetNextLine qq$
     ''         Wend
    If Right$(qq$, 2) <> vbCrLf Then qq$ = qq$ + vbCrLf
End If
If Right$(k$(0), 1) = ")" Then


f$ = "Function " + Mid$(k$(0), 2, Len(k$(0)) - 3) + " {" + qq$ + "}" + vbCrLf + f$
Else


f$ = "Module " + Mid$(k$(0), 2, Len(k$(0)) - 1) + " {" + qq$ + "}" + vbCrLf + f$
End If
End If

Wend
GetFunctionList = f$
End Function
Sub CopyUnfloatGroup(mg As Variant, bstack As basetask, w$)
' run all variables and copy values...
Dim mgroup As Group
Set mgroup = mg
Dim name$, k As Group, i As Long, j As Long, s$, V As Variant, W3 As Long
Dim b$(), vvl As Variant, delme As Document, myArray As mArray, mySecondArray As mArray
Dim c$(), arrIndex As Long, choose$


End Sub
Sub MakeMyTitle(s$, Lang As Long)
     If InStr(s$, "(") > 0 Then
            If shortlang Then
            If Lang Then Form1.TEXT1.title = "F. " + s$ + " F12 " Else Form1.TEXT1.title = "�. " + s$ + " "
            Else
            If Lang Then Form1.TEXT1.title = "Function " + s$ + " F12 " Else Form1.TEXT1.title = "��������� " + s$ + " "
            End If
            Else
            If shortlang Then
            If Lang Then Form1.TEXT1.title = "M. " + s$ + " F12 " Else Form1.TEXT1.title = "�. " + s$ + " "
            Else
            If Lang Then Form1.TEXT1.title = "Module " + s$ + " F12 " Else Form1.TEXT1.title = "����� " + s$ + " "
            End If
            End If
End Sub
Function SBcode(i As Long) As String
SBcode = SB(i)
End Function
Function GlobalGroup(basestack As basetask, rest$, Lang As Long) As Boolean
Dim ohere$
ohere$ = HERE$
HERE$ = "" ' this is global......
If Lang Then
 GlobalGroup = Identifier(basestack, "@GROUP", rest$)
Else
 GlobalGroup = Identifier(basestack, "@�����", rest$)
End If
HERE$ = ohere$

End Function
Function GlobalMoveGroup(bstack As basetask, w$) As Boolean

Dim myobject As Object, R1 As Long, p As Double
                           R1 = GlobalVar(w$, p)
                                        Set myobject = bstack.LastObj
                                        Set bstack.LastObj = Nothing
                                        If R1 <> 0 Then
                                        
                                            If Typename(var(R1)) = "Group" Then
                                 
                                            UnFloatGroupReWriteVars bstack, w$, R1, myobject
                                            Else
                         
                                        UnFloatGroup bstack, w$, R1, myobject
                                                 ' global??
                                        Set myobject = Nothing
                                    
                                            End If
                                                         
                                            
                                        End If

End Function
Function dimString(typo$) As String
Dim pppp As mArray, PP, i As Long, p
Dim b$(), vl$
b$() = Split(typo$, " ")

Set pppp = neoArray(b$(1))
      pppp.SerialItem PP, CLng(p), 5
         Dim A$()
         ReDim A$(PP)
      For i = 0 To PP - 1
      pppp.SerialItem p, i, 6
      A$(i) = CStr(p)
      Next i
      pppp.SerialItem p, CLng(0), 2
      If InStr(b$(0), "$") > 0 Then
      vl$ = "{" + CStr(p) + "} "
      Else
      vl$ = CStr(p) + " "
      End If
      If PP > 1 Then
      dimString = b$(0) + Join(A$(), ",") + ")=" + vl$
      Else
      dimString = b$(0) + A$(0) + ")=" + vl$
      End If
End Function
Sub LogGroup(bstack As basetask, vvv As Long, ohere$, OvarnameLen As Long, OarrnameLen As Long, lcl As Boolean)
Dim s() As String, w$, i As Long, nm$, nt$, cm$, nt1$, j As Long, k As Long
      With var(vvv)

  
        
        If HERE$ <> "" Then
        w$ = UCase(HERE$ & "." & ohere$ & ".")
        Else
        w$ = UCase(ohere$ & ".")
        End If
            If OvarnameLen < Len(VarName$) Then
            s() = Split(Mid$(VarName$, OvarnameLen), Chr$(1))
                    
            For i = LBound(s()) + 1 To UBound(s())
                 
                If Left(s(i), Len(w$)) = w$ Then
                 j = Val(Split(Mid$(s(i), Len(w$) + 1))(1))
                    nt$ = Typename$(var(j))
                 If Not lcl Then
                                         If nt$ = "Group" Then
                                        .soros.DataStr "*" + Left$(s(i), InStr(s(i), " ") - 1) + Str(j)
                                        Else
                                        .soros.DataStr Left$(s(i), InStr(s(i), " ") - 1) + Str(j)
                                        End If
                                        .Varlist = .Varlist + Chr$(1) + "_ " + Mid$(s(i), Len(w$) + 1)
                           Else
                      ''     GetVar bstack, Left$(S(i), InStr(S(i), " ") - 1), j
                           nm$ = Mid$(s(i), Len(w$) + 1)
                          
                                If nt1$ <> nt$ Then .LocalList = .LocalList + vbCrLf: cm$ = ""
                           If i = LBound(s()) + 1 Then cm$ = "Local " Else cm$ = ", "
                           If nt$ = "Long" Then
                           If cm$ = "," Then nt1$ = "" Else nt1$ = nt$ + " "
                           .LocalList = .LocalList + cm$ + nt1$ + Split(nm$)(0) + "=" + CStr(var(j))
                           ElseIf nt$ = doc Then
                           If cm$ = "," Then nt1$ = "" Else nt1$ = nt$ + " "
                           .LocalList = .LocalList + cm$ + nt1$ + Split(nm$)(0) + "=" + "{" + CStr(var(j)) + "}"
                           ElseIf InStr(nm$, "$") Then
                                .LocalList = .LocalList + cm$ + Split(nm$)(0) + "=" + "{" + CStr(var(j)) + "}"
                           Else
                                .LocalList = .LocalList + cm$ + Split(nm$)(0) + "=" + CStr(var(j))
                            End If
                            nt1$ = nt$
                End If
                End If
            Next i
            If lcl Then .LocalList = .LocalList + vbCrLf
            End If
        
            If OarrnameLen < Len(arrname$) Then
            s() = Split(Mid$(arrname$, OarrnameLen), Chr$(13))
            For i = LBound(s()) To UBound(s())
        
                If Left(s(i), Len(w$)) = w$ Then
                If Not lcl Then
                  .soros.DataStr Split(s(i))(0) + ") " + Split(s(i))(1)
                .ArrList = .ArrList + Chr$(13) + "__" + Mid$(s(i), Len(w$) + 1)
                Else
                .LocalList = .LocalList + vbCrLf + "local DIM " + dimString(Mid$(s(i), Len(w$) + 1)) + vbCrLf
                End If
                End If
            Next i
            End If


End With
OvarnameLen = Len(VarName$) + 1   'we record ...AGAIN
OarrnameLen = Len(arrname$) + 1
End Sub
Function FindNameForGroup(bstack As basetask, w$) As Boolean
Dim SS() As String, w2 As Long
  If InStr(w$, ChrW(&H1FFF)) > 0 Then
        If InStr(w$, ".") > 0 Then
        SS() = Split(w$, ".")
            If GetVar(bstack, SS(0), w2) Then
                If Typename(var(w2)) = "Group" Then
                   If var(w2).FloatGroupName <> "" Then SS(0) = var(w2).FloatGroupName: FindNameForGroup = True
                   w$ = Join(SS(), ".")
                            If InStr(w$, ChrW(&H1FFF)) > 0 Then
                             w$ = ""
                            Else
                             FindNameForGroup = True
                             End If
                 Else
                 w$ = ""
                End If
                                 Else
                 w$ = ""
            End If
                             Else
                 w$ = ""
    End If
    End If
End Function
Sub i3MouseIcon(basestack As basetask, rest$, Lang As Long)
Dim scr As Object, s$, x As Double
Set scr = basestack.Owner


If basestack.toprinter Then
    oxiforPrinter
Else
        If IsLabelSymbolNew(rest$, "�����", "HIDE", Lang) Then
                If basestack.tolayer > 0 Or basestack.toback Then
                            scr.MouseIcon = Form1.Picture2.Picture
                            scr.mousepointer = 99
                Else
                            If Not basestack.LastState Then
                                        basestack.LastState = True
                                        scr.MouseIcon = Form1.Picture2.Picture
                                        scr.mousepointer = 99
                            End If
                End If
        ElseIf IsLabelSymbolNew(rest$, "�����", "SHOW", Lang) Then
                If basestack.tolayer > 0 Or basestack.toback Then
                 scr.mousepointer = 1
                          Set scr.MouseIcon = Nothing
                           
                
                Else
                            If basestack.LastState Then
                                    basestack.LastState = False
                                    If basestack.LastMouse1 = 99 Then
                                          s$ = CFname(basestack.LastMouse2)
                                          scr.MouseIcon = LoadPicture(GetDosPath(s$))
                                    End If
                                    scr.mousepointer = basestack.LastMouse1
                            End If
                End If
        ElseIf IsStrExp(basestack, rest$, s$) Then
                    
                If basestack.tolayer > 0 Or basestack.toback Then
                            If CFname(s$) <> "" Then
                                        s$ = CFname(s$)
                                        scr.MouseIcon = LoadPicture(GetDosPath(s$))
                                        scr.mousepointer = 99
                            End If
                Else
                            If Not basestack.LastState Then
                            s$ = CFname(s$)
                                        scr.MouseIcon = LoadPicture(GetDosPath(s$))
                                        scr.mousepointer = 99
                            Else
                                        If CFname(s$) <> "" Then
                                                s$ = CFname(s$)
                                                basestack.LastMouse1 = 99
                                                basestack.LastMouse2 = s$
                                                If Not basestack.LastState Then
                                                                scr.MouseIcon = LoadPicture(GetDosPath(s$))
                                                                scr.mousepointer = 99
                                                End If
                                        End If
                        End If
                End If
    ElseIf IsExp(basestack, rest$, x) Then
                basestack.LastState = False
                basestack.LastMouse1 = CLng(x)
                scr.mousepointer = CLng(x)
                
    Else
             MyEr "Missing  filename or icon number", "������ ����� ������� � ������� ����������"
    End If
End If
End Sub
Function ProcLegend(basestack As basetask, rest$) As Boolean
Dim s$, frm$, p As Double, x As Double, y As Double, sx As Double, sy As Double
Dim scr As Object, prive As basket
Set scr = basestack.Owner
prive = players(GetCode(scr))
ProcLegend = True
If FastSymbol(rest$, "!") Then
ProcLegend = False
If IsStrExp(basestack, rest$, s$) Then
    ProcLegend = True
    If Not FastSymbol(rest$, ",") Then ProcLegend = False: Exit Function
    If IsExp(basestack, rest$, p) Then
    x = p
    If Not FastSymbol(rest$, ",") Then
    y = 1
    ElseIf Not IsExp(basestack, rest$, y) Then
       ProcLegend = False: Exit Function
    End If
    Else
    x = prive.mx
    If Not FastSymbol(rest$, ",") Then ProcLegend = False: Exit Function
    If Not IsExp(basestack, rest$, y) Then ProcLegend = False: Exit Function
    End If
    wPlain scr, prive, s$, (x), y - 1
End If
Else
If Not IsStrExp(basestack, rest$, s$) Then Exit Function
frm$ = s$
s$ = ""
x = 0
If FastSymbol(rest$, ",") Then
If Not IsStrExp(basestack, rest$, s$) Then Exit Function
End If
If FastSymbol(rest$, ",") Then
If Not IsExp(basestack, rest$, x) Then Exit Function
End If
If FastSymbol(rest$, ",") Then
If Not IsExp(basestack, rest$, y) Then Exit Function
If FastSymbol(rest$, ",") Then
If Not IsExp(basestack, rest$, p) Then Exit Function
If FastSymbol(rest$, ",") Then
If Not IsExp(basestack, rest$, sx) Then Exit Function
If FastSymbol(rest$, ",") Then
If Not IsExp(basestack, rest$, sy) Then Exit Function
nPlain basestack, frm$, s$, x, y, CLng(p), sx <> False, CLng(sy \ DXP)
Else
nPlain basestack, frm$, s$, x, y, CLng(p), sx <> False
End If
Else
nPlain basestack, frm$, s$, x, y, CLng(p)
End If
Else
nPlain basestack, frm$, s$, x, y
End If
Else

nPlain basestack, frm$, s$, x
End If
End If
If FastSymbol(rest$, ";") Then
''NO REFRESH
Else
If Not extreme Then If Not basestack.toprinter Then MyDoEvents1 scr
End If
PlaceBasket scr, prive
End Function
Function ProcText(basestack As basetask, what$, rest$) As Boolean
Dim x1 As Long, frm$, pa$, s$
ProcText = True
If IsSymbol(rest$, "UTF-8") Then
x1 = 2
ElseIf IsSymbol(rest$, "UTF-16") Then
x1 = 0 ' only little endian (but if something convert it to big we can read...)
Else
x1 = 3
End If

s$ = ""
If Not IsStrExp(basestack, rest$, s$) Then
If Not Abs(IsLabelOnly(rest$, s$)) = 1 Then
    ProcText = False
    Exit Function
End If
End If
FastSymbol rest$, ","
If s$ <> "" Then

If FastSymbol(rest$, "+") Then pa$ = "" Else pa$ = "new"
If FastSymbol(rest$, "{") Then frm$ = NLtrim$(blockString(rest$))
If frm$ <> "" Then
If what$ = "HTML" Then
If ExtractType(s$) = "" Then s$ = s$ & ".html"
End If
 textPUT basestack, mylcasefILE(s$), frm$, pa$, x1
Else
 textDel (mylcasefILE(s$))
 ProcText = True
 Exit Function
End If
ProcText = FastSymbol(rest$, "}")
End If
Exit Function

End Function
Function ProcPrinting(basestack As basetask, rest$, Lang As Long) As Boolean
Dim xp As Printer, scr As Object
Set scr = basestack.Owner
  ProcPrinting = True
 If ThereIsAPrinter = False Then Exit Function
If IsLabelSymbolNew(rest$, "���", "ON", Lang) And pname <> "" And Not basestack.toprinter Then
                            basestack.toprinter = True
                            For Each xp In Printers
                            If xp.DeviceName = pname And xp.port = port Then Set Printer = xp
                            Next xp
                            getfirstpage
                            Set scr = Form1.PrinterDocument1
                            If players(-2).Xt = 0 Then
                            players(-2) = players(0)  'COPY dis
                            With players(-2)
                                .curpos = 0
                                .currow = 0
                                .XGRAPH = 0
                                .YGRAPH = 0
                            End With
                            End If
                            PlaceBasket Form1.PrinterDocument1, players(-2)
                            SetText Form1.PrinterDocument1
                            ''SetTextSZ scr, players(0).SZ
                            LCTbasket Form1.PrinterDocument1, players(-2), 0, 0
                            Printer.CurrentX = 0
                            Printer.CurrentY = 0
ElseIf IsLabelSymbolNew(rest$, "���", "OFF", Lang) And basestack.toprinter Then
                    getenddoc
                    Set scr = Form1.DIS
                    basestack.toprinter = False
                    SetNormal scr
ElseIf IsLabelSymbolNew(rest$, "�������", "BREAK", Lang) And basestack.toprinter Then
                    pnum = 0
                    oprinter.ClearUp
                    Form1.PrinterDocument1.Picture = LoadPicture("")
                    Set scr = Form1.DIS
                    basestack.toprinter = False
                    SetNormal scr
                    Else
                    ProcPrinting = False
                    End If
Exit Function


End Function

Function ProcPrinter(basestack As basetask, rest$) As Boolean
Dim xp As Printer, i As Long, p As Double, x1 As Long, y1 As Long, x As Double, y As Double
Dim s$, SS$, frm$, f As Long, pa$, sx As Double, it As Long, ya As Long, AddTwipsTopL As Long
Dim scr As Object
ProcPrinter = True
Set scr = basestack.Owner
If basestack.toprinter Then Exit Function
 If ThereIsAPrinter = False Then Exit Function
If FastSymbol(rest$, "!") Then
olamazi
If ThereIsAPrinter Then
For Each xp In Printers
If xp.DeviceName = pname Then
Set Printer = xp
Exit For
End If
Next xp

If ShowProperties(Form1, Printer.DeviceName, MyDM()) Then
MyDoEvents
PrinterDim pw, ph, psw, psh, pwox, phoy
End If
End If
Exit Function
End If

If FastSymbol(rest$, "?") Then
Form1.List1.clear
For Each xp In Printers
Form1.List1.additemFast xp.DeviceName & " (" & xp.port & ")"
Next xp
For i = 0 To Form1.List1.listcount - 1
If pname & " (" & port & ")" = Form1.List1.List(i) Then Form1.List1.listindex = i
Next i
If interpret(basestack, "menu !") Then
i = InStr(Form1.List1, " (")
pname = Left$(Form1.List1, i - 1)
port = Mid$(Form1.List1, i + 2, InStr(i + 2, Form1.List1, ")") - i - 2)
End If
For Each xp In Printers
If xp.DeviceName = pname And xp.port = port Then Set Printer = xp
Next xp
ReDim MyDM(1 To 1) As Byte
Exit Function
End If
If Not IsExp(basestack, rest$, p) Then p = players(-2).SZ

If FastSymbol(rest$, ",") Then
If IsStrExp(basestack, rest$, s$) Then
For Each xp In Printers
If xp.DeviceName & " (" & xp.port & ")" = s$ Then
pname = xp.DeviceName
port = xp.port
Set Printer = xp
If FastSymbol(rest$, ",") Then
If IsStrExp(basestack, rest$, SS$) Then
LoadArray MyDM(), SS$
End If
Exit For
End If
End If
Next xp

Exit Function
End If
End If
If FastSymbol(rest$, "{") Then
SS$ = "{" & block(rest$) & "}"
frm$ = rest$
If FastSymbol(rest$, "}") Then
 If ThereIsAPrinter = False Then Exit Function
If pname = "" Then Exit Function
For Each xp In Printers
If xp.DeviceName = pname And xp.port = port Then Set Printer = xp
Next xp
getfirstpage

If players(-2).Xt = 0 Then

players(-2) = players(0)  'COPY dis
With players(-2)
players(-2).curpos = 0
players(-2).currow = 0
.SZ = CSng(p * 3)
End With
PlaceBasket Form1.PrinterDocument1, players(-2)
SetText Form1.PrinterDocument1

Else
SetTextSZ Form1.PrinterDocument1, CSng(p * 3)
LCTbasket Form1.PrinterDocument1, players(-2), 0, 0
End If

With Printer   ' for no specific reason..I have to think it again
.CurrentX = 0
.CurrentY = 0
End With
basestack.toprinter = True
it = Execute(basestack, SS$, False)
If Not basestack.toprinter Then
pnum = 0
oprinter.ClearUp
Form1.PrinterDocument1.Picture = LoadPicture("")
Else
getenddoc
End If
basestack.toprinter = False
Set scr = basestack.Owner
If it = 0 Then
If Trim(SS$) = "" Then SS$ = " "
rest$ = Left$(SS$, Len(SS$) - 1) + frm$
ProcPrinter = False
End If
End If
Else
PlainBaSket scr, players(GetCode(scr)), pname & " (" & port & ")"
crNew basestack, players(GetCode(scr))
End If
Exit Function
End Function

Function ProcLayer(basestack As basetask, rest$) As Boolean
Dim xp As Printer, i As Long, p As Double, x1 As Long, y1 As Long, x As Double, y As Double
Dim s$, SS$, frm$, f As Long, pa$, sx As Double, it As Long, W3 As Long, ya As Long, AddTwipsTopL As Long
Dim scr As Object
Dim prive As basket
ProcLayer = True
Set scr = basestack.Owner
prive = players(GetCode(scr))  ' backup
If Not IsExp(basestack, rest$, p) Then p = 0 ' dis
''If scr.name = "DIS" And basestack.tolayer = 1 Then
''basestack.tolayer = 0
''End If
W3 = basestack.tolayer
basestack.tolayer = CLng(p)


If FastSymbol(rest$, "{") Then
If p > 0 Then
f = FindSpriteByTag(CLng(p))
If f = 0 Then
    f = GetNewLayerObj(CLng(p), scr.Width, scr.Height)
    SetTextBasketBack Form1.dSprite(f), prive   ' load form prive to dSprite
    SetText Form1.dSprite(f), prive.MineLineSpace, True    'load Players() with first values
    With players(p)
    .curpos = 0
    .currow = 0
    .mysplit = 0
    .osplit = 0
    .Paper = Form1.DIS.BackColor
    .mypen = players(0).mypen
    End With
    Form1.dSprite(f).BackColor = Form1.DIS.BackColor
End If

p = f
End If
SS$ = "{" & block(rest$) & "}"
frm$ = rest$
If FastSymbol(rest$, "}") Then
If p = 0 Then
Set basestack.Owner = Form1.DIS
Else
Set basestack.Owner = Form1.dSprite(p)
End If
it = Execute(basestack, SS$, False)
MyDoEvents2 basestack.Owner
''LCTC Form1.dSprite(CInt(p)), 0, 0, -1
''if p=0 then if form1.dis.visible then form1.dis.refresh
''If Form1.dSprite(CInt(p)).Visible Then Form1.dSprite(CInt(p)).refresh
GdiFlush
basestack.tolayer = W3
Set basestack.Owner = scr

If it = 0 Then
If Trim(SS$) = "" Then SS$ = " "
rest$ = Left$(SS$, Len(SS$) - 1) + frm$
ProcLayer = False
End If
End If
End If



End Function
Function MakeForm(basestack As basetask, rest$) As Boolean
On Error Resume Next
MakeForm = True
Dim scr As Object, XX As Single, p As Double, x1 As Long, y1 As Long, x As Double, y As Double
Dim W3 As Long, W4 As Long, sx As Double, adjustlinespace As Boolean, SZ As Single
Set scr = basestack.Owner
Dim basketcode As Long, mAddTwipsTop As Long



If scr.name = "Form1" Then

Else
basketcode = GetCode(scr)
With players(basketcode)
mAddTwipsTop = .uMineLineSpace  ' the basic

If IsExp(basestack, rest$, p) Then
    If p < 10 Then p = 10
    x = 4
    XX = 4
    If scr.name = "DIS" Then
    Do
    y = CDbl(XX)
    XX = CSng(x)
    nForm basestack, XX, W3, W4, mAddTwipsTop  'using line spacing
    If XX > CSng(x) Then x = CDbl(XX)
    
    If Form1.Width < W3 * p Then Exit Do
    x = x + 0.25
    Loop
 
    
    Else
    Do
    
    y = CDbl(XX)
    XX = CSng(x)

    nForm basestack, XX, W3, W4, mAddTwipsTop  'using line spacing
    If XX > CSng(x) Then x = CDbl(XX)
    
    If scr.Width < W3 * p Then Exit Do
    
    x = x + 0.4
    Loop
    End If
    x = y
    sx = 0
   
    If FastSymbol(rest$, ",") Then
        If IsExp(basestack, rest$, sx) Then
        '' ok
        
       mAddTwipsTop = 0  ' find a new one
       players(basketcode).MineLineSpace = 0
       players(basketcode).uMineLineSpace = 0
        adjustlinespace = True
    ''    mmx = scr.Width
''mmy = scr.Height
        Else
        MakeForm = False
        MissNumExpr
        Exit Function
        End If
   
End If
If FastSymbol(rest$, ";") And scr.name = "DIS" Then
adjustlinespace = False
    Form1.Move 0, 0, ScrX(), ScrY()
    Form1.BackColor = players(-1).Paper
    
Sleep 1
End If
nForm basestack, CSng(x), W3, W4, 0
Dim mmx As Long, mmy As Long
If sx = 0 Then
SZ = CSng(x)
mmx = scr.Width
 If scr.name = "DIS" Then
 mmy = CLng(mmx * Form1.Height / Form1.Width) ' WHY 3/4 ??
 Else
 mmy = scr.Width
 End If
 players(basketcode).MineLineSpace = mAddTwipsTop
 players(basketcode).uMineLineSpace = mAddTwipsTop
FrameText scr, SZ, CLng(W3 * p), mmy, players(basketcode).Paper
Else
If scr.name = "DIS" Then
If (sx * W4) > Form1.Height Then
y = Form1.Height
While sx * W4 > Form1.Height

XX = y / (dv20 * sx)

nForm basestack, XX, W3, W4, 0  'using no spacing so we put a lot of lines
x = CDbl(XX)
y = y * 0.9
Wend


End If
Else
If sx * W4 > scr.Height Then
y = scr.Height
While sx * W4 > scr.Height

XX = y / (dv20 * sx)

nForm basestack, XX, W3, W4, 0  'using no spacing so we put a lot of lines
x = CDbl(XX)
y = y * 0.9
Wend


End If

End If
If scr.name = "DIS" Then
If Not adjustlinespace Then If scr.Height >= Form1.Height - dv15 Then mAddTwipsTop = dv15 * (((scr.Height - sx * W4) / sx / 2) \ dv15)
End If
nForm basestack, (x), W3, W4, mAddTwipsTop
SZ = CSng(x)
'If mmx < scr.Width Then
mmx = scr.Width


'If mmx < scr.Width Then
mmy = scr.Height
If adjustlinespace Then
If scr.name = "DIS" Then
mAddTwipsTop = dv15 * (((Form1.Height - sx * W4) / sx / 2) \ dv15)
Else
mAddTwipsTop = dv15 * (((scr.Height - sx * W4) / sx / 2) \ dv15)
End If
sx = CLng(sx * (W4 + mAddTwipsTop * 2))
Else
sx = CLng(sx * W4)
End If
players(basketcode).MineLineSpace = mAddTwipsTop
players(basketcode).uMineLineSpace = mAddTwipsTop
FrameText scr, SZ, CLng(W3 * p), CLng(sx), players(basketcode).Paper, Not (scr.name = "DIS")


End If


ElseIf FastSymbol(rest$, ";") And scr.name = "DIS" Then
Form1.Move 0, 0, ScrX(), ScrY()
Form1.BackColor = players(-1).Paper
Form1.Cls


''x = interpret(basestack, "MOTION CENTER")
''x = interpret(basestack, "MODE" & Str$(players(GetCode(scr)).SZ) & "," & Str$(scr.Width) & "," & Str$(scr.Height))
MyMode scr
ElseIf scr.name = "DIS" Then
Form1.Move Form1.Left + scr.Left, Form1.top + scr.top, scr.Width, scr.Height
scr.Move 0, 0
Form1.Cls
Exit Function
Else
'' CROP LAYER
If basketcode > 0 Then
With players(basketcode)
.MAXXGRAPH = .mx * .Xt
.MAXYGRAPH = .My * .Yt
End With
With Form1.dSprite(basestack.tolayer)
.Move .Left, .top, players(basketcode).MAXXGRAPH, players(basketcode).MAXYGRAPH
End With

End If
End If

players(basketcode).MineLineSpace = mAddTwipsTop
players(basketcode).uMineLineSpace = mAddTwipsTop
MakeForm = True
.curpos = 0
.currow = 0

End With
End If

Exit Function

End Function
Function ProcAbout(basestack As basetask, rest$, Lang As Long) As Boolean

Dim par As Long, s$, SS$, x As Double, y As Double, i As Long
Dim KK As New Document
Dim UAddPixelsTop As Long  ' just not used

If FastSymbol(rest$, "!") Then
'*******
vH_title$ = ""
par = True
par = par And IsStrExp(basestack, rest$, s$)

If par Then
If s$ = "" Then
abt = False
sHelp "", "", 0, 0
Else
par = par And FastSymbol(rest$, ",")
par = par And IsExp(basestack, rest$, x)
par = par And FastSymbol(rest$, ",")
par = par And IsExp(basestack, rest$, y)
par = par And FastSymbol(rest$, ",")
par = par And IsStrExp(basestack, rest$, SS$)

If par Then
abt = True
KK.EmptyDoc
KK.textDoc = s$
s$ = KK.textFormat(vbCrLf)
KK.EmptyDoc
KK.textDoc = s$
s$ = KK.TextParagraph(1)
KK.EmptyDoc
KK.textDoc = SS$
sHelp s$, KK.textFormat(vbCrLf), CLng(x), CLng(y)
End If
End If
End If
'*******
ElseIf IsLabelSymbolNew(rest$, "������", "CALL", Lang) Then

If IsStrExp(basestack, rest$, SS$) Then
KK.textDoc = SS$
FeedbackExec$ = KK.textFormat(vbCrLf)
Else

End If
Else
If IsStrExp(basestack, rest$, s$) Then
KK.EmptyDoc
KK.textDoc = s$
s$ = KK.textFormat(vbCrLf)
KK.EmptyDoc
KK.textDoc = s$
s$ = KK.TextParagraph(1)
        i = 0
        x = (ScrX() - 1) * 2 / 5
        y = (ScrY() - 1) / 7
        If FastSymbol(rest$, ",") Then
                par = True
                    If Not IsExp(basestack, rest$, x) Then
                    x = (ScrX() - 1) * 2 / 5: par = False
                    Else
                    i = 1
                    End If
                    If FastSymbol(rest$, ",") Then
                        par = True
                        If Not IsExp(basestack, rest$, y) Then
                        y = (ScrY() - 1) / 7: par = False
                        Else
                        i = 2
                        End If
                    End If
        End If
 
        If Not Form4.Visible Then
           vH_x = CLng(x * Helplastfactor)
           vH_y = CLng(y * Helplastfactor)
           
                Form4.Show , Form1
                
                MyForm Form4, ScrX() - CLng(x * Helplastfactor), ScrY() - CLng(y * Helplastfactor), CLng(x * Helplastfactor), CLng(y * Helplastfactor), True, 1  'Helplastfactor
                HelpLastWidth = x
        ElseIf i <> 0 Then
                Form4.Show , Form1
                
                MyForm Form4, Form4.Left, Form4.top, CLng(x * Helplastfactor), CLng(y * Helplastfactor), True, Helplastfactor
        End If
       
        Form4.Line (0, 0)-(Form4.ScaleWidth - dv15, Form4.ScaleHeight - dv15), Form4.BackColor, BF
        Form4.MoveMe
        If FastSymbol(rest$, ",") Or Not par Then
        If IsStrExp(basestack, rest$, SS$) Then
        KK.EmptyDoc
        KK.textDoc = SS$
        Form4.Label1.Text = KK.textFormat(vbCrLf)
        End If
        End If
        
With Form4.Label1

.EditDoc = False
.NoMark = True
.Enabled = True
.NewTitle s$, 4 + UAddPixelsTop
.glistN.DragEnabled = False
.glistN.WordCharLeft = "["
.glistN.WordCharRight = "]"
.glistN.WordCharRightButIncluded = ""
End With
Else
vH_title$ = ""
If Form4.Visible Then
Form4.Visible = False
    If Form1.TEXT1.Visible Then
        Form1.TEXT1.SetFocus
    Else
        Form1.SetFocus
    End If
End If

End If
End If
Exit Function
End Function
Sub procthreads(scr As Object, bstack As basetask, rest$, Lang As Long)

If TaskMaster.QueueCount >= 0 Then

If IsLabelSymbolNew(rest$, "�����", "ERASE", Lang) Then TaskMaster.Dispose: Exit Sub
If Lang = 0 Then
        PlainBaSket scr, players(GetCode(scr)), "NHMATA �� �����������:" & CStr(TaskMaster.QueueCount)
        Else
        PlainBaSket scr, players(GetCode(scr)), "THREADS PROCESSING:" & CStr(TaskMaster.QueueCount)
        End If
        If bstack.ThreadsStr(Lang) <> "" Then
        crNew bstack, players(GetCode(scr))
        PlainBaSket scr, players(GetCode(scr)), bstack.ThreadsStr(Lang)
        End If
Else
        If Lang = 0 Then
        PlainBaSket scr, players(GetCode(scr)), "������ �� �����������"
        Else
        PlainBaSket scr, players(GetCode(scr)), "NOTHING PROCESSING"
        End If
End If
crNew bstack, players(GetCode(scr))
' was mydoevents 2
MyDoEvents1 scr
End Sub
Function ProcEdit(basestack As basetask, rest$, Lang As Long) As Boolean
Dim s$, x1 As Long, y1 As Long, o As Long, frm$, i As Long, par As Long, p As Double
Dim scr As Object
ProcEdit = True
Set scr = basestack.Owner
Form1.EditTextWord = False ' edit code

s$ = aheadstatus(rest$, False, y1)
If y1 > 2 And Left$(s$, 1) = "S" Then
If Mid$(rest$, y1 - 1, 1) = "(" Or Mid$(rest$, y1 - 2, 2) = "()" Then s$ = "ok"

End If
''If s$ = "" Then Exit Function
If Left$(s$, 1) = "S" Then
    
    If IsStrExp(basestack, rest$, s$) Then
        If s$ <> "" Then
            If ExtractPath(s$) = "" Then
                If CFname(s$) <> "" Then
                    s$ = CFname(s$)
                ElseIf mylcasefILE(s$) = ExtractName(s$) Then
                    s$ = mcd + s$
                End If
                If ExtractType(s$) = "" Then
                    MyEr "missing file type (.gsb or .txt or .gm2)", "��� ������� ����� ������� (.gsb � .txt � .gm2)"
                    Exit Function
                End If
            End If
            s$ = ExtractPath(s$) + ExtractName(s$)
            ' check if path exist
            ' uSE THE MYDIR.ISDIR
            If Dir$(ExtractPath(s$), vbDirectory) = vbNullString Then
            ' error
                MyEr "wrong path to save", "����� ����� ��� ������"
                
                Exit Function
            ElseIf ExtractName(s$) = "" Then
                MyEr "missing file name", "������ �� ����� �������"
                
                Exit Function
            End If
          
            If CFname(s$) <> "" Then
            s$ = CFname(s$)
             frm$ = ReadUnicodeOrANSI(s$, True, x1)
             ' CHECK TO SEE IF THIS IS A PASSWORD PROTECTED PROGRAMM
             For i = 1 To Len(frm$)
             If AscW(Mid$(frm$, i, 1)) < 128 Then
             Exit For
             End If
             Next i
             If i > Len(frm$) Then
             If Lang = 1 Then
             MsgBoxN "not text found", 0
             Else
             MsgBoxN "��� ����� �������", 0
             End If
             Exit Function
             End If
            par = Len(frm$) = FileLen(GetDosPath(s$)) ' not unicode
     
            Else
            frm$ = ""
            par = False
            End If
            Form1.EditTextWord = LCase(ExtractType(s$)) <> "gsb"
                Form1.TEXT1.title = ExtractName(s$) + " "
            If x1 = 0 Then x1 = -1
            Form1.ResetMarks
            If o < 1 Then o = 0
            If o > Len(frm$) Then o = Len(frm$) + 1
            With players(GetCode(basestack.Owner))
            ScreenEdit basestack, frm$, 0, .mysplit, .mx - 1, .My - 1, o, x1
            End With
            Form1.ResetMarks
            If frm$ <> "" And x1 >= 0 Then
            If par Then
                            i = FreeFile
                                            If Not WeCanWrite(s$) Then Exit Function
                            On Error Resume Next
                            
                            Open GetDosPath(s$) For Output As i
                                            If Err.Number > 0 Then
                                Err.clear
                                 MyEr "Bad filename", "����� ��� ����� �������"
                                
                                Exit Function
                                End If
                            Print #i, frm$;
                            Close i
                Else
                par = SaveUnicode(s$, frm$, x1)
                End If
            End If
        End If
       
        Exit Function
    Else
    Exit Function
    End If
End If

    If s$ <> "" Then
x1 = Abs(IsLabel(basestack, rest$, s$))
        If x1 > 0 Then
        If x1 > 3 Then
            s$ = ReplaceStr("(", "", s$)
            If FastSymbol(rest$, ")") Then
            End If
            s$ = s$ & "()"
            End If
        Else
        Exit Function
        End If
        MakeThisSub basestack, s$  'NO GOOD..
        If GetSub(s$, x1) Then
            ' ����������� ������ �� ��������� ��� ������ ����� ������ ��� ������� �� TRY �� �����
            ' �� ������� ��� ���������� ��� ������ ����� �� ����������� ����� ������!
            If x1 >= lckfrm And lckfrm <> 0 Then
            MyEr s$ & " is locked", s$ & " ����� ����������"
            rest$ = ""
            Exit Function
            End If
            If IsLabelSymbolNew(rest$, "��", "AS", Lang) Then
            y1 = Abs(IsLabel(basestack, rest$, frm$))
              If y1 <> 0 Then
           '' frm$ = myUcase(frm$)
             GetSub frm$, x1
            If x1 = 0 Then
            If y1 > 3 Then frm$ = frm$ + ")"
             GetSubRename s$, y1, frm$
            End If
            End If
            Exit Function
            ElseIf FastSymbol(rest$, ",") Then
            i = 1
                If IsExp(basestack, rest$, p) Then
                    i = Int(p)
                    If i < 0 Then i = Len(SB(x1)) + i
                    If i < 0 Then i = 0
                    If i > Len(SB(x1)) Then i = Len(SB(x1)) + 1
                End If
                SBC(x1) = i
            End If
            If SBC(x1) = 0 Then SBC(x1) = -1
        MakeMyTitle s$, Lang

        With players(GetCode(basestack.Owner))
            ScreenEdit basestack, SB(x1), 0, .mysplit, .mx - 1, .My - 1, SBC(x1)
            End With
            FK$(13) = "@EDIT " & s$ & "," & CStr(i)
        Else
            i = -1
          
           MakeMyTitle s$, Lang
           With players(GetCode(basestack.Owner))
            ScreenEdit basestack, frm$, 0, .mysplit, .mx - 1, .My - 1, i
            End With
            If frm$ <> "" Then
            MakeThisSub basestack, s$
               x1 = GlobalSub(s$, frm$)
                If x1 <> 0 Then SBC(x1) = i
                FK$(13) = "@EDIT " & s$ & "," & CStr(i)
                Else
                FK$(13) = "@EDIT " & s$
            End If
        End If
    ElseIf Not basestack.IamChild Then
        frm$ = Mid$(ReplaceStr(vbCr, vbCrLf, QUERYLIST), 3)
        Form1.ShadowMarks = True
        If UserCodePage = 1253 Then
        Form1.TEXT1.title = "����� ������� "
        Else
        Form1.TEXT1.title = "Command List "
        End If
        With players(GetCode(basestack.Owner))
        ScreenEdit basestack, frm$, 0, .mysplit, .mx - 1, .My - 1
        End With
        Form1.ShadowMarks = False
        QUERYLIST = vbCr + ReplaceStr(vbCrLf, vbCr, frm$)
    End If

End Function
Function ProcModuleEntry(basestack As basetask, ohere$, x1 As Long, rest$) As Boolean
On Error GoTo there22
  If LastErNum = -1 Then GoTo there22
Dim frm$, bs As basetask, i As Long, pa$, p As Double, loopthis As Boolean
Dim subs As Long, snames As Long
Dim subspoint As Boolean
LastErName = "": LastErNameGR = ""

''subs = sb2used: snames = Len(SubName$)

i = 1

' ******************************************* module entry..............

        Set bs = New basetask
       With bs
        .reflimit = Len(VarName$)
        Set .Parent = basestack
        Set .Sorosref = basestack.soros   'same stack
        Set .Owner = .Parent.Owner
        .OriginalName$ = ohere$
        .vars = var2used: .VName = Len(VarName$)
        subs = sb2used: snames = Len(SubName$)
        .arrs = neoArray.Count: .anames = Len(arrname$)
        .UseGroupname = sbgroup(x1)
        .OriginalCode = x1
        End With
        i = preProcessor(bs, SB(x1))

 Do
  frm$ = Mid$(SB(x1), i)
againmod:
       If LastErNum = -1 Then GoTo myerror1
        Select Case Execute(bs, frm$, False, False, loopthis)

        Case 0
        
myerror1:
                    If sb2used <> 0 And Not NERR Then
        If bs.UseGroupname <> "" Then
If InStr(bs.UseGroupname, ChrW(&H1FFF)) > 0 Then

pa$ = GetNextLine((SB(bs.OriginalCode)))
FK$(13) = Mid$(pa$, 7) + "-" + CStr(Len(frm$))

MyErMacro rest$, "Problem in class", "�������� ��� �����"
ProcModuleEntry = True
GoTo thh1
End If

        End If
                     
                    pa$ = "EDIT " & StripRVAL(HERE$) & ", " + CStr(Len(SB(x1)))
                    If ohere$ <> "" Then
                    
                    If Left$(SB(x1), 10) = "'11001EDIT" Then
                    
                    pa$ = Mid$(GetNextLine(SB(x1)), 7)
                    SB(x1) = Mid$(SB(x1), 3)
                    
                    MyEr "in module " & ohere$ & "." & HERE$, "��� ����� " & ohere$ & "." & HERE$
                    Else
                    
                    End If
                    Else
                    MyEr "in module " & HERE$, "��� ����� " & HERE$
                    
                    End If
                    If InStr(FK$(13), ",") > 0 Then
                    If Left$(pa$, InStr(pa$, ",")) <> Left$(FK$(13), InStr(FK$(13), ",")) Then
                    GoTo thh
                    End If
               
GoTo thh

                    End If
                    If (Len(SB(x1)) - Len(frm$)) < 0 Then
                    FK$(13) = pa$
                    Else
                    DropLeft ",", FK$(13)
                    If FK$(13) <> "" Then FK$(13) = "+" & FK$(13)
                    If sbgroup(x1) <> "" Then
                    FK$(13) = pa$ & "-" & CStr(Len(frm$) - 2) + FK$(13)
                    Else
                    FK$(13) = pa$ & "-" & CStr(Len(frm$)) + FK$(13)
                    End If
                    End If
                    
                    Else
                    If sb2used > 0 Then
                    MyEr "in module " & HERE$, "��� ����� " & HERE$
                    Else
                    MyEr "", ""
                    End If
                    End If
                    
                    GoTo thh
            
        Case 1, 3

thh:
    If LastErNum <> 0 Then
                   rest$ = ""
                    End If
thh1:
                    On Error Resume Next
                    With bs
                    .ThrowThreads
                    
                    
                        For i = var2used - 1 To .vars + 1 Step -1
                        If IsObject(var(i)) Then Set var(i) = Nothing
                        var(i) = Empty
                        Next i
                    var2used = .vars
                    If UBound(var()) / 3 >= var2used And UBound(var()) > 99 Then
                        ReDim Preserve var(UBound(var()) / 2) As Variant
                    End If
                    
                        
                    
                    VarName$ = Left$(VarName$, .VName)
                    
                    
                        Do While .arrs < neoArray.Count
                        neoArray.remove neoArray.Count
                        Loop
                        
                    arrname$ = Left$(arrname$, .anames)
                    sb2used = subs
                        If UBound(SB()) / 3 > sb2used And UBound(SB()) > 99 Then
                                ReDim Preserve SB(UBound(SB()) / 2 + 1) As String
                                ReDim Preserve SBC(UBound(SBC()) / 2 + 1) As Long
                                ReDim Preserve sbgroup(UBound(sbgroup()) / 2 + 1) As String
                        End If
                        For i = subs + 1 To UBound(SB()) - 1
                        SB(i) = ""
                        SBC(i) = 0
                        sbgroup(i) = ""
                        Next i
                    End With
                    SubName$ = Right$(SubName$, snames)
                    Set bs = Nothing
                    HERE$ = ohere$
                    
               
                    Exit Do
        Case 2
                    i = 1
                    If frm$ <> "" Then
                            If frm$ = "BREAK" Then
                              Exit Do
                             ElseIf frm$ = Chr$(0) Then
                             
                                     If bs.IsInRetStackNumber(p) Then
                                     If p < -1 Then
                                     bs.IsInRetStackNumber p
                                     subspoint = True
                                     i = Len(SB(basestack.OriginalCode)) - CLng(p) + 1

                                     ElseIf p < 0 Then
                                     subspoint = False
                                     bs.IsInRetStackNumber p
                                     i = Len(SB(x1)) - CLng(p) + 1
                                     Else
                           '' I = Len(SB(x1)) - CLng(p) + 1
                           
                                     End If
                                   PopStage bs
                    
                                       
                             ElseIf bs.IsInRetStackString(frm$) Then
                                      If InStr(frm$, " ") > 0 Then
                                   If subspoint Then bs.RetStack.PushVal -2 Else bs.RetStack.PushVal -1
                                                 If searchsub(SB(x1), frm$, i) Then
                                     
                                         subspoint = False
                                                              If frm$ <> "" Then
                                                                     frm$ = "Read NEW " + frm$ + vbCrLf + Mid$(SB(x1), i)
                                                             Else
                                                                     frm$ = Mid$(SB(x1), i)
                                                             End If
                                                           
                                                             GoTo againmod
                                                 ElseIf x1 <> basestack.OriginalCode And basestack.OriginalCode <> 0 Then
                                                 If searchsub(SB(basestack.OriginalCode), frm$, i) Then
                                         
                                         subspoint = True
                                                 
                                                 If frm$ <> "" Then
                                                                     frm$ = "Read NEW " + frm$ + vbCrLf + Mid$(SB(basestack.OriginalCode), i)
                                                             Else
                                                                     frm$ = Mid$(SB(basestack.OriginalCode), i)
                                                             End If
                                                              GoTo againmod
                                                             Else
                                                             bs.RetStack.DROP 7
                                                             Exit Do
                                                 End If
                                                 Else
                                                            bs.RetStack.DROP 7
                                                             Exit Do
                                                 End If
                                         
                                         End If

                                    End If

                             Else
                                        '' i = PosLabel(frm$, SB(x1))
                                         If InStr(frm$, vbCr) > 0 Then
                                         i = rinstr(SB(x1), frm$)
                                         If i = 0 Then i = Len(SB(x1)) + 1
                                          Else
                                          i = PosLabel(frm$, SB(x1))
                                         End If
                            End If
                    Else
                    
If Not loopthis Then Exit Do
loopthis = False
                   End If
        End Select
Loop
ProcModuleEntry = True
there22:

End Function
Function PushParamGeneralV7(basestack As basetask, rest$) As Boolean
PushParamGeneralV7 = True
Dim ps As mStiva, p As Double, s$
Dim ParentStack As basetask
Set ParentStack = basestack.Parent
    Set ps = New mStiva
                Do
                    If IsExp(ParentStack, rest$, p) Then
        If Not ParentStack.LastObj Is Nothing Then
           ps.DataObj ParentStack.LastObj
       Set ParentStack.LastObj = Nothing
        Else
            ps.DataVal p
         End If
    ElseIf Not LastErNum <> 0 Then
    If IsStrExp(ParentStack, rest$, s$) Then
       If Not ParentStack.LastObj Is Nothing Then
           ps.DataObj ParentStack.LastObj
           Set ParentStack.LastObj = Nothing
        Else
        ps.DataStr s$
        End If
    End If
    Else
  If LastErNum <> 0 Then
     PushParamGeneralV7 = False
  Exit Do
    End If
    End If
      If LastErNum <> -2 And LastErNum <> 0 Then
      MyEr "Error in input list", "�������� ���� �����������"
      PushParamGeneralV7 = False
      End If
    If Not FastSymbol(rest$, ",") Then Exit Do
                Loop
             Set ParentStack = Nothing
            basestack.soros.MergeTop ps
End Function
Function PushParamGeneral(basestack As basetask, rest$) As Boolean
PushParamGeneral = True
Dim ps As mStiva, p As Double, s$
    Set ps = New mStiva
                Do
                    If IsExp(basestack, rest$, p) Then
        If Not basestack.LastObj Is Nothing Then
           ps.DataObj basestack.LastObj
       Set basestack.LastObj = Nothing
        Else
            ps.DataVal p
         End If
    ElseIf Not LastErNum <> 0 Then
    If IsStrExp(basestack, rest$, s$) Then
       If Not basestack.LastObj Is Nothing Then
           ps.DataObj basestack.LastObj
           Set basestack.LastObj = Nothing
        Else
        ps.DataStr s$
        End If
    End If
    Else
  If LastErNum <> 0 Then
     PushParamGeneral = False
  Exit Do
    End If
    End If
      If LastErNum <> -2 And LastErNum <> 0 Then
      MyEr "Error in input list", "�������� ���� �����������"
      PushParamGeneral = False
      End If
    If Not FastSymbol(rest$, ",") Then Exit Do
                Loop
             
            basestack.soros.MergeTop ps
End Function
Sub PushParamGeneraOLD(basestack As basetask, rest$)
Dim ps As mStiva, p As Double, s$
    Set ps = New mStiva
                Do
                    If IsExp(basestack, rest$, p) Then
                            If Not basestack.LastObj Is Nothing Then
                                    ps.DataObj basestack.LastObj
                            Else
                                    ps.DataVal p
                            End If
                    ElseIf IsStrExp(basestack, rest$, s$) Then
                            If Not basestack.LastObj Is Nothing Then
                                    ps.DataObj basestack.LastObj
                            Else
                                    ps.DataStr s$
                            End If

                    Else
                    
                            Exit Do
                    End If
                    If Not FastSymbol(rest$, ",") Then Exit Do
                Loop
             
            basestack.soros.MergeTop ps
End Sub

Function searchsub(A$, w$, final As Long) As Boolean
Dim acopy As Document, there As Long, Curs As Long, Curs2 As Long
Dim a1 As Long, b As Long, c As Long, D As Long
Dim ww$(), Len1 As Long, there1 As Long
Dim SS$, DUMP$
ww$() = Split(w$)
paliedo:
Len1 = Len(ww$(0))
If Len1 = 1 Then
If ww$(0) = "S" Then
Set acopy = New Document
With acopy
.textDocFast = A$
.LCID = 1032
ww$(1) = ww$(1) + ":"
Do While .FindIdentifier(ww$(1), False, there, Curs)
If Trim$(Left$(.TextParagraph(there), Curs - 1)) = "" Then
' we find it
                               final = -1
                               .FindPos .FirstParagraphLine(there) + 2, 1, final, a1, b, c, D
                               final = final + 1 ' because mid$ starts from 1
                               w$ = ""
                                searchsub = True
                                Exit Function
End If

Loop
End With
Else
final = PosLabel(ww$(1), A$)
If final <> 1 Then
w$ = ""
searchsub = True
End If
End If
Exit Function
End If
Set acopy = New Document

With acopy
.textDocFast = A$
.LCID = 1032
there = 0
Curs = 0
Do
If .FindIdentifier(ww$(0), False, there, Curs) Then

SS$ = Left$(acopy.TextParagraph(there), Curs - 1)

IsNumberLabel SS$, DUMP$
                        If Trim$(SS$) = "" Then
                        Curs2 = Curs
                        there1 = there
                        If .FindIdentifier(ww$(1), True, there1, Curs2) Then
                        
                                    If there1 <> there Then
                                           Curs = 0
                                    Else
                                                final = -1  ' this is the mode for search charpos ...in findpos
                                                ' FROM 1,0, BUT  PARAGRAPH LINES ARE FROM 0
                                                ' SO PLUS ONE PLU ONE MORE FOR NEXT LINE
                                                '
                                                .FindPos .FirstParagraphLine(there1) + 2, 1, final, a1, b, c, D
                                                       final = final + 1 ' because mid$ starts from 1
                                                       
                                                       
                                                        w$ = BlockParam(Trim(Mid$(.TextParagraph(there), Curs2 + Len(ww(1)))))
                                                        If w$ <> "" Then
                                                   '' If Right$(w$, 1) = ")" Then w$ = Left$(w$, Len(w$) - 1)
                                                        End If
                                                        searchsub = True
                                                        
                                                       
                                                        Exit Do
                                    End If
                        End If
            End If
            Else
            If ww$(0) = "�������" Then
            ww$(0) = "���Ժ��"
            GoTo paliedo
            End If
            Exit Do
        End If
   Loop
End With


End Function
Function search2KIND(A$, w$, final As Long, Optional Anypos As Boolean = False) As Boolean
Dim acopy As Document, there As Long, Curs As Long, Curs2 As Long
Dim a1 As Long, b As Long, c As Long, D As Long
Dim ww$(), there1 As Long
Dim SS$, DUMP$
ww$() = Split(w$)

Set acopy = New Document

With acopy
.textDocFast = A$
there = 0
Curs = 0
Do
If .FindIdentifier(ww$(0), True, there, Curs) Then

SS$ = Left$(acopy.TextParagraph(there), Curs - 1)

IsNumberLabel SS$, DUMP$
If Anypos Then
If Right$(Trim$(SS$), 1) = ":" Then SS$ = ""
End If
                        If Trim$(SS$) = "" Then
                        Curs2 = Curs + Len(ww$(0))
                        there1 = there
                        If .FindWord(ww$(1), True, there1, Curs2) Then
                        
                                    If there1 <> there Then
                                           Curs = 0
                                    Else
                                                final = -1  '
                                                If Not Anypos Then Curs2 = 1 Else Curs2 = Curs2 + 1
                                                .FindPos .FirstParagraphLine(there1) + 1, Curs2, final, a1, b, c, D

                                                       search2KIND = True
                                                        Exit Do
                                    End If
                        End If
            End If
            Else
            Exit Do
        End If
   Loop
End With


End Function

Function executeblock(exec As Long, bstack As basetask, b$, Once As Boolean, kolpo As Boolean, Optional stepbystep As Boolean = False) As Boolean

executeblock = True
bstack.LastComm = ""
Dim i As Long, ec$, ec1$, LL As Long, oldLL As Long, bb$, p As Double, x2 As Long, y2 As Long, monce As Long, W3 As Long, removebracket As Boolean
Dim myLevel As Long, oldexec As Long, loopthis As Boolean, subspoint As Boolean, RetStackSize As Long
RetStackSize = bstack.RetStack.Total
If exec = 0 Then exec = 1
oldexec = exec
myLevel = bstack.SubLevel
i = 1
monce = Once
If FastSymbol(b$, "}") Then
''MyDoEvents
executeblock = False
exec = Abs(NOEXECUTION = False) * oldexec: Exit Function
ElseIf IsSymbol(b$, "{") Then
stepbystep = False
ec1$ = b$
ec$ = block(ec1$)
removebracket = True
Else
ec1$ = b$
ec$ = block(ec1$)
If ec$ = "" Then ec$ = b$
End If
oldLL = bstack.addlen
If Len(ec1$) > 0 And Len(b$) <> Len(ec1$) Then

LL = Len(ec1$) + oldLL
Else
LL = oldLL
End If
ec1$ = ""
        Do
                bb$ = Mid$(ec$, i)
fromfirst0:
        
                kolpo = Once: Once = False
                bstack.addlen = LL
             
                W3 = Execute(bstack, bb$, kolpo, stepbystep, loopthis)
                bstack.addlen = oldLL
                Select Case W3
                Case 0

                        If myLevel <> bstack.SubLevel Then
                                b$ = bb$
                                exec = 0
                                bstack.RetStack.DROP 9 * (bstack.SubLevel - myLevel)  ' NOW LEVEL HAS 7+2 ITEMS
                                Exit Function
                        End If
                        If bb$ = "" Then
                                b$ = ""
                        Else
                                If InStr(bb$, " : ERROR -2") <= 3 Then
                                        b$ = bb$
                                Else
                                        b$ = Mid$(b$, Len(ec$) - Len(bb$) + 1)
                                End If
                        End If
                        exec = 0
                        Exit Function
                Case 1
ALFA12:
                        If LastErNum = -2 Then
                                If bb$ = "" Then
                                        b$ = ""
                                Else
                                        If Left$(bb$, 12) = " : ERROR -2" Then
                                                b$ = bb$
                                        Else
                                                b$ = Mid$(b$, Len(ec$) - Len(bb$) + 1)
                                        End If
                                End If
                                exec = 0
                                Exit Function
                        End If
                        exec = oldexec ''1
                        If kolpo And monce And exec = 1 Then
                                b$ = bb$
                                Once = True
                                Exit Function
                        ElseIf kolpo And bb$ = "" Then
                                ' exit
                                exec = W3
                                Exit Do
                        End If
                        If removebracket Then
                                b$ = Right$(b$, Len(b$) - Len(ec$))
                                If IsSymbol(b$, "}") Then exec = oldexec: Exit Do
                                If Once Then Exit Do
                        ElseIf bb$ = "" And kolpo Then
                                b$ = ""
                        Else
                                If stepbystep Then
                                        b$ = bb$
                                Else
                                        b$ = Right$(b$, Len(b$) - Len(ec$))
                                End If
                        End If
                        Exit Do
                Case 2
                        If bb$ = "BREAK" Then
                                exec = 2
                                b$ = ""
                                Once = True
                                kolpo = True
                                Exit Function
                        End If
                        If Not kolpo Then
                                If bb$ <> "" Then
                                        If bb$ = Chr$(0) Then
                                        If RetStackSize = bstack.RetStack.Total And bstack.RetStack.LookTopVal < 0 Then
                                        ' this is a return form other block
                                         exec = 2
                                        b$ = bb$
                                        Exit Function
                                        End If
                                                i = 1
from123:

                                                If bstack.IsInRetStackNumber(p) Then
                                                        If LastErNum = -1 Then
                                                                bstack.RetStack.PushVal p
                                                                exec = 0
                                                                Exit Function
                                                        End If
           
                                                        subspoint = False
                                                        bstack.IsInRetStackNumber p
                                                        exec = 1
                                                        i = Len(ec$) - CLng(p) + 1
                                                        PopStage bstack
                                                        If loopthis Then
                                                                bb$ = Mid$(ec$, i)
                                                                GoTo fromfirst0
                                                        Else
                                                                bb$ = Mid$(ec$, CLng(p) + 1)
                                                        End If
                                                        If bb$ = vbCrLf Then Exit Do
                                                ElseIf bstack.IsInRetStackString(bb$) Then
findelsesub0:

                                                        If InStr(bb$, " ") > 0 Then
                                                                If subspoint Then bstack.RetStack.PushVal -2 Else bstack.RetStack.PushVal -1
                                   
                                                                If searchsub(SB(bstack.OriginalCode), bb$, i) Then
                                                                
                                                                        subspoint = False
                                                                        If bb$ <> "" Then
                                                                                bb$ = "Read NEW " + bb$ + vbCrLf + Mid$(SB(bstack.OriginalCode), i)
                                                                        Else
                                                                                bb$ = Mid$(SB(bstack.OriginalCode), i)
                                                                        End If
                                                          
                                                                        kolpo = False
                                                                        GoTo contsub
                                                                ElseIf bstack.IamChild Then
                                                                        If searchsub(SB(bstack.Parent.OriginalCode), bb$, i) Then
                                                                                subspoint = True
                                                                                If bb$ <> "" Then
                                                                                        bb$ = "Read NEW " + bb$ + vbCrLf + Mid$(SB(bstack.Parent.OriginalCode), i)
                                                                                Else
                                                                                        bb$ = Mid$(SB(bstack.Parent.OriginalCode), i)
                                                                                End If
                                                                                kolpo = False
                                                                                  
contsub:
y2 = y2 + 1
subsub02:
                                                                        exec = 0
                                                                                    x2 = Execute(bstack, bb$, kolpo)
                                                                                    If x2 = 2 Then
                                                                                            If bb$ = Chr$(0) Then

                                                                                       
                                                                                                    If bstack.IsInRetStackString(bb$) Then GoTo findelsesub0
                                                                           
                                                                                                    y2 = y2 - 1
                                                                                                    If y2 = 0 Then GoTo from123  'normal level
                                                                                                    If bstack.IsInRetStackNumber(p) Then
                                                                                              
                                                                                                            If p < -1 Then
                                                                                                                    subspoint = True
                                                                                                                    bstack.IsInRetStackNumber p
                                                                                                    
                                                                                                                    bb$ = Mid$(SB(bstack.Parent.OriginalCode), Len(SB(bstack.Parent.OriginalCode)) - CLng(p) + 1)
                                                                                                            ElseIf p < 0 Then
                                                                                                                    subspoint = False
                                                                                                                    bstack.IsInRetStackNumber p
                                                                                                  
                                                                                                                    bb$ = Mid$(SB(bstack.OriginalCode), Len(SB(bstack.OriginalCode)) - CLng(p) + 1)
                                                                                                            End If
                                                                                                             PopStage bstack
                                                                                                            exec = 1
                                                                                                            GoTo subsub02
                                                                                                    Else
                                                                                                            Exit Do
                                                                                                    End If
                                                                                            ElseIf InStr(bb$, " ") > 0 Then
                                                                                                    GoTo findelsesub0
                                                                                            Else   ' jump ??
                                                                                        
                                                                                                i = PosLabel(bb$, SB(bstack.OriginalCode))
                                                                                                
                                                                                            If i <> 0 And i < Len(SB(bstack.OriginalCode)) Then
                                                                                                    bb$ = Mid$(SB(bstack.OriginalCode), i)
                                                                                                    
                                                                                                    GoTo subsub02
                                                                                            End If
                                                                                                   Exit Do
                                                                                            End If
                                                                                    ElseIf x2 = 1 Then
                                                                                            If LastErNum <> -2 Then
                                                                                                    bstack.RetStack.DROP 9 * bstack.SubLevel - myLevel
                                                                                                    b$ = ec$
                                                                                                    exec = oldexec
                                                                                                    Exit Function
                                                                                                    
                                                                                            End If
                                                                                            ' NO RETURN...DROP STACK
                                                                                            bstack.RetStack.DROP 2
                                                                                            Exit Do
                                                                                    ElseIf x2 = 0 Then
                                                                                            b$ = bb$
                                                                                            exec = 0
                                                                                            Exit Function
                                                                                    End If
                                                                            Else
                                                                                    bstack.RetStack.DROP 7
                                                                                    Exit Do
                                                                            End If
                                                                    Else
                                                                            bstack.RetStack.DROP 7
                                                                            Exit Do
                                                                    End If
                                                         End If
                                                        ' ????????
                                                End If
                                        ElseIf MaybeIsSymbol(bb$, "}") Or bb$ = "" Then
                                                i = 1
                                                bb$ = ec$
                                        Else
                                                i = PosLabel(bb$, ec$)
                                                If i = 0 Or i > Len(ec$) Then
                                                        b$ = bb$
                                                        exec = 2
                                                        Exit Do
                                                Else
                                                        bb$ = Mid$(ec$, i)
                                                        GoTo fromfirst0
                                                End If
                                        End If
                                Else
                                loopthis = False
                                        i = 1
                                End If
                        Else
                               Once = kolpo
                               exec = 2: b$ = bb$: Exit Function
                        End If
                Case Else
                        If W3 = 3 And bb$ = "CONTINUE" Then
                                If removebracket Then
                                        ec$ = block(b$)
                                Else
                                b$ = Mid$(b$, Len(ec$) + 1)
                                   
                                End If
                              
                                exec = 3: Exit Do
                       ElseIf W3 = 3 And bb$ = "" Then
                       bb$ = Mid$(b$, Len(ec$) + 1)
                       W3 = 1
                       GoTo ALFA12   ' FROM REVISION 121
                        End If
                        If IsSymbol(b$, "}") Then
                                exec = 1: Exit Do
                                If Once Then Exit Do
                        Else
                                b$ = Right$(b$, Len(b$) - Len(bb$))
                        End If
                        Exit Do
                End Select

                If myexit(bstack) Then exec = oldexec: Exit Do

                If monce Then Exit Do
        Loop
executeblock = False
End Function
Function StockValues(bstack As basetask, b$, Lang As Long) As Boolean
' Stock  A[$|%| ]() in  A,B$,C(3)   copy values to stock array...and

' Stock  A[$|%| ]() out  A,B$,C(3),...  copy values to variables and make empty space in stock

' Stock A[$|%| ]()  keep  N,  B[$|%| ]()
' Stock A[$|%| ]()  sweep  N [,  value ]   fill a copy of value to n items or empty slots
Dim w$, pppp As mArray, V As Long, VN As Long, i As Long, what$, pppp1 As mArray, V1 As Long
Dim bs As New basetask, p As Double, P1 As Double, soros As mStiva
If Abs(IsLabel(bstack, b$, what$)) > 4 Then
        If neoGetArray(bstack, what$, pppp) Then

                If NeoGetArrayItem(pppp, bstack, what$, V, b$) Then
againhere:
                            If IsLabelSymbolNew(b$, "���", "IN", Lang) Then
                            
                                If what$ = "" Then Exit Function   ' no for no named array
                                Set soros = bstack.soros
                                Set bstack.Sorosref = bs.soros
                                ' Need bstack and not bs because bstack has more info inside.
                                    If Identifier(bstack, "@DATA", b$) Then
                                     Set bstack.Sorosref = soros
                                     Set soros = Nothing
                                                   VN = V + bs.soros.Total - 1
                                                   If pppp.UpperMonoLimit >= VN Then
                                                            With bs.soros
                                                                     i = 1
                                                                     For V = V To VN
                                                                              If .StackItemTypeObjectType(i) = "" Then
                                                                                       pppp.item(V) = .StackItem(i)
                                                                              Else
                                                                                       Set pppp.item(V) = .StackItem(i)
                                                                                       
                                                                              End If
                                                                              i = i + 1
                                                                     Next V
                                                            End With
                                                   Else
                                                            MyEr "Stock out of space", "�� ������� ������ ��� ����"
                                                            Exit Function
                                                   End If
                                                    StockValues = True
                                                    Exit Function
                                    End If
                            ElseIf IsLabelSymbolNew(b$, "��", "OUT", Lang) Then
                                                  
                                                                     Do
                                                                        If IsObject(pppp.item(V)) Then
                                                                       
                                                                                        Select Case Abs(IsLabel(bstack, b$, w$))
                                                                                        Case 1, 4
                                                                                        If GetVar(bstack, w$, i) Then
                                                                                        If Typename$(var(i)) = "Group" Then UnFloatGroupReWriteVars bstack, what$, i, pppp.item(V)
                                                                                        Else
                                                                                        Set var(i) = pppp.item(V)
                                                                                        End If
                                                                                        Case 3
                                                                        
                                                                                        If GetVar(bstack, w$, i) Then Set var(i) = pppp.item(V)
                                                                                        Case 5, 6, 7
                                                                                         If neoGetArray(bstack, w$, pppp1) Then
                                                                                            If IsSymbol(b$, ")") Then
                                                                                                bs.soros.PushObj pppp.item(V)
                                                                                                        If Not globalArrByPointer(bs, bstack, w$) Then MyEr "No array found", "��� ����� ������"
                                                                                                Else
                                                                                                        If NeoGetArrayItem(pppp1, bstack, w$, V1, b$) Then
                                                                                                               Set pppp1.item(V1) = pppp.item(V)
                                                                                                        End If
                                                                                                End If
                                                                                        ElseIf IsSymbol(b$, ")") Then
                                                                                                        bs.soros.PushObj pppp.item(V)
                                                                                                        If Not globalArrByPointer(bs, bstack, w$) Then MyEr "No array found", "��� ����� ������"
                                                                                                End If

                                                                                        
                                                                                        End Select
                                                                        Else
                                                                        Select Case Abs(IsLabel(bstack, b$, w$))
                                                                                        Case 1, 3, 4
                                                                                        If GetVar(bstack, w$, i) Then
                                                                                        Else
                                                                                        i = GlobalVar(w$, 0)
                                                                                        End If
                                                                                        var(i) = pppp.item(V)
                                                                                        
                                                                                        Case 5, 6, 7
                                                                                         If neoGetArray(bstack, w$, pppp1) Then
                                                                                         
                                                                                                If NeoGetArrayItem(pppp1, bstack, w$, V1, b$) Then
                                                                                                     pppp1.item(V1) = pppp.item(V)
                                                                                                End If
                                                                                      
                                                                                         End If
                                                                                        End Select
                                                                        
                                                                        End If
                                                                        V = V + 1
                                                                          If pppp.UpperMonoLimit < V Then
                                                                          If MaybeIsSymbol(b$, ",") Then
                                                                          MyEr "Reach array upper limit", "������ ��� ��� ���� ��� ������"
                                                                          Exit Function
                                                                          End If
                                                                          End If
                                                                        Loop Until Not FastSymbol(b$, ",")
                                                  
                                                    ElseIf IsLabelSymbolNew(b$, "���", "KEEP", Lang) Then
                                                    ' no copy of objects...only pointers...to objects
                                                    
                                                    If IsExp(bstack, b$, p) Then
                                                            If p <> Int(p) Or p < 0 Then
                                                                        MyEr "Invalid index", "�� ������� �������"
                                                                        Exit Function
                                                            End If
                                                                     If IsSymbol(b$, ",") Then
                                                                     If Abs(IsLabel(bstack, b$, w$)) > 4 Then
                                                                        If neoGetArray(bstack, w$, pppp1) Then
                                                                         If NeoGetArrayItem(pppp1, bstack, w$, V1, b$) Then
                                                                                   If Not (V1 + p - 1 <= pppp1.UpperMonoLimit) Then
                                                                                                MyEr "Invalid index", "�� ������� �������"
                                                                                                Exit Function
                                                                                   Else
                                                                                   If pppp1 Is pppp Then
                                                                                   If V = V1 Then
                                                                                   ' do nothing
                                                                                   ElseIf Abs(V - V1) < p And V1 > V Then
                                                                                   'from top
                                                                                               For i = p - 1 To 0 Step -1
                                                                                                                With pppp
                                                                                                                If IsObject(.item(i + V)) Then
                                                                                                                     Set pppp1.item(i + V1) = .item(i + V)
                                                                                                                Else
                                                                                                                     pppp1.item(i + V1) = .item(i + V)
                                                                                                                End If
                                                                                                                End With
                                                                                               Next i
                                                                                   Else
                                                                                            For i = 0 To p - 1
                                                                                                                With pppp
                                                                                                                If IsObject(.item(i + V)) Then
                                                                                                                     Set pppp1.item(i + V1) = .item(i + V)
                                                                                                                Else
                                                                                                                    pppp1.item(i + V1) = .item(i + V)
                                                                                                                End If
                                                                                                                End With
                                                                                               Next i
                                                                                   End If

                                                                                   Else
                                                                                               For i = 0 To p - 1
                                                                                                                With pppp
                                                                                                                If IsObject(.item(i + V)) Then
                                                                                                                     Set pppp1.item(i + V1) = .item(i + V)
                                                                                                                Else
                                                                                                                      pppp1.item(i + V1) = .item(i + V)
                                                                                                                End If
                                                                                                                End With
                                                                                               Next i
                                                                                    End If
                                                                                    StockValues = True
                                                                                    Exit Function
                                                                                    End If
                                                                                                End If
                                                                                  End If
                                                                                  ElseIf Right$(w$, 1) = "$" Then
                                                                                   If GetVar(bstack, w$, V1) Then
                                                                                    var(V1) = ""
                                                                                        Else
                                                                                        V1 = GlobalVar(w$, "")
                                                                                        End If
                                                                                        VN = Right$(what$, 3) = "$"
                                                                                         If p - 1 + V > pppp.UpperMonoLimit Then
                                                                                          MyEr "Invalid copy number", "�� ������� ������� ����������"
                                                                                         Exit Function
                                                                                         End If
                                                                                    For i = 0 To p - 1
                                                                                                                With pppp
                                                                                                                If IsObject(.item(i + V)) Then
                                                                                                                        If VN Then var(V1) = var(V1) + Sput("") Else var(V1) = var(V1) & " 0"
                                                                                                                Else
                                                                                                                  
                                                                                                                     Select Case VarType(.item(i + V))
                                                                                                                     Case 5
                                                                                                                     var(V1) = var(V1) + " " + CStr(.item(i + V))
                                                                                                                     Case 8
                                                                                                                     w$ = .item(i + V)
                                                                                                                     If IsNumberD2(w$, p) Then
                                                                                                                     var(V1) = var(V1) + " " + .item(i + V)
                                                                                                                     Else
                                                                                                                     var(V1) = var(V1) + Sput(.item(i + V))
                                                                                                                     End If
                                                                                                                     Case Else
                                                                                                                     If VN Then var(V1) = var(V1) + Sput("") Else var(V1) = var(V1) & " 0"
                                                                                                              
                                                                                                                     ''var(V1) = var(V1) & " " & Trim$(Str$(.item(i + V)))
                                                                                                                     End Select
                                                                                                                End If
                                                                                                                End With
                                                                                               Next i
                                                                                               
                                                                                   StockValues = True
                                                                                    Exit Function
                                                                                  End If
                                                   End If
                                                   End If

                                                    
                                                    ElseIf IsLabelSymbolNew(b$, "����", "SWEEP", Lang) Then
                                                    If what$ = "" Then Exit Function   ' no for no named array
                                                            If IsExp(bstack, b$, p) Then
                                                                            If p <> Int(p) Or p < 0 Then
                                                                                   MyEr "Invalid index", "�� ������� �������"
                                                                                   Exit Function
                                                                            End If
                                                         
                                                                If Not (V + p - 1 <= pppp.UpperMonoLimit) Then
                                                                            MyEr "Invalid index", "�� ������� �������"
                                                                            Exit Function
                                                                Else
                                                                    If Not IsSymbol(b$, ",") Then
                                                                                                                For i = 0 To p - 1
                                                                                                               If IsObject(pppp.item(i + V)) Then
                                                                                                               Set pppp.item(i + V) = Nothing
                                                                                                               End If
                                                                                                                pppp.item(i + V) = Empty
                                                                                                                Next i
                                                                    
                                                                    Else
                                                                    
                                                                            i = 1
                                                                            what$ = aheadstatus(b$, False, i)
                                                                            Set bstack.LastObj = Nothing
                                                                            If what$ <> "" Then
                                                                                            If Left$(what$, 1) = "N" Then
                                                                                                        If IsNumber(bstack, b$, P1) Then
                                                                                                                If bstack.LastObj Is Nothing Then
                                                                                                                For i = 0 To p - 1
                                                                                                                pppp.item(i + V) = P1
                                                                                                                Next i
                                                                                                                Else
                                                                                                            bs.soros.PushObj bstack.LastObj
                                                                                                                Set bstack.LastObj = Nothing
                                                                                                                For i = 0 To p - 1
                                                                                                                bs.soros.Copy2TopItem 1
                                                                                                                Set pppp.item(i + V) = bs.soros.PopObj
                                                                                                                Next i
                                                                                                                End If
                                                                                                        End If
                                                                                            Else
                                                                                                        If IsString(bstack, b$, what$) Then
                                                                                                                If bstack.LastObj Is Nothing Then
                                                                                                                For i = 0 To p - 1
                                                                                                               
                                                                                                                pppp.item(i + V) = what$
                                                                                                                Next i
                                                                                                                Else
                                                                                                                                                bs.soros.PushObj bstack.LastObj
                                                                                                                Set bstack.LastObj = Nothing
                                                                                                                For i = 0 To p - 1
                                                                                                                bs.soros.Copy2TopItem 1
                                                                                                                Set pppp.item(i + V) = bs.soros.PopObj
                                                                                                                Next i
                                                                                                                End If
                                                                                                                End If
                                                                                                        End If
                                                                                            End If
                                                                                    End If
                                                                                    End If
                                                          
                                                            End If
                                                        End If
                                                    End If
                                                    StockValues = True
                                Else
                            b$ = what$ + b$
                            If IsExp(bstack, b$, p) Then
                            what$ = ""
                            If Typename(bstack.LastObj) = "mArray" Then Set pppp = bstack.LastObj: Set bstack.LastObj = Nothing: GoTo againhere
                            
                            ElseIf IsStrExp(bstack, b$, what$) Then
                            what$ = ""
                            If Typename(bstack.LastObj) = "mArray" Then Set pppp = bstack.LastObj: Set bstack.LastObj = Nothing: GoTo againhere
                            End If
                            End If
                           
                    End If
            
End Function
Public Function SubsExist() As Boolean
SubsExist = SubName <> ""
End Function
Function preProcessor(bstack As basetask, b$) As Long
Dim ec$, SS$, w$, backup, p As Double, backupstr$
If Left$(b$, 10) = "'11001EDIT" Then backup = InStr(b$, vbCrLf) + 2 Else backup = 1
' backup show first char for code
While Mid$(b$, backup, 2) = vbCrLf
backup = backup + 2
Wend
If Mid$(b$, backup, 2) = "\#" Then
backupstr$ = Left$(b$, backup - 1)
b$ = Mid$(b$, backup + 2)

Do
        Do While FastSymbol(b$, "(")
        If FastSymbol(b$, ")") Then b$ = "()" + b$: Exit Do
                    If IsExp(bstack, b$, p) Then
                            If p = 0 Then  ''skip lines"
                                    If FastSymbol(b$, ",") Then  ''Skip lines
                                    If IsExp(bstack, b$, p) Then
                                        For p = p To 1 Step -1:    w$ = GetNextLine(b$): b$ = Mid$(b$, 3): Next p
                                    Else
                                    w$ = GetNextLine(b$): b$ = Mid$(b$, 3): GoTo continueloop
                                    
                                    End If
                                    Else  ' skip this
                                    w$ = GetNextLine(b$): b$ = Mid$(b$, 3): GoTo continueloop
                                    End If
                                    
                            End If
                            IsSymbol3 b$, ")"
                    End If
            Loop
    w$ = GetNextLine(b$)
    ec$ = w$
    SS$ = GetStrUntil(":", ec$)
        If SS$ = "" Then
        ec$ = w$
        SS$ = GetStrUntil(" ", ec$)
        End If
    ec$ = NLtrim$(ec$)
    b$ = ReplaceStr2(SS$, ec$, b$)
While Left$(b$, 2) = vbCrLf
    b$ = Mid$(b$, 3)
Wend
continueloop:
Loop Until Not FastSymbol(b$, "\#")
b$ = backupstr$ + b$
End If
preProcessor = backup
End Function
Sub newshow(bstack As basetask)
Dim scr As Object
Set scr = bstack.Owner
If scr.name = "DIS" Or scr.name = "dSprite" Then
If Form1.Visible = False Then
If ttl Then
' we have title
If Form3.WindowState = 1 Then
Form3.Visible = True: Form3.WindowState = 0
    Do While Not Form1.Visible Or NOEXECUTION
        mywait bstack, 1
        Loop
End If
Else

 Form1.Show , Form5
 mywait bstack, 5
End If
Else
    If ttl Then
    ' we have title
        If Form3.WindowState = 1 Then
        Form3.Visible = True: Form3.WindowState = 0
            Do While Not Form1.Visible Or NOEXECUTION
           mywait bstack, 5
                Loop
        End If
    Else
     Form1.Show , Form5
     mywait bstack, 5
    End If
End If

    scr.Visible = True

        Do While Not scr.Visible Or NOEXECUTION
mywait bstack, 5
        Loop
If scr.Visible Then scr.SetFocus
End If
End Sub
Sub TraceStore(b As basetask, V As Long, c$, o&, Optional r&)
     V = b.addlen
     r& = Len(c$) - o&

         b.addlen = r& + b.addlen
         
End Sub
Sub TraceRestore(b As basetask, V As Long)
         b.addlen = V
End Sub
Sub ProcBackGround(bstack As basetask, rest$, Lang As Long, afier As Boolean)
Dim s$, p As Double, i As Long, x1 As Long, x As Double, y As Double, f As Long, y1 As Long, sx As Double, SS$, pa$, it As Long
Dim scr As Object, frm$, W3 As Long, ya As Long, AddTwipsTopL As Long
Set scr = bstack.Owner
Dim prive As basket
If IsLabelSymbolNew(rest$, "�������", "MUSIC", Lang) Then
If IsStrExp(bstack, rest$, s$) Then
 'OPEN OR REPLACE
 If s$ <> "" Then
                    If ExtractType(s$) = "" Then s$ = s$ & ".avi"
                    If CFname(s$) = "" Then
                        s$ = mcd & s$: If CFname(s$) = "" Then Exit Sub
                    Else
                        s$ = CFname(s$)
                    End If
                   If s$ <> "" Then
                   MediaBack1.closeMovie
                   MediaBack1.FileName = s$
                   MediaBack1.openMovie
                   MediaBack1.playMovie
                   End If
                Else
                    afier = False
                    Exit Sub
                End If
Else
' CLOSE
MediaBack1.closeMovie
End If
Else
If Not IsExp(bstack, rest$, p) Then p = 0   '' no change

If FastSymbol(rest$, "{") Then
SS$ = "{" & block(rest$) & "}"
frm$ = rest$
If FastSymbol(rest$, "}") Then
'' check players(-2)
If players(-1).SZ = 0 Then
prive = players(GetCode(scr))
SetTextBasketBack Form1, prive
    SetText Form1, prive.MineLineSpace, True    'load Players() with first values
    With players(-1)
    .curpos = 0
    .currow = 0
    .mysplit = 0
    .osplit = 0
    End With
End If
If p > 0 Then
SetTextSZ Form1, CSng(p)
End If
W3 = bstack.tolayer
bstack.toback = True
Set bstack.Owner = Form1
 
Call executeblock(it, bstack, SS$, False, False)
 MyDoEvents2 bstack.Owner

Set bstack.Owner = scr
bstack.tolayer = W3
bstack.toback = False
If it <> 1 Then
If Trim(SS$) = "" Then SS$ = " "
rest$ = Left$(SS$, Len(SS$) - 1) + frm$: afier = False: Exit Sub
End If

End If
End If

End If

End Sub

Sub SetSizeAndHotSpot(thisbasket As basket, MaxX As Long, MaxY As Long, Optional ByVal HotSpotX = 0, Optional ByVal HotSpotY = 0)
With thisbasket
.MAXXGRAPH = MaxX
.MAXYGRAPH = MaxY
If Not IsMissing(HotSpotX) Then .x = CLng(HotSpotX)  ' this is hotspot
If Not IsMissing(HotSpotY) Then .y = CLng(HotSpotY)
End With
End Sub
Sub FeedBasket(ddd As Object, thisbasket As basket, alinespace As Long)
With thisbasket
.FontName = ddd.FontName
.SZ = ddd.FontSize
.charset = ddd.Font.charset
.MineLineSpace = alinespace
.uMineLineSpace = alinespace
''.Paper = ddd.BackColor
FrameText ddd, .SZ, 0, 0, -.Paper, (ddd.name <> "Form1")

End With
End Sub
Sub PlaceBasketPrive(ddd As Object, thisbasket As basket)
On Error Resume Next
With thisbasket
If Not ddd.FontName = .FontName And ddd.Font.charset = .charset And ddd.FontSize = .SZ Then
ddd.Font.charset = 0
ddd.FontSize = 9
ddd.FontName = .FontName
ddd.Font.charset = .charset
ddd.FontSize = .SZ
End If
' these I have to delete after change
End With
End Sub
Sub PlaceBasket(ddd As Object, thisbasket As basket)
On Error Resume Next
With thisbasket
If Not (ddd.FontName = .FontName And ddd.Font.charset = .charset And ddd.Font.Size = .SZ) Then
Form3.StoreFont .FontName, .SZ, .charset
ddd.Font.charset = 0
ddd.FontSize = 9
ddd.FontName = .FontName
ddd.Font.charset = .charset
ddd.FontSize = .SZ
End If
ddd.ForeColor = .mypen
End With
End Sub
Function GetCode(dq As Object) As Long
Select Case dq.name
Case "DIS"
GetCode = 0
Case "Form1"
GetCode = -1
Case "PrinterDocument1"
GetCode = -2
Case Else
GetCode = Val("0" & Form1.dSprite(dq.Index).Tag) '' so we get logical basket for given player
'' numbers are in priority order
'' we use logical basket because maybe we have 1, 5,28 layer as  2,1,3 dsprites
' so basket(28) is always for sprite 28, but here dSprite(3) is player 28.\
' if we change priority swapping 1 with 28, we have to move 28 before 1, and we change also numbers
' so we use A=1 and B=28, we do Player A swap B and Swap A, B
' So now we address to layer B as 1 and 1 has changed tag to give as the right basket.
' We can insert, say, a 15 layer -or player-, and this get basket 4, so we use another variable K
' We can change priority with swap and we know about it just reading the priority value inside variable
' So player 32 is always the top player
' baskets and priorities..never moved from what actual are
' so if we wait for read something in layer 1, and something move that layer..
' we have only to check if we have the same priority, and if not, we have to change Dq
' or from Vb...is better to read the tag.
End Select
End Function
Sub RepPlain(bstack As basetask, scr As Object, txt$)
Dim prive As Long
prive = GetCode(scr)
If players(prive).curpos > 0 Then crNew bstack, players(prive)
wwPlain bstack, players(prive), txt$, scr.Width, 100000, True
If players(prive).curpos > 0 Then crNew bstack, players(prive)
End Sub
Sub ProcWindow(bstack As basetask, rest$, scr As Object, ifier As Boolean)
Dim x1 As Long, y1 As Long, p As Double


If scr.name = "Form1" Then
    DisableTargets q(), -1
ElseIf scr.name = "DIS" Then
    DisableTargets q(), 0
ElseIf scr.name = "dSprite" Then
    DisableTargets q(), Val(scr.Index)
End If
With players(GetCode(scr))
        If IsExp(bstack, rest$, p) Then
            .SZ = p
            If .SZ < 4 Then .SZ = 4
            If FastSymbol(rest$, ",") Then
                If IsExp(bstack, rest$, p) Then
                    x1 = CLng(p)
                    If x1 = 0 And scr.name = "DIS" Then
                    If Not Form1.WindowState = 0 Then Form1.WindowState = 0: Form1.refresh
                    Form1.Move 0, 0, ScrX(), ScrY()
        
                    FrameText scr, .SZ, CLng(Form1.Width), CLng(Form1.Height), .Paper
                    Exit Sub
        Else
                    y1 = CLng(x1 * ScrY() / ScrX())
        End If
End If
If FastSymbol(rest$, ",") Then If IsExp(bstack, rest$, p) Then y1 = CLng(p)
End If
If scr.name = "dSprite" Then
            RsetRegion scr
            Set scr.Picture = LoadPicture("")
                If FastSymbol(rest$, ";") Then 'CENTER
                            FrameText scr, .SZ, x1, y1, .Paper, True
                            scr.Move (ScrX() - .MAXXGRAPH) / 2, (ScrY() - .MAXYGRAPH) / 2
                Else
                            scr.Move scr.Left, scr.top, x1, y1

                            FrameText scr, .SZ, 0, 0, .Paper, True
                            
                End If
                SetTextSZ scr, .SZ
Else
    If FastSymbol(rest$, ";") Then 'CENTER
        Form1.WindowState = 0

        FrameText scr, .SZ, x1, y1, .Paper
      ''  Form1.Move 0, 0
        Form1.Move (ScrX() - .MAXXGRAPH) / 2, (ScrY() - .MAXYGRAPH) / 2, .MAXXGRAPH, .MAXYGRAPH

        Form1.follow IEX, IEY
        scr.Move 0, 0
        If ttl Then
        If Form3.WindowState = 0 Then Form1.Show , Form5
        Else
        Form1.Show , Form5
        End If
    Else
        Form1.WindowState = 0

        FrameText scr, .SZ, x1, y1, .Paper
        Form1.Move 0, 0, .MAXXGRAPH, .MAXYGRAPH
        Form1.Up
        Form1.follow IEX, IEY
        scr.Move 0, 0
                If ttl Then
        If Form3.WindowState = 0 Then Form1.Show , Form5
        Else
        Form1.Show , Form5
        End If
    End If
End If
Else
ifier = False
Exit Sub
End If
''SleepWait 4
End With
End Sub
Function GetRealPos(dq As Object) As Long
Dim mybasket As basket, oldx
mybasket = players(GetCode(dq))
If mybasket.lastprint Then
oldx = dq.CurrentX
dq.CurrentX = dq.CurrentX + mybasket.Xt - dv15
GetXYb dq, mybasket, mybasket.curpos, mybasket.currow
dq.CurrentX = oldx
End If

 GetRealPos = mybasket.curpos
End Function
Function GetRealRow(dq As Object) As Long
Dim mybasket As basket
mybasket = players(GetCode(dq))
If mybasket.lastprint Then
GetXYb dq, mybasket, mybasket.curpos, mybasket.currow
End If

 GetRealRow = mybasket.currow
End Function

Function Funcweak(basestack As basetask, s$) As String
' no validation of names
' check for "dot"
Dim w As Long, ww$, Original$, s1$, ww1$, p As Double
again:
w = IsLabel(basestack, s$, ww$)
ww1$ = ww$
If w >= 5 Then
s1$ = "&" + ww$ + ")"
w = IsLabel(basestack, s1$, ww$)
If w = 2 Then
' IT IS A FUNCTION
 ww1$ = ww1$ + ")"
GetSubFullName ww1$, ww$
If FastSymbol(s$, ")") Then
If HERE$ = "" Then
Funcweak = ww1$
Else
Funcweak = HERE$ + "." + ww1$
End If
End If
ElseIf w = 0 Then
If ISSTRINGA(s1$, ww$) Then
If FastSymbol(s$, ")") Then
Funcweak = ww$
Else
' check parameters
ww$ = ww$ + "("
Do
If IsExp(basestack, s$, p) Then ww$ = ww$ + CStr(p)
If Not FastSymbol(s$, ",") Then Exit Do
ww$ = ww$ + ","
Loop
If FastSymbol(s$, ")") Then ww$ = ww$ + ")"
If FastSymbol(s$, ".") Then ' ............
End If
Funcweak = ww$
End If
End If
End If
Else
s1$ = "&" + ww$
w = IsLabel(basestack, s1$, ww1$)
If w = 0 Then

If FastSymbol(s1$, ":") Then

GetSubFullName ww$, ww1$
Funcweak = ww1$
Else

If ISSTRINGA(s1$, ww1$) Then
If FastSymbol(s$, ".") Then

If Right$(ww1$, 1) = "$" Then
If IsStrExp(basestack, ww1$, ww$) Then
s$ = ww$ + "." + s$
GoTo again
End If
End If
End If
Funcweak = ww1$
End If
End If
End If
End If

End Function

Function MyRound(ByVal x, Optional D As Double = 0) As Double
Dim i, n
  i = Abs(Int(D)): If i > 13 Then i = 13
  n = Sgn(x) * 0.5

Select Case i
Case 0
MyRound = Fix(x + n)
Case 1
MyRound = Fix(x * 10# + n) / 10#
Case 2
MyRound = Fix(x * 100# + n) / 100#
Case 3
MyRound = Fix(x * 1000# + n) / 1000#
Case 4
MyRound = Fix(x * 10000# + n) / 10000#
Case 5
MyRound = Fix(x * 100000# + n) / 100000#
Case 6
MyRound = Fix(x * 1000000# + n) / 1000000#
Case 7
MyRound = Fix(x * 10000000# + n) / 10000000#
Case 8
MyRound = Fix(x * 100000000# + n) / 100000000#
Case 9
MyRound = Fix(x * 1000000000# + n) / 1000000000#
Case 10
MyRound = Fix(x * 10000000000# + n) / 10000000000#
Case 11
MyRound = Fix(x * 100000000000# + n) / 100000000000#
Case 12
MyRound = Fix(x * 1000000000000# + n) / 1000000000000#
Case 13
MyRound = Fix(x * 10000000000000# + n) / 10000000000000#
End Select
End Function

