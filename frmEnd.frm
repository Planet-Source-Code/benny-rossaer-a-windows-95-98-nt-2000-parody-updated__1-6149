VERSION 5.00
Begin VB.Form frmEnd 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Quit WinSux"
   ClientHeight    =   2010
   ClientLeft      =   4350
   ClientTop       =   3270
   ClientWidth     =   4185
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   2010
   ScaleWidth      =   4185
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2520
      TabIndex        =   5
      Top             =   1440
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   600
      TabIndex        =   4
      Top             =   1440
      Width           =   1215
   End
   Begin VB.OptionButton Option3 
      Caption         =   "Restart my life in MS-DOS mode"
      Height          =   255
      Left            =   480
      TabIndex        =   3
      Top             =   960
      Width           =   3975
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Please forgive me!"
      Height          =   255
      Left            =   480
      TabIndex        =   2
      Top             =   720
      Width           =   3975
   End
   Begin VB.OptionButton Option1 
      Caption         =   "I... must... escape..."
      Height          =   255
      Left            =   480
      TabIndex        =   1
      Top             =   480
      Width           =   3855
   End
   Begin VB.Label Label1 
      Caption         =   "What do you want to do today?"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4455
   End
End
Attribute VB_Name = "frmEnd"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

If Option1.Value = True Then

    a = MsgBox("Are you sure you want to quit WinSux2000 ?", vbYesNo, "WinSux 2000")
    If a = 6 Then b = MsgBox("Are you really sure?", vbYesNo, "WinSux 2000")
    
    If b = 6 Then c = MsgBox("Are you really, really sure?", vbYesNo, "WinSux 2000")
    
    
    If c = 6 Then
        End
    Else
        frmEnd.Hide
    End If
    
    
End If

If Option2.Value = True Then frmEnd.Hide

If Option3.Value = True Then
  MsgBox "Operating system overwritten - Please reinstall all your software. We are terribly sorry.", vbCritical, "ERROR!"
  
  frmEnd.Hide
End If


End Sub

Private Sub Command2_Click()
frmEnd.Hide

End Sub

