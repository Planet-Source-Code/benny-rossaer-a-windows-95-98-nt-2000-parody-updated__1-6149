VERSION 5.00
Begin VB.Form frmWelcome 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Welcome to WinSux!"
   ClientHeight    =   3510
   ClientLeft      =   3225
   ClientTop       =   2820
   ClientWidth     =   4950
   ControlBox      =   0   'False
   LinkTopic       =   "Form2"
   Picture         =   "frmWelcome.frx":0000
   ScaleHeight     =   3510
   ScaleWidth      =   4950
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   1500
      Left            =   1320
      Top             =   3000
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   1500
      Left            =   720
      Top             =   3000
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   120
      Top             =   3000
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start WinSux"
      Height          =   375
      Left            =   1920
      TabIndex        =   9
      Top             =   3000
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   1320
      TabIndex        =   6
      Top             =   2520
      Width           =   3135
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1320
      TabIndex        =   5
      Top             =   2160
      Width           =   3135
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "Password:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   8
      Top             =   2520
      Width           =   975
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "User Name:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Please enter your user name and password to start your WinSux session."
      Height          =   495
      Left            =   360
      TabIndex        =   4
      Top             =   1560
      Width           =   4095
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Works slower, sucks harder!"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   600
      TabIndex        =   3
      Top             =   720
      Width           =   3735
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "MicroShit WinSux 2000 is the most advanced computer operating system curently available for the home market. "
      Height          =   495
      Left            =   360
      TabIndex        =   2
      Top             =   960
      Width           =   4455
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "WinSux 2000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1800
      TabIndex        =   1
      Top             =   120
      Width           =   3255
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Welcome to"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   1695
   End
End
Attribute VB_Name = "frmWelcome"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Label5.FontBold = True
Label5.FontItalic = True
Label5.Caption = "Logging on to WinSux..."
Timer1.Enabled = True
Timer1.Interval = 2000



End Sub

Private Sub Timer1_Timer()

Label5.Caption = "Checking user name and password..."
Timer2.Enabled = True

End Sub

Private Sub Timer2_Timer()
Label5.Caption = "Password incorrect, logging on anonymously..."
Timer3.Enabled = True

End Sub

Private Sub Timer3_Timer()
frmWelcome.Hide
Form1.Show

End Sub
