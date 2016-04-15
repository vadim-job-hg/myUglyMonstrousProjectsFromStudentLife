VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FEFCB4&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Программа"
   ClientHeight    =   11010
   ClientLeft      =   435
   ClientTop       =   825
   ClientWidth     =   15240
   ClipControls    =   0   'False
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      Caption         =   "По"
      Height          =   1695
      Left            =   0
      TabIndex        =   19
      Top             =   4920
      Width           =   1490
      Begin VB.OptionButton Option3 
         Caption         =   "Оба"
         Height          =   435
         Left            =   0
         TabIndex        =   22
         Top             =   1080
         Value           =   -1  'True
         Width           =   1455
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Вертикаль"
         Height          =   255
         Left            =   0
         TabIndex        =   21
         Top             =   720
         Width           =   1455
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Горизонталь"
         Height          =   435
         Left            =   0
         TabIndex        =   20
         Top             =   240
         Width           =   1455
      End
   End
   Begin VB.CheckBox Check5 
      Caption         =   "Уникальные"
      Height          =   375
      Left            =   0
      TabIndex        =   18
      Top             =   4320
      Value           =   1  'Checked
      Width           =   1455
   End
   Begin VB.CheckBox Check4 
      Caption         =   "Двиг границы"
      Height          =   375
      Left            =   0
      TabIndex        =   17
      Top             =   3960
      Value           =   1  'Checked
      Width           =   1455
   End
   Begin VB.CheckBox Check3 
      Caption         =   "Зачеркивание"
      Height          =   375
      Left            =   0
      TabIndex        =   16
      Top             =   3600
      Value           =   1  'Checked
      Width           =   1455
   End
   Begin VB.CheckBox Check2 
      Caption         =   " Дополнение"
      Height          =   375
      Left            =   0
      TabIndex        =   15
      Top             =   3240
      Value           =   1  'Checked
      Width           =   1455
   End
   Begin VB.CheckBox Check1 
      Caption         =   "     Центры"
      Height          =   435
      Left            =   0
      TabIndex        =   14
      Top             =   2880
      Value           =   1  'Checked
      Width           =   1455
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Перебор(зависает)"
      Enabled         =   0   'False
      Height          =   375
      Left            =   5280
      TabIndex        =   12
      Top             =   720
      Width           =   1575
   End
   Begin VB.CommandButton ver_vvod 
      Caption         =   "вер линии"
      Height          =   375
      Left            =   13920
      TabIndex        =   11
      Top             =   120
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton gor_vvod 
      Caption         =   "гор линии"
      Height          =   375
      Left            =   13920
      TabIndex        =   10
      Top             =   720
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.TextBox Text4 
      Height          =   405
      Left            =   10680
      TabIndex        =   9
      Top             =   120
      Visible         =   0   'False
      Width           =   3015
   End
   Begin VB.TextBox Text3 
      Height          =   405
      Left            =   10680
      TabIndex        =   8
      Top             =   720
      Visible         =   0   'False
      Width           =   3015
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Ввод"
      Enabled         =   0   'False
      Height          =   495
      Left            =   120
      TabIndex        =   6
      Top             =   1080
      Width           =   1575
   End
   Begin VB.TextBox text2 
      Height          =   495
      Left            =   2040
      TabIndex        =   3
      Top             =   2280
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   2040
      TabIndex        =   2
      Top             =   1680
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Выход"
      DisabledPicture =   "Form1.frx":0BC2
      Height          =   495
      Left            =   120
      MouseIcon       =   "Form1.frx":6111
      TabIndex        =   0
      Top             =   9840
      Width           =   1215
   End
   Begin VB.CommandButton Command4 
      Caption         =   "пуск"
      Enabled         =   0   'False
      Height          =   375
      Left            =   3600
      TabIndex        =   7
      Top             =   720
      Width           =   1455
   End
   Begin VB.Label Label4 
      Caption         =   "Вводите через пробел"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   10680
      TabIndex        =   13
      Top             =   1200
      Visible         =   0   'False
      Width           =   3015
   End
   Begin VB.Label Label3 
      BackColor       =   &H00FFFFC0&
      Caption         =   "Вертикаль"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404080&
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   2280
      Width           =   1335
   End
   Begin VB.Label label2 
      BackColor       =   &H00FFFFC0&
      Caption         =   "Горизонталь"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   11.25
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   1680
      Width           =   1575
   End
   Begin VB.Line Line2 
      X1              =   15240
      X2              =   0
      Y1              =   2880
      Y2              =   2880
   End
   Begin VB.Line Line1 
      X1              =   3360
      X2              =   3360
      Y1              =   0
      Y2              =   10320
   End
   Begin VB.Label Label1 
      BackColor       =   &H0080FFFF&
      Caption         =   "  Программа решения японских кросcвордов"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3480
      TabIndex        =   1
      Top             =   120
      Width           =   7095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim pict As Integer
Dim iGorRazm, iVerRazm As Integer
Dim iX, iY As Integer
Dim delX, delY As Integer
Dim Gor(60, 15), Ver(60, 15) As Integer
Dim ig, iv As Integer
Dim C(60, 60), G(60, 60), V(60, 60) As Integer

Private Sub Cifra(iX As Double, iY As Double, nov As Integer)
Line (iX, iY)-(iX + delX, iY + delY), RGB(100, 10, 10), B
Dim cif As Integer
cif = nov - Int(nov / 10) * 10
nov = (nov - cif) / 10
    If cif = 1 Then
        Line (iX + delX - 30, iY + 30)-(iX + delX - 30, iY + 110), RGB(0, 0, 0)
    End If
    If cif = 2 Then
        Line (iX + delX - 60, iY + 30)-(iX + delX - 30, iY + 30), RGB(0, 0, 0)
        Line (iX + delX - 30, iY + 30)-(iX + delX - 30, iY + 70), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 70)-(iX + delX - 30, iY + 70), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 110)-(iX + delX - 60, iY + 70), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 110)-(iX + delX - 25, iY + 110), RGB(0, 0, 0)
    End If
    If cif = 3 Then
        Line (iX + delX - 60, iY + 30)-(iX + delX - 30, iY + 30), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 70)-(iX + delX - 30, iY + 70), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 110)-(iX + delX - 25, iY + 110), RGB(0, 0, 0)
         Line (iX + delX - 30, iY + 30)-(iX + delX - 30, iY + 110), RGB(0, 0, 0)
    End If
    If cif = 4 Then
        Line (iX + delX - 30, iY + 30)-(iX + delX - 30, iY + 110), RGB(0, 0, 0)
         Line (iX + delX - 60, iY + 70)-(iX + delX - 30, iY + 70), RGB(0, 0, 0)
         Line (iX + delX - 60, iY + 30)-(iX + delX - 60, iY + 70), RGB(0, 0, 0)
    End If
    If cif = 5 Then
       Line (iX + delX - 60, iY + 30)-(iX + delX - 20, iY + 30), RGB(0, 0, 0)
       Line (iX + delX - 60, iY + 30)-(iX + delX - 60, iY + 65), RGB(0, 0, 0)
         Line (iX + delX - 60, iY + 65)-(iX + delX - 30, iY + 65), RGB(0, 0, 0)
    Line (iX + delX - 30, iY + 110)-(iX + delX - 30, iY + 65), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 110)-(iX + delX - 20, iY + 110), RGB(0, 0, 0)
    End If
    If cif = 6 Then
    Line (iX + delX - 60, iY + 30)-(iX + delX - 20, iY + 30), RGB(0, 0, 0)
       Line (iX + delX - 60, iY + 30)-(iX + delX - 60, iY + 65), RGB(0, 0, 0)
         Line (iX + delX - 60, iY + 65)-(iX + delX - 30, iY + 65), RGB(0, 0, 0)
    Line (iX + delX - 30, iY + 110)-(iX + delX - 30, iY + 65), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 110)-(iX + delX - 20, iY + 110), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 110)-(iX + delX - 60, iY + 65), RGB(0, 0, 0)
    End If
    If cif = 7 Then
        Line (iX + delX - 30, iY + 30)-(iX + delX - 30, iY + 110), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 30)-(iX + delX - 30, iY + 30), RGB(0, 0, 0)
    End If
    If cif = 8 Then
        Line (iX + delX - 60, iY + 30)-(iX + delX - 30, iY + 30), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 67)-(iX + delX - 30, iY + 67), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 110)-(iX + delX - 25, iY + 110), RGB(0, 0, 0)
        Line (iX + delX - 30, iY + 30)-(iX + delX - 30, iY + 110), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 30)-(iX + delX - 60, iY + 110), RGB(0, 0, 0)
    End If
    If cif = 9 Then
        Line (iX + delX - 60, iY + 30)-(iX + delX - 30, iY + 30), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 70)-(iX + delX - 30, iY + 70), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 110)-(iX + delX - 25, iY + 110), RGB(0, 0, 0)
        Line (iX + delX - 30, iY + 30)-(iX + delX - 30, iY + 110), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 70)-(iX + delX - 60, iY + 30), RGB(0, 0, 0)
    End If
    If cif = 0 Then
         Line (iX + delX - 30, iY + 30)-(iX + delX - 30, iY + 110), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 30)-(iX + delX - 60, iY + 110), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 30)-(iX + delX - 30, iY + 30), RGB(0, 0, 0)
        Line (iX + delX - 60, iY + 110)-(iX + delX - 25, iY + 110), RGB(0, 0, 0)
    End If
        
        
    If nov = 1 Then
        Line (iX + delX - 30 - 70, iY + 30)-(iX + delX - 30 - 70, iY + 120), RGB(0, 0, 0)
    End If
    If nov = 2 Then
        Line (iX + delX - 60 - 70, iY + 30)-(iX + delX - 30 - 70, iY + 30), RGB(0, 0, 0)
        Line (iX + delX - 30 - 70, iY + 30)-(iX + delX - 30 - 70, iY + 70), RGB(0, 0, 0)
        Line (iX + delX - 60 - 70, iY + 70)-(iX + delX - 30 - 70, iY + 70), RGB(0, 0, 0)
        Line (iX + delX - 60 - 70, iY + 110)-(iX + delX - 60 - 70, iY + 70), RGB(0, 0, 0)
        Line (iX + delX - 60 - 70, iY + 110)-(iX + delX - 25 - 70, iY + 110), RGB(0, 0, 0)
    End If
    If nov = 3 Then
        Line (iX + delX - 60 - 70, iY + 30)-(iX + delX - 30 - 70, iY + 30), RGB(0, 0, 0)
        Line (iX + delX - 60 - 70, iY + 70)-(iX + delX - 30 - 70, iY + 70), RGB(0, 0, 0)
        Line (iX + delX - 60 - 70, iY + 110)-(iX + delX - 25 - 70, iY + 110), RGB(0, 0, 0)
         Line (iX + delX - 30 - 70, iY + 30)-(iX + delX - 30 - 70, iY + 110), RGB(0, 0, 0)
    End If
    If nov = 4 Then
        Line (iX + delX - 30 - 70, iY + 30)-(iX + delX - 30 - 70, iY + 110), RGB(0, 0, 0)
         Line (iX + delX - 60 - 70, iY + 70)-(iX + delX - 30 - 70, iY + 70), RGB(0, 0, 0)
         Line (iX + delX - 60 - 70, iY + 30)-(iX + delX - 60 - 70, iY + 70), RGB(0, 0, 0)
    End If
    If nov = 5 Then
       Line (iX + delX - 60 - 70, iY + 30)-(iX + delX - 20 - 70, iY + 30), RGB(0, 0, 0)
       Line (iX + delX - 60 - 70, iY + 30)-(iX + delX - 60 - 70, iY + 65), RGB(0, 0, 0)
         Line (iX + delX - 60 - 70, iY + 65)-(iX + delX - 30 - 70, iY + 65), RGB(0, 0, 0)
    Line (iX + delX - 30 - 70, iY + 110)-(iX + delX - 30 - 70, iY + 65), RGB(0, 0, 0)
        Line (iX + delX - 60 - 70, iY + 110)-(iX + delX - 20 - 70, iY + 110), RGB(0, 0, 0)
    End If
    If nov = 6 Then
    Line (iX + delX - 60 - 70, iY + 30)-(iX + delX - 20 - 70, iY + 30), RGB(0, 0, 0)
       Line (iX + delX - 60 - 70, iY + 30)-(iX + delX - 60 - 70, iY + 65), RGB(0, 0, 0)
         Line (iX + delX - 60 - 70, iY + 65)-(iX + delX - 30 - 70, iY + 65), RGB(0, 0, 0)
    Line (iX + delX - 30 - 70, iY + 110)-(iX + delX - 30 - 70, iY + 65), RGB(0, 0, 0)
        Line (iX + delX - 60 - 70, iY + 110)-(iX + delX - 20 - 70, iY + 110), RGB(0, 0, 0)
        Line (iX + delX - 60 - 70, iY + 110)-(iX + delX - 60 - 70, iY + 65), RGB(0, 0, 0)
    End If
    If nov = 7 Then
        Line (iX + delX - 30 - 70, iY + 30)-(iX + delX - 30 - 70, iY + 110), RGB(0, 0, 0)
        Line (iX + delX - 60 - 70, iY + 30)-(iX + delX - 30 - 70, iY + 30), RGB(0, 0, 0)
    End If
    If nov = 8 Then
        Line (iX + delX - 60 - 70, iY + 30)-(iX + delX - 30 - 70, iY + 30), RGB(0, 0, 0)
        Line (iX + delX - 60 - 70, iY + 67)-(iX + delX - 30 - 70, iY + 67), RGB(0, 0, 0)
        Line (iX + delX - 60 - 70, iY + 110)-(iX + delX - 25 - 70, iY + 110), RGB(0, 0, 0)
        Line (iX + delX - 30 - 70, iY + 30)-(iX + delX - 30 - 70, iY + 110), RGB(0, 0, 0)
        Line (iX + delX - 60 - 70, iY + 30)-(iX + delX - 60 - 70, iY + 110), RGB(0, 0, 0)
    End If
    If nov = 9 Then
        Line (iX + delX - 60 - 70, iY + 30)-(iX + delX - 30 - 70, iY + 30), RGB(0, 0, 0)
        Line (iX + delX - 60 - 70, iY + 70)-(iX + delX - 30 - 70, iY + 70), RGB(0, 0, 0)
        Line (iX + delX - 60 - 70, iY + 110)-(iX + delX - 25 - 70, iY + 110), RGB(0, 0, 0)
        Line (iX + delX - 30 - 70, iY + 30)-(iX + delX - 30 - 70, iY + 110), RGB(0, 0, 0)
        Line (iX + delX - 60 - 70, iY + 70)-(iX + delX - 60 - 70, iY + 30), RGB(0, 0, 0)
    End If
    
End Sub

Private Sub Command1_Click()
End
End Sub

Private Sub Command2_Click()
Command3.Enabled = True
ig = 1
iv = 1
Form1.Cls


End Sub

Private Sub Command3_Click()
Text1.Visible = False
text2.Visible = False
Label4.Visible = True
Label3.Visible = False
label2.Visible = False
Text3.Visible = True
Text4.Visible = True
gor_vvod.Visible = True
ver_vvod.Visible = True
Dim sGorRazm, sVerRazm As String

Dim i, j, l, iSum
l = Len(sGorRazm)
1 sGorRazm = Text1.Text
sVerRazm = text2.Text
l = Len(sGorRazm)
iSum = 0
For i = 1 To l
    If Mid(sGorRazm, i, 1) = "1" Then iSum = iSum + 10 ^ (l - i) * 1
    If Mid(sGorRazm, i, 1) = "2" Then iSum = iSum + 10 ^ (l - i) * 2
    If Mid(sGorRazm, i, 1) = "3" Then iSum = iSum + 10 ^ (l - i) * 3
    If Mid(sGorRazm, i, 1) = "4" Then iSum = iSum + 10 ^ (l - i) * 4
    If Mid(sGorRazm, i, 1) = "5" Then iSum = iSum + 10 ^ (l - i) * 5
    If Mid(sGorRazm, i, 1) = "6" Then iSum = iSum + 10 ^ (l - i) * 6
    If Mid(sGorRazm, i, 1) = "7" Then iSum = iSum + 10 ^ (l - i) * 7
    If Mid(sGorRazm, i, 1) = "8" Then iSum = iSum + 10 ^ (l - i) * 8
    If Mid(sGorRazm, i, 1) = "9" Then iSum = iSum + 10 ^ (l - i) * 9
Next i
If iSum < 5 Or iSum > 60 Then
    Text1.Text = InputBox("гор размерность. Введите число от 5 до 60")
    GoTo 1
Else
    iGorRazm = iSum
End If
l = Len(sVerRazm)
iSum = 0
For i = 1 To l
    If Mid(sVerRazm, i, 1) = "1" Then iSum = iSum + 10 ^ (l - i) * 1
    If Mid(sVerRazm, i, 1) = "2" Then iSum = iSum + 10 ^ (l - i) * 2
    If Mid(sVerRazm, i, 1) = "3" Then iSum = iSum + 10 ^ (l - i) * 3
    If Mid(sVerRazm, i, 1) = "4" Then iSum = iSum + 10 ^ (l - i) * 4
    If Mid(sVerRazm, i, 1) = "5" Then iSum = iSum + 10 ^ (l - i) * 5
    If Mid(sVerRazm, i, 1) = "6" Then iSum = iSum + 10 ^ (l - i) * 6
    If Mid(sVerRazm, i, 1) = "7" Then iSum = iSum + 10 ^ (l - i) * 7
    If Mid(sVerRazm, i, 1) = "8" Then iSum = iSum + 10 ^ (l - i) * 8
    If Mid(sVerRazm, i, 1) = "9" Then iSum = iSum + 10 ^ (l - i) * 9
Next i
If iSum < 5 Or iSum > 60 Then
    text2.Text = InputBox("Вер размерность. Введите число от 5 до 60")
    GoTo 1
Else
    iVerRazm = iSum
End If
Text1.Enabled = False
text2.Enabled = False




Dim iX, iY As Integer

For iY = 0 To 59
    For iX = 0 To 59
       If iX + 1 <= iGorRazm And iY + 1 <= iVerRazm Then Line (iX * delX + 3360, iY * delY + 2880)-(iX * delX + delX + 3360, iY * delY + delY + 2880), RGB(0, 0, 0), B
      
    Next iX
Next iY
For iY = 1 To 10
    For iX = 0 To 59
       If iX + 1 <= iGorRazm Then Line (3360 + iX * delX, 2880 - delY * 11 + iY * delY)-(3360 + iX * delX + delX, 2880 - delY * 11 + iY * delY + delY), RGB(100, 6, 6), B
    Next iX
Next iY
For iY = 0 To 59
    For iX = 1 To 10
       If iY + 1 <= iVerRazm Then Line (3360 - delX * 11 + iX * delX, 2880 + iY * delY)-(3360 + iX * delX - delX * 11 + delX, 2880 + iY * delY + delY), RGB(100, 6, 6), B
    Next iX
Next iY
End Sub





Private Sub Command4_Click()
Dim i As Integer
For i = 1 To iGorRazm
    Ver(i, 12) = 1
    Ver(i, 13) = Ver(i, 11)
    Ver(i, 14) = 1
    Ver(i, 15) = iVerRazm
Next i



For i = 1 To iVerRazm
    Gor(i, 12) = 1
    Gor(i, 13) = Gor(i, 11)
    Gor(i, 14) = 1
    Gor(i, 15) = iGorRazm
Next i

Dim Tocnost, j As Integer
Dim arg2, arg3, arg4, arg5 As Integer
Tocnost = 0

    If Check1.Value = Checked And (Option1.Value = True Or Option3.Value = True) Then
        For j = 1 To iVerRazm
            If Gor(j, 14) < Gor(j, 15) Then Call GorZakras(Int(j))
        Next j
    End If
    If Check1.Value = Checked And (Option2.Value = True Or Option3.Value = True) Then
        For j = 1 To iGorRazm
            If Ver(j, 14) < Ver(j, 15) Then Call VerZakras(Int(j))
        Next j
    End If
Do While (Tocnost < 100)
    'Call Granici
    'Call granici2
       If Check3.Value = Checked And (Option2.Value = True Or Option3.Value = True) Then Call XgorX
       If Check3.Value = Checked And (Option2.Value = True Or Option3.Value = True) Then Call XverX
   If Check2.Value = Checked And (Option2.Value = True Or Option3.Value = True) Then
    Call DopX
    Call DopX2
   End If
   If Check2.Value = Checked And (Option2.Value = True Or Option3.Value = True) Then
    Call DopY
    Call DopY2
   End If
 
   

 
    Call IItoC
    
   If Check3.Value = Checked And Option3.Value = True Then Call XAllX
  
   ' If Check5.Value = Checked And (Option1.Value = True Or Option3.Value = True) Then Call UnicX
    
    
    
    
    Tocnost = Tocnost + 100
Loop
Dim iX, iY As Integer

For iY = 0 To iVerRazm - 1
    For iX = 0 To iGorRazm - 1
       If C(iX + 1, iY + 1) = 12 Then
       Line (iX * delX + 3360, iY * delY + 2880)-(iX * delX + delX + 3360, iY * delY + delY + 2880), RGB(100, 25, 25)
       Line (iX * delX + 3360, iY * delY + delY + 2880)-(iX * delX + delX + 3360, iY * delY + 2880), RGB(100, 25, 25)
       End If
       If C(iX + 1, iY + 1) = 1 Then Line (iX * delX + 3360, iY * delY + 2880)-(iX * delX + delX + 3360, iY * delY + delY + 2880), RGB(0, 0, 0), BF
    Next iX
Next iY
End Sub
Private Sub UnicX()
Dim i, j, max, min, schet, k As Integer
For j = 1 To iVerRazm
    If Gor(j, 14) <= Gor(j, 15) Then
        If Gor(j, 12) < Gor(j, 13) Then
            max = 0
            min = 60
            For i = Gor(j, 12) To Gor(j, 13)
                If min > Gor(j, i) Then min = Gor(j, i)
                If max < Gor(j, i) Then max = Gor(j, i)
            Next i
            'закрашенные = max
        
            schet = 0
            
            For i = Gor(j, 14) To Gor(j, 15)
                If C(i, j) = 1 Then schet = schet + 1
                If (C(i, j) = 0 Or C(i, j) = 12) And schet <> 0 Then
                    If schet = max Then
                        C(i, j) = 12
                        G(i, j) = 12
                        V(i, j) = 12
                        If i - schet - 1 >= 1 Then
                            C(i - schet - 1, j) = 12
                            G(i - schet - 1, j) = 12
                            V(i - schet - 1, j) = 12
                        End If
                    End If
                    schet = 0
                End If
                If i = Gor(j, 15) And schet <> 0 Then
                    If schet = max Then
                        If i - schet + 1 >= 1 Then
                            C(i - schet + 1, j) = 12
                            G(i - schet + 1, j) = 12
                            V(i - schet + 1, j) = 12
                        End If
                    End If
                    schet = 0
                End If
            Next i
        End If
    End If
Next j

                    
                
                
                



End Sub
Private Sub DopX2()
Dim i, j, k As Integer
For j = 1 To iVerRazm
    If Gor(j, 14) <= Gor(j, 15) Then
    For i = Gor(j, 14) To Gor(j, 15)
        If Gor(j, 14) = i And G(i, j) > 0 And G(i, j) < 12 Then
            For k = Gor(j, 14) To Gor(j, 14) + Gor(j, Gor(j, 12)) - 1
                C(k, j) = 1
                G(k, j) = Gor(j, 12)
                If V(k, j) = 0 Then V(k, j) = 11
            Next k
            If Gor(j, 14) + Gor(j, Gor(j, 12)) <= iGorRazm Then
                G(Gor(j, 14) + Gor(j, Gor(j, 12)), j) = 12
                C(Gor(j, 14) + Gor(j, Gor(j, 12)), j) = 12
                V(Gor(j, 14) + Gor(j, Gor(j, 12)), j) = 12
            End If
            If Gor(j, 12) = Gor(j, 13) Then
                For k = 1 To iGorRazm
                    If G(k, j) = 0 Then
                        G(k, j) = 12
                        C(k, j) = 12
                        V(k, j) = 12
                    End If
                Next k
                Gor(j, 14) = iGorRazm
                Gor(j, 15) = 1
            End If
        End If
   Next i
   End If
Next j
End Sub
Private Sub DopY2()
Dim i, j, k As Integer
'Вертикаль
For i = 1 To iGorRazm
    If Ver(i, 14) <= Ver(i, 15) Then
    For j = Ver(i, 14) To Ver(i, 15)
        If Ver(i, 14) = j And V(i, j) > 0 And V(i, j) < 12 Then
            For k = Ver(i, 14) To Ver(i, 14) + Ver(i, Ver(i, 12)) - 1
                C(i, k) = 1
                V(i, k) = Ver(i, 12)
                If G(i, k) = 0 Then G(i, k) = 11
            Next k
            If Ver(i, 14) + Ver(i, Ver(i, 12)) <= iVerRazm Then
                G(i, Ver(i, 14) + Ver(i, Ver(i, 12))) = 12
                V(i, Ver(i, 14) + Ver(i, Ver(i, 12))) = 12
                C(i, Ver(i, 14) + Ver(i, Ver(i, 12))) = 12
            End If
            If Ver(i, 12) = Ver(i, 13) Then
                For k = 1 To iVerRazm
                    If V(i, k) = 0 Then
                        G(i, k) = 12
                        C(i, k) = 12
                        V(i, k) = 12
                    End If
                Next k
                Ver(i, 14) = iVerRazm
                Ver(i, 15) = 1
            End If
        End If
   Next j
   End If
Next i

End Sub
Private Sub DopX()
Dim i, j, k, zakr, cifr As Integer
For j = 1 To iVerRazm
    For i = 1 To iGorRazm
        If G(i - 1, j) = 12 And G(i, j) > 0 And G(i, j) < 11 Then
            zakr = Gor(j, G(i, j))
            cifr = G(i, j)
        End If
        If zakr > 0 Then
            zakr = zakr - 1
            G(i, j) = cifr
            C(i, j) = 1
            If V(i, j) = 0 Then V(i, j) = 11
        End If
    Next i
    cifr = 0
    For i = 2 To iGorRazm
        If G(iGorRazm - i + 2, j) = 12 And G(iGorRazm - i + 1, j) > 0 And G(iGorRazm - i + 1, j) < 11 Then
             zakr = Gor(j, G(iGorRazm - i + 1, j))
                cifr = G(iGorRazm - i + 1, j)
        End If
        
        If zakr > 0 Then
            zakr = zakr - 1
            G(iGorRazm - i + 1, j) = cifr
            C(iGorRazm - i + 1, j) = 1
            If V(iGorRazm - i + 1, j) = 0 Then V(iGorRazm - i + 1, j) = 11
        End If
    Next i
Next j
        
End Sub
 'вертикаль
Private Sub DopY()
Dim i, j, k, zakr, cifr As Integer

For i = 1 To iGorRazm
    For j = 1 To iVerRazm
        If V(i, j - 1) = 12 And V(i, j) > 0 And V(i, j) < 11 Then
            zakr = Ver(i, V(i, j))
            cifr = V(i, j)
        End If
        If zakr > 0 Then
            zakr = zakr - 1
            V(i, j) = cifr
            C(i, j) = 1
            If G(i, j) = 0 Then G(i, j) = 11
        End If
    Next j
    cifr = 0
    For j = 2 To iVerRazm
        If V(i, iVerRazm - j + 2) = 12 And V(i, iVerRazm - j + 1) > 0 And V(i, iVerRazm - j + 1) < 11 Then
             zakr = Ver(i, V(i, iVerRazm - j + 1))
                cifr = V(i, iVerRazm - j + 1)
        End If
        
        If zakr > 0 Then
            zakr = zakr - 1
            V(i, iVerRazm - j + 1) = cifr
            C(i, iVerRazm - j + 1) = 1
            If G(i, iVerRazm - j + 1) = 0 Then G(i, iVerRazm - j + 1) = 11
        End If
    Next j
Next i
        
End Sub
                    

Private Sub XAllX()
Dim i, j As Integer
For j = 1 To iVerRazm
    For i = 1 To iGorRazm
        If C(i, j) = 0 And (i < Gor(j, 14) Or i > Gor(j, 15) Or j < Ver(i, 14) Or j > Ver(i, 15)) Then
            C(i, j) = 12
            G(i, j) = 12
            V(i, j) = 12
        End If
    Next i
Next j
End Sub
Private Sub Granici()
Dim i, j, k As Integer
    For j = 1 To iVerRazm
        If Gor(j, 14) <= Gor(j, 15) Then
        For i = Gor(j, 14) To Gor(j, 15)
            If Gor(j, 12) = Gor(j, 13) And G(i, j) = Gor(j, 13) And i = Gor(j, 15) Then
                If Gor(j, 15) - Gor(j, 13) + 1 >= 1 Then
                    For k = Gor(j, 15) - Gor(j, 13) + 1 To Gor(j, 15)
                        C(k, j) = 1
                        G(k, j) = Gor(j, 13)
                        If V(k, j) = 0 Then V(k, j) = 11
                    Next k
                    Gor(j, 15) = 1
                    Gor(j, 14) = iGorRazm
                End If
            End If
            If Gor(j, 12) = Gor(j, 13) And G(i, j) = Gor(j, 13) And i = Gor(j, 14) Then
                If Gor(j, 14) + Gor(j, 13) - 1 <= iGorRazm Then
                    For k = i To Gor(j, 14) + Gor(j, 13) - 1
                        C(k, j) = 1
                        G(k, j) = Gor(j, 13)
                        If V(k, j) = 0 Then V(k, j) = 11
                    Next k
                    Gor(j, 15) = 1
                    Gor(j, 14) = iGorRazm
                End If
            End If
        Next i
        End If
    Next j
    
'Вертикаль
    For i = 1 To iGorRazm
        If Ver(i, 14) <= Ver(i, 15) Then
        For j = Ver(i, 14) To Ver(i, 15)
            If Ver(i, 12) = Ver(i, 13) And V(i, j) = Ver(i, 13) And j = Ver(i, 15) Then
                If Ver(i, 15) - Ver(i, 13) + 1 >= 1 Then
                    For k = Ver(i, 15) - Ver(i, 13) + 1 To Ver(i, 15)
                        C(i, k) = 1
                        V(i, k) = Ver(i, 13)
                        If G(i, k) = 0 Then G(i, k) = 11
                    Next k
                    Ver(i, 15) = 1
                    Ver(i, 14) = iVerRazm
                End If
            End If
            If Ver(i, 12) = Ver(i, 13) And V(i, j) = Ver(i, 13) And j = Ver(i, 14) Then
                If Ver(i, 14) + Ver(i, 13) - 1 <= iVerRazm Then
                    For k = j To Ver(i, 14) + Ver(i, 13) - 1
                        C(i, k) = 1
                        V(i, k) = Ver(i, 13)
                        If G(i, k) = 0 Then G(i, k) = 11
                    Next k
                    Ver(i, 15) = 1
                    Ver(i, 14) = iVerRazm
                End If
            End If
        Next j
        End If
    Next i

End Sub
Private Sub granici2()
For j = 1 To iVerRazm
        For i = Gor(j, 14) To Gor(j, 15)
            If i > 1 And G(i, j) = Gor(j, 12) Then
                If G(i - 1, j) = 12 Then
                    For k = i To i + Gor(j, Gor(j, 12)) - 1
                        G(k, j) = Gor(j, 12)
                        C(k, j) = 1
                        If V(k, j) = 0 Then V(k, j) = 11
                    Next k
                    If Gor(j, 12) <> Gor(j, 13) Then
                         Gor(j, 12) = Gor(j, 12) + 1
                    Else
                        Gor(j, 14) = iGorRazm
                        Gor(j, 15) = 1
                    End If
                    If i + Gor(j, Gor(j, 12)) <= iGorRazm Then
                        C(i + Gor(j, Gor(j, 12)), j) = 12
                        G(i + Gor(j, Gor(j, 12)), j) = 12
                        V(i + Gor(j, Gor(j, 12)), j) = 12
                        If i + Gor(j, Gor(j, 12)) + 1 <= iGorRazm Then
                            
                            Gor(j, 14) = i + Gor(j, Gor(j, 12)) + 1
                        Else
                            Gor(j, 14) = i + Gor(j, Gor(j, 12))
                        End If
                    Else
                        Gor(j, 14) = i + Gor(j, Gor(j, 12)) - 1
                    End If
                End If
            End If
            If i = Gor(j, 14) And G(i, j) > 0 And G(i, j) < 12 Then
                For k = i To i + Gor(j, Gor(j, 12)) - 1
                        G(k, j) = Gor(j, 12)
                        C(k, j) = 1
                        If V(k, j) = 0 Then V(k, j) = 11
                Next k
                If Gor(j, 12) <> Gor(j, 13) Then
                    Gor(j, 12) = Gor(j, 12) + 1
                Else
                    Gor(j, 14) = iGorRazm
                    Gor(j, 15) = 1
                End If
                    
                    If i + Gor(j, Gor(j, 12)) <= iGorRazm Then
                        C(i + Gor(j, Gor(j, 12)), j) = 12
                        G(i + Gor(j, Gor(j, 12)), j) = 12
                        V(i + Gor(j, Gor(j, 12)), j) = 12
                        If i + Gor(j, Gor(j, 12)) + 1 <= iGorRazm Then
                            
                            Gor(j, 14) = i + Gor(j, Gor(j, 12)) + 1
                        Else
                            Gor(j, 14) = i + Gor(j, Gor(j, 12))
                        End If
                    Else
                        Gor(j, 14) = i + Gor(j, Gor(j, 12)) - 1
                    End If
            End If
            If i = Gor(j, 15) And G(i, j) > 0 And G(i, j) < 12 Then
                If Gor(j, 12) <> Gor(j, 13) Then
                    Gor(j, 13) = Gor(j, 13) - 1
                Else
                    Gor(j, 14) = iGorRazm
                    Gor(j, 15) = 1
                End If
                If i - Gor(j, Gor(j, 13)) >= 1 Then
                    G(i - Gor(j, Gor(j, 13)), j) = 12
                    C(i - Gor(j, Gor(j, 13)), j) = 12
                    V(i - Gor(j, Gor(j, 13)), j) = 12
                    If i - Gor(j, Gor(j, 13)) - 1 >= 1 Then
                        Gor(j, 15) = i - Gor(j, Gor(j, 13)) - 1
                    Else
                        Gor(j, 15) = i - Gor(j, Gor(j, 13))
                    End If
                End If
                For k = i - Gor(j, Gor(j, 13)) + 1 To i
                    G(k, j) = Gor(j, 13)
                    C(k, j) = 1
                    If V(k, j) = 0 Then V(k, j) = 11
                Next k
            End If
            If i < iGorRazm Then
                If G(i + 1, j) = 12 And G(i, j) = Gor(j, 13) Then
                    If Gor(j, 12) <> Gor(j, 13) Then
                        Gor(j, 13) = Gor(j, 13) - 1
                    Else
                        Gor(j, 14) = iGorRazm
                        Gor(j, 15) = 1
                    End If
                    If i - Gor(j, Gor(j, 13)) >= 1 Then
                        G(i - Gor(j, Gor(j, 13)), j) = 12
                        C(i - Gor(j, Gor(j, 13)), j) = 12
                        V(i - Gor(j, Gor(j, 13)), j) = 12
                        If i - Gor(j, Gor(j, 13)) - 1 >= 1 Then
                            Gor(j, 15) = i - Gor(j, Gor(j, 13)) - 1
                        Else
                            Gor(j, 15) = i - Gor(j, Gor(j, 13))
                        End If
                    End If
                    For k = i - Gor(j, Gor(j, 13)) + 1 To i
                        G(k, j) = Gor(j, 13)
                        C(k, j) = 1
                        If V(k, j) = 0 Then V(k, j) = 11
                    Next k
                End If
            End If
                    
        Next i
    Next j
End Sub

Private Sub IItoC()
Dim i, j As Integer
For j = 1 To iVerRazm
    For i = 1 To iGorRazm - 1
        If G(i, j) < 11 And G(i, j) > 0 And G(i + 1, j) = 11 Then G(i + 1, j) = G(i, j)
        If G(i + 1, j) < 11 And G(i + 1, j) > 0 And G(i, j) = 11 Then G(i, j) = G(i + 1, j)
    Next i
Next j
 For i = 1 To iGorRazm
    For j = 1 To iVerRazm - 1
        If V(i, j) < 11 And V(i, j) > 0 And V(i, j + 1) = 11 Then V(i, j + 1) = V(i, j)
        If V(i, j + 1) < 11 And V(i, j + 1) > 0 And V(i, j) = 11 Then V(i, j) = V(i, j + 1)
    Next j
Next i
End Sub
Private Sub XverX()
Dim j, i, k As Integer


t = 0
For i = 1 To iGorRazm
    'определение принадлежности точки к ряду(по отдаленности от краёв)
    For j = 1 To iVerRazm
        If V(i, j) = 11 And Ver(i, 14) + Ver(i, Ver(i, 12)) - 1 >= j - 1 Then V(i, j) = Ver(i, 12)
       If V(i, j) = 11 And Ver(i, 15) - Ver(i, Ver(i, 13)) <= j + 1 Then V(i, j) = Ver(i, 13)
    Next j
    
    'определение принадлежности точки к ряду(всего один ряд)
    If Ver(i, 14) <= Ver(i, 15) Then
        For j = Ver(i, 14) To Ver(i, 15)
            If V(i, j) = 11 And Ver(i, 13) = Ver(i, 12) Then V(i, j) = Ver(i, 13)
        Next j
    End If
    'зачеркивание(всего один ряд)
    If Ver(i, 13) = Ver(i, 12) And Ver(i, 14) <= Ver(i, 15) Then
    For j = Ver(i, 14) To Ver(i, 15)
        If V(i, j) > 0 And V(i, j) < 11 Then
            If j > 1 Then
                If V(i, j - 1) = 0 Or V(i, j - 1) = 12 Then
                    For k = j + Ver(i, V(i, j)) To Ver(i, 15)
                        C(i, k) = 12
                        G(i, k) = 12
                        V(i, k) = 12
                    Next k
                End If
            End If
        End If
    Next j
    For j = Ver(i, 14) To Ver(i, 15)
        If V(i, Ver(i, 15) - j + 1) > 0 And V(i, Ver(i, 15) - j + 1) < 11 Then
            If Ver(i, 15) - j + 2 <= iVerRazm Then
                If V(i, Ver(i, 15) - j + 2) = 12 Or V(i, Ver(i, 15) - j + 2) Then
                    For k = Ver(i, 14) To Ver(i, 15) - j + 1 - Ver(i, Ver(i, 12))
                        C(i, k) = 12
                        G(i, k) = 12
                        V(i, k) = 12
                    Next k
                End If
            End If
                
        End If
    Next j
    End If
    
Next i






End Sub

Private Sub XgorX()
Dim j, i, k As Integer


t = 0
For j = 1 To iVerRazm
    'определение принадлежности точки к ряду(по отдаленности от краёв)
    For i = 1 To iGorRazm
        If G(i, j) = 11 And Gor(j, 14) + Gor(j, Gor(j, 12)) - 1 >= i - 1 Then G(i, j) = Gor(j, 12)
       If G(i, j) = 11 And Gor(j, 15) - Gor(j, Gor(j, 13)) <= i + 1 Then G(i, j) = Gor(j, 13)
    Next i
    
    'определение принадлежности точки к ряду(всего один ряд)
    If Gor(j, 14) <= Gor(j, 15) Then
        For i = Gor(j, 14) To Gor(j, 15)
            If G(i, j) = 11 And Gor(j, 13) = Gor(j, 12) Then G(i, j) = Gor(j, 13)
        Next i
    End If
    'зачеркивание(всего один ряд)
    If Gor(j, 13) = Gor(j, 12) And Gor(j, 14) <= Gor(j, 15) Then
    For i = Gor(j, 14) To Gor(j, 15)
        If G(i, j) > 0 And G(i, j) < 11 Then
            If i > 1 Then
                If G(i - 1, j) = 0 Or G(i - 1, j) = 12 Then
                    For k = i + Gor(j, G(i, j)) To Gor(j, 15)
                        C(k, j) = 12
                        G(k, j) = 12
                        V(k, j) = 12
                    Next k
                End If
            End If
        End If
    Next i
    For i = Gor(j, 14) To Gor(j, 15)
        If G(Gor(j, 15) - i + 1, j) > 0 And G(Gor(j, 15) - i + 1, j) < 11 Then
            If Gor(j, 15) - i + 2 <= iGorRazm Then
                If G(Gor(j, 15) - i + 2, j) = 12 Or G(Gor(j, 15) - i + 2, j) = 0 Then
                    For k = Gor(j, 14) To Gor(j, 15) - i + 1 - Gor(j, Gor(j, 12))
                        C(k, j) = 12
                        G(k, j) = 12
                        V(k, j) = 12
                    Next k
                End If
            End If
                
        End If
    Next i
    End If
    
Next j




            
               
                    
        


End Sub
Private Sub GorZakras(pos As Integer)
Dim iSum_min, iSum_max, i, k As Integer
iSum_min = 0
For i = Gor(pos, 12) To Gor(pos, 13)
    iSum_min = iSum_min + Gor(pos, i) + 1
Next i
    iSum_min = iSum_min - 1
    iSum_max = -1
For i = Gor(pos, 12) To Gor(pos, 13)
    
    iSum_max = iSum_max + Gor(pos, i) + 1
    
            For k = Gor(pos, 15) - iSum_min + 1 To Gor(pos, 14) + iSum_max - 1
                 C(k, pos) = 1
                 G(k, pos) = i
                 If V(k, pos) = 0 Then V(k, pos) = 11
                 
            Next k
    
            iSum_min = iSum_min - Gor(pos, i) - 1
        
         Next i
End Sub
Private Sub VerZakras(pos As Integer)
Dim iSum_min, iSum_max, i, k As Integer
iSum_min = 0
For i = Ver(pos, 12) To Ver(pos, 13)
    iSum_min = iSum_min + Ver(pos, i) + 1
Next i
    iSum_min = iSum_min - 1
    iSum_max = -1
For i = Ver(pos, 12) To Ver(pos, 13)
    iSum_max = iSum_max + Ver(pos, i) + 1
    
            For k = Ver(pos, 15) - iSum_min + 1 To Ver(pos, 14) + iSum_max - 1
                 C(pos, k) = 1
                 V(pos, k) = i
                 If G(pos, k) = 0 Then G(pos, k) = 11
                 
            Next k
                iSum_min = iSum_min - Ver(pos, i) - 1
         Next i
End Sub

Private Sub Command5_Click()
Dim i, j, k, t, toch, N, m As Integer
Dim vse, chast As Double
vse = 2 ^ (iGorRazm * iVerRazm)
chast = 0
Dim per(60, 60) As Integer
Dim tr As Byte
tr = False
For j = 1 To iVerRazm
    For i = 1 To iGorRazm
        per(i, j) = 0
    Next i
Next j
20 i = 1
j = 1
30 If per(i, j) = 1 Then
        per(i, j) = 0
        i = i + 1
        If i > iGorRazm Then
            i = 1
            j = j + 1
            If j > iVerRazm Then GoTo 40
        End If
        MsgBox ("возврат")
        GoTo 30
    Else
        per(i, j) = 1
    End If
    chast = chast + 1
   If m = 1000 Then
        Label4.Caption = "выполнено" & Str(chast / vse * 100) & " / " & Str(vse)
        m = 0
    Else
        m = m + 1
    End If
        
    For k = 1 To iVerRazm
        toch = 0
        N = 1
        For t = 1 To iGorRazm
        If per(t, k) = 1 Then
            toch = toch + 1
        Else
            If toch > 0 Then
                If toch = Gor(k, N) Then
                    N = N + 1
                    toch = 0
                Else
                    i = 1
                    j = 1
                    GoTo 30
                End If
            End If
        End If
        Next t
    Next k
    
    For k = 1 To iGorRazm
        toch = 0
        N = 1
        For t = 1 To iVerRazm
        If per(k, t) = 1 Then
            toch = toch + 1
        Else
            If toch > 0 Then
                If toch = Ver(k, N) Then
                    N = N + 1
                    toch = 0
                Else
                    i = 1
                    j = 1
                    GoTo 30
                End If
            End If
        End If
        Next t
    Next k
   tr = True
40 If tr = True Then
        For j = 1 To iVerRazm
            For i = 1 To igrrazm
                If per(i, j) = 1 Then
                    C(i, j) = 1
                Else
                    C(i, j) = 12
                End If
            Next i
        Next j
        Dim iX, iY As Integer

For iY = 0 To iVerRazm - 1
    For iX = 0 To iGorRazm - 1
       If C(iX + 1, iY + 1) = 12 Then
       Line (iX * delX + 3360, iY * delY + 2880)-(iX * delX + delX + 3360, iY * delY + delY + 2880), RGB(100, 25, 25)
       Line (iX * delX + 3360, iY * delY + delY + 2880)-(iX * delX + delX + 3360, iY * delY + 2880), RGB(100, 25, 25)
       End If
       If C(iX + 1, iY + 1) = 1 Then Line (iX * delX + 3360, iY * delY + 2880)-(iX * delX + delX + 3360, iY * delY + delY + 2880), RGB(0, 0, 0), BF
    Next iX
Next iY
    End If
End Sub

Private Sub Form_Load()
pict = 1
delX = (14500 - 3360) / 60
delY = (10500 - 2880) / 60
ig = 1
iv = 1
Dim i, j As Integer
For j = 1 To 60
    For i = 1 To 60
        C(i, j) = 0
        G(i, j) = 0
        V(i, j) = 0
    Next i
Next j

End Sub


Private Sub gor_vvod_Click()
Dim Scetcic As Integer

Dim sVvod As String
If iv <= iVerRazm Then
sVvod = Text3.Text
Text3.Text = ""
Scetcic = 1
sVvod = sVvod + " "
For j = 1 To 11
    Gor(iv, j) = 0
Next j
For j = 1 To Len(sVvod)
        If Mid(sVvod, j, 1) <> " " Then Gor(iv, Scetcic) = Gor(iv, Scetcic) * 10
        If Mid(sVvod, j, 1) <> "1" And Mid(sVvod, j, 1) <> "2" And Mid(sVvod, j, 1) <> "3" And Mid(sVvod, j, 1) <> "4" And Mid(sVvod, j, 1) <> "5" And Mid(sVvod, j, 1) <> "6" And Mid(sVvod, j, 1) <> "7" And Mid(sVvod, j, 1) <> "8" And Mid(sVvod, j, 1) <> "9" And Mid(sVvod, j, 1) <> "0" And Mid(sVvod, j, 1) <> " " Then Gor(iv, Scetcic) = Gor(iv, Scetcic) / 10
        If Mid(sVvod, j, 1) = "1" Then Gor(iv, Scetcic) = Gor(iv, Scetcic) + 1
        If Mid(sVvod, j, 1) = "2" Then Gor(iv, Scetcic) = Gor(iv, Scetcic) + 2
        If Mid(sVvod, j, 1) = "3" Then Gor(iv, Scetcic) = Gor(iv, Scetcic) + 3
        If Mid(sVvod, j, 1) = "4" Then Gor(iv, Scetcic) = Gor(iv, Scetcic) + 4
        If Mid(sVvod, j, 1) = "5" Then Gor(iv, Scetcic) = Gor(iv, Scetcic) + 5
        If Mid(sVvod, j, 1) = "6" Then Gor(iv, Scetcic) = Gor(iv, Scetcic) + 6
        If Mid(sVvod, j, 1) = "7" Then Gor(iv, Scetcic) = Gor(iv, Scetcic) + 7
        If Mid(sVvod, j, 1) = "8" Then Gor(iv, Scetcic) = Gor(iv, Scetcic) + 8
        If Mid(sVvod, j, 1) = "9" Then Gor(iv, Scetcic) = Gor(iv, Scetcic) + 9
        If Mid(sVvod, j, 1) = " " Then
            Gor(iv, 11) = Gor(iv, 11) + 1
            Scetcic = Scetcic + 1
        End If
        If Scetcic = 11 Then j = Len(sVvod)
    Next j
  
    Dim iX, k, t As Integer
    
    

    Dim kSumm As Integer
    kSumm = 0
    For k = 1 To Gor(iv, 11)
        kSumm = Gor(iv, k) + kSumm + 1
    Next k
If kSumm - 1 > iGorRazm Then
iv = iv - 1
Else

k = 1
    For iX = 10 - Gor(iv, 11) + 1 To 10
    
       t = Gor(iv, k)
               Call Cifra(3360 - 11 * delX + iX * delX, 2880 + (iv - 1) * delY, t)
            k = k + 1
 
    Next iX
End If

iv = iv + 1
End If

If iv > iVerRazm And ig > iGorRazm Then Command4.Enabled = True
End Sub

Private Sub Text1_Change()
Dim s As String

s = Text1.Text
Dim l, i As Integer
l = Len(s)
For i = 1 To l
    If Mid(s, i, 1) <> "1" And Mid(s, i, 1) <> "0" And Mid(s, i, 1) <> "2" And Mid(s, i, 1) <> "3" And Mid(s, i, 1) <> "4" And Mid(s, i, 1) <> "5" And Mid(s, i, 1) <> "6" And Mid(s, i, 1) <> "7" And Mid(s, i, 1) <> "8" And Mid(s, i, 1) <> "9" Then
        If i <> 1 And i <> l Then
            s = Mid(s, 1, i - 1) + Mid(s, i + 1, l - i)
            l = l - 1
        End If
        If i = 1 Then
            s = Mid(s, i + 1, l - i)
        End If
        If i = l Then
            s = Mid(s, 1, i - 1)
        End If
    End If
Next i
Text1.Text = s
If Len(Text1.Text) > 0 And Len(text2.Text) > 0 Then Command3.Enabled = True Else Command3.Enabled = False
End Sub

Private Sub Text2_Change()
Dim s As String
s = text2.Text
Dim l, i As Integer
l = Len(s)
For i = 1 To l
    If Mid(s, i, 1) <> "1" And Mid(s, i, 1) <> "0" And Mid(s, i, 1) <> "2" And Mid(s, i, 1) <> "3" And Mid(s, i, 1) <> "4" And Mid(s, i, 1) <> "5" And Mid(s, i, 1) <> "6" And Mid(s, i, 1) <> "7" And Mid(s, i, 1) <> "8" And Mid(s, i, 1) <> "9" Then
        If i <> 1 And i <> l Then
            s = Mid(s, 1, i - 1) + Mid(s, i + 1, l - i)
            l = l - 1
        End If
        If i = 1 Then
            s = Mid(s, i + 1, l - i)
        End If
        If i = l Then
            s = Mid(s, 1, i - 1)
        End If
    End If
Next i
text2.Text = s
If Len(Text1.Text) > 0 And Len(text2.Text) > 0 Then Command3.Enabled = True Else Command3.Enabled = False
End Sub

Private Sub ver_vvod_Click()
Dim Scetcic As Integer

Dim sVvod As String
If ig <= iGorRazm Then
sVvod = Text4.Text
Text4.Text = ""
Scetcic = 1
sVvod = sVvod + " "
For j = 1 To 11
    Ver(ig, j) = 0
Next j
For j = 1 To Len(sVvod)
        If Mid(sVvod, j, 1) <> " " Then Ver(ig, Scetcic) = Ver(ig, Scetcic) * 10
        If Mid(sVvod, j, 1) <> "1" And Mid(sVvod, j, 1) <> "2" And Mid(sVvod, j, 1) <> "3" And Mid(sVvod, j, 1) <> "4" And Mid(sVvod, j, 1) <> "5" And Mid(sVvod, j, 1) <> "6" And Mid(sVvod, j, 1) <> "7" And Mid(sVvod, j, 1) <> "8" And Mid(sVvod, j, 1) <> "9" And Mid(sVvod, j, 1) <> "0" And Mid(sVvod, j, 1) <> " " Then Ver(ig, Scetcic) = Ver(ig, Scetcic) / 10
        If Mid(sVvod, j, 1) = "1" Then Ver(ig, Scetcic) = Ver(ig, Scetcic) + 1
        If Mid(sVvod, j, 1) = "2" Then Ver(ig, Scetcic) = Ver(ig, Scetcic) + 2
        If Mid(sVvod, j, 1) = "3" Then Ver(ig, Scetcic) = Ver(ig, Scetcic) + 3
        If Mid(sVvod, j, 1) = "4" Then Ver(ig, Scetcic) = Ver(ig, Scetcic) + 4
        If Mid(sVvod, j, 1) = "5" Then Ver(ig, Scetcic) = Ver(ig, Scetcic) + 5
        If Mid(sVvod, j, 1) = "6" Then Ver(ig, Scetcic) = Ver(ig, Scetcic) + 6
        If Mid(sVvod, j, 1) = "7" Then Ver(ig, Scetcic) = Ver(ig, Scetcic) + 7
        If Mid(sVvod, j, 1) = "8" Then Ver(ig, Scetcic) = Ver(ig, Scetcic) + 8
        If Mid(sVvod, j, 1) = "9" Then Ver(ig, Scetcic) = Ver(ig, Scetcic) + 9
        If Mid(sVvod, j, 1) = " " Then
            Ver(ig, 11) = Ver(ig, 11) + 1
            Scetcic = Scetcic + 1
        End If
        If Scetcic = 11 Then j = Len(sVvod)
    Next j
  
    Dim iY, k, t As Integer
    
    

    Dim kSumm As Integer
    kSumm = 0
    For k = 1 To Ver(ig, 11)
        kSumm = Ver(ig, k) + kSumm + 1
    Next k
If kSumm - 1 > iVerRazm Then
ig = ig - 1
Else

k = 1
    For iY = 10 - Ver(ig, 11) + 1 To 10
    
       t = Ver(ig, k)
               Call Cifra(3360 + (ig - 1) * delX, 2880 - 11 * delY + iY * delY, t)
            k = k + 1
 
    Next iY
End If


ig = ig + 1
End If
If iv > iVerRazm And ig > iGorRazm Then Command4.Enabled = True
End Sub
