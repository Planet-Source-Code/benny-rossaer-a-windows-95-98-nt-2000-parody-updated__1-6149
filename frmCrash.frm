VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.1#0"; "COMDLG32.OCX"
Begin VB.Form frmCrash 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Crash"
   ClientHeight    =   2070
   ClientLeft      =   1485
   ClientTop       =   5790
   ClientWidth     =   5520
   Icon            =   "frmCrash.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2070
   ScaleWidth      =   5520
   ShowInTaskbar   =   0   'False
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   120
      Top             =   1560
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   327680
   End
   Begin VB.PictureBox Picture2 
      BorderStyle     =   0  'None
      Height          =   615
      Left            =   120
      Picture         =   "frmCrash.frx":000C
      ScaleHeight     =   615
      ScaleWidth      =   615
      TabIndex        =   6
      Top             =   240
      Width           =   615
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Browse"
      Height          =   375
      Left            =   3720
      TabIndex        =   5
      Top             =   1440
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2280
      TabIndex        =   4
      Top             =   1440
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   840
      TabIndex        =   3
      Top             =   1440
      Width           =   1335
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   840
      TabIndex        =   1
      Top             =   960
      Width           =   4455
   End
   Begin VB.Label Label2 
      Caption         =   "Open:"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   960
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   $"frmCrash.frx":041C
      Height          =   855
      Left            =   840
      TabIndex        =   0
      Top             =   240
      Width           =   4575
   End
End
Attribute VB_Name = "frmCrash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
MsgBox "Error - Multitasking attempted: system confused.", vbCritical, "WinSux 2000"
frmCrash.Hide


End Sub

Private Sub Command2_Click()
frmCrash.Hide

End Sub

Private Sub Command3_Click()
' show open file dialog
CommonDialog1.ShowOpen
' enter selected filename in combobox
Combo1.Text = CommonDialog1.filename

End Sub
