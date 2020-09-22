VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "SHDOCVW.DLL"
Begin VB.Form exploder 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "MicroShit's Homepage - MicroShit Internet Exploder"
   ClientHeight    =   6825
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9495
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6825
   ScaleWidth      =   9495
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   6855
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9495
      ExtentX         =   16748
      ExtentY         =   12091
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "res://C:\WINNT\system32\shdoclc.dll/offcancl.htm#http:///"
   End
End
Attribute VB_Name = "exploder"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
WebBrowser1.Navigate App.Path & "\mshit.htm"
Form1.Picture4.Picture = LoadPicture(App.Path & "\browser.jpg")
Form1.Picture4.Visible = True
End Sub

Private Sub Form_Terminate()
Form1.Picture4.Visible = False

End Sub

Private Sub Form_Unload(Cancel As Integer)
Form1.Picture4.Visible = False
End Sub
