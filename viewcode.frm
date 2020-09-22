VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "SHDOCVW.DLL"
Begin VB.Form viewcode 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "WinSux 2000 source code"
   ClientHeight    =   4545
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7740
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4545
   ScaleWidth      =   7740
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   3495
      Left            =   240
      TabIndex        =   0
      Top             =   840
      Width           =   7335
      ExtentX         =   12938
      ExtentY         =   6165
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "res://C:\WINNT\System32\shdoclc.dll/offcancl.htm#http:///"
   End
   Begin VB.Label Label1 
      Caption         =   $"viewcode.frx":0000
      Height          =   615
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   4935
   End
End
Attribute VB_Name = "viewcode"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
WebBrowser1.Navigate App.Path & "\mscode.txt"

End Sub
