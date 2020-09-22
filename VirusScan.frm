VERSION 5.00
Begin VB.Form VirusScan 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "WinSux 2000 ActiveSuck VirusScan"
   ClientHeight    =   4515
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4560
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "VirusScan.frx":0000
   ScaleHeight     =   4515
   ScaleWidth      =   4560
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   2500
      Left            =   4080
      Top             =   1200
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   3500
      Left            =   3600
      Top             =   1200
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Click here to start WinSux VirusScan LiveUpdate!"
      Height          =   375
      Left            =   240
      TabIndex        =   9
      Top             =   4080
      Width           =   4095
   End
   Begin VB.TextBox Text1 
      Height          =   1335
      Left            =   240
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   8
      Top             =   2640
      Width           =   4095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   3240
      TabIndex        =   6
      Top             =   1680
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Options"
      Height          =   375
      Left            =   1800
      TabIndex        =   5
      Top             =   1680
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Scan"
      Height          =   375
      Left            =   240
      TabIndex        =   4
      Top             =   1680
      Width           =   1215
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   1560
      TabIndex        =   2
      Top             =   1200
      Width           =   1575
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "The results will be displayed in this text box:"
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
      TabIndex        =   7
      Top             =   2280
      Width           =   4095
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Drive to scan:"
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
      TabIndex        =   3
      Top             =   1200
      Width           =   1335
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   $"VirusScan.frx":137C
      Height          =   615
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   4335
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Welcome to WinSux VirusScan 2000!"
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
      TabIndex        =   0
      Top             =   120
      Width           =   4335
   End
End
Attribute VB_Name = "VirusScan"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Command1.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False

Text1.Text = "Scanning internal memory, please wait "
Timer1.Enabled = True

End Sub

Private Sub Command2_Click()
MsgBox "Can't show options dialog.  Please buy some more hardware.", vbCritical, "error - inadequate money spend on hardware"

End Sub

Private Sub Command3_Click()

Form1.Picture4.Visible = False


VirusScan.Hide


End Sub

Private Sub Form_Load()
Form1.Picture4.Picture = LoadPicture(App.Path & "\scan.jpg")

Form1.Picture4.Visible = True

End Sub

Private Sub Form_Unload(Cancel As Integer)
Form1.Picture4.Visible = False

End Sub

Private Sub Timer1_Timer()
Text1.Text = Text1.Text & "VIRUS FOUND!" & vbCrLf

Timer1.Enabled = False
Timer2.Enabled = True


End Sub

Private Sub Timer2_Timer()


Text1.Text = Text1.Text & "VIRUS FOUND IN INTERNAL MEMORY!"

Text1.Text = Text1.Text & vbCrLf & vbCrLf & "VIRUS NAME: 'Windows'" & vbCrLf & "VIRUS VERSION: any"
Text1.Text = Text1.Text & vbCrLf & vbCrLf & "An extremely harmful virus has been found in your internal memory.  This virus will have the following negative effect on your PC:"
Text1.Text = Text1.Text & vbCrLf & "- Hard disk space will shrink rapidely, on a daily basis"
Text1.Text = Text1.Text & vbCrLf & "- Your computer will operate at only 25% of it's true speed"
Text1.Text = Text1.Text & vbCrLf & "- Your programs will crash 500% more than usually"
Text1.Text = Text1.Text & vbCrLf & vbCrLf & "We advise that you instantly destroy your PC by a) throwing a sharp object, such as a knife, in your monitor, and b) lifting your computer's case and throwing it out of the window.  "

Command3.Enabled = True
Command3.Caption = "Close"

Timer2.Enabled = False

End Sub
