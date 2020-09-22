VERSION 5.00
Begin VB.Form MyComputer 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "My Low-Budget Totally Fucked Up Computer Thing"
   ClientHeight    =   5265
   ClientLeft      =   3600
   ClientTop       =   2805
   ClientWidth     =   3690
   ClipControls    =   0   'False
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5265
   ScaleWidth      =   3690
   ShowInTaskbar   =   0   'False
   Begin VB.PictureBox Picture1 
      Height          =   5295
      Left            =   0
      Picture         =   "MyComputer.frx":0000
      ScaleHeight     =   5235
      ScaleWidth      =   3675
      TabIndex        =   0
      Top             =   0
      Width           =   3735
   End
   Begin VB.Menu file 
      Caption         =   "File"
      Begin VB.Menu new 
         Caption         =   "&Make new file..."
      End
      Begin VB.Menu exit 
         Caption         =   "&Exit My Low-Budget Totally Fucked Up Computer Thing"
      End
   End
   Begin VB.Menu view 
      Caption         =   "View"
      Begin VB.Menu viewit 
         Caption         =   "...this picture without Bill's head"
      End
   End
   Begin VB.Menu help 
      Caption         =   "Help"
      Begin VB.Menu escape 
         Caption         =   "...me escape..."
      End
   End
End
Attribute VB_Name = "MyComputer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub escape_Click()
Form1.Picture3.Visible = True
Form1.Label4.Visible = True

End Sub

Private Sub exit_Click()
Form1.Picture4.Visible = False
MyComputer.Hide

End Sub

Private Sub Form_Load()
Form1.Picture4.Picture = LoadPicture(App.Path & "\mylow.jpg")
Form1.Picture4.Visible = True
End Sub

Private Sub Form_Unload(Cancel As Integer)
Form1.Picture4.Visible = False

End Sub

Private Sub new_Click()
MsgBox "Can't make new file: the MicroShit User Shit License isn't found on your system.  You have to buy this license before you can actually do something useful with your computer.  Please call MicroShit Tech Support for more information on how to order the MicroShit User Shit License.", vbCritical, "License not found, buy a new one!"

End Sub

Private Sub viewit_Click()
MsgBox "MicroShit General License isn't found on your system.  Call MicroShit Technical Support line to order this license. You can't view this picture properly without this license. We are truly sorry.", vbCritical, "License not found"

End Sub
