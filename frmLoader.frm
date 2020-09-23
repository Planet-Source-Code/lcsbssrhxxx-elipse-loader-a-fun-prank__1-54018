VERSION 5.00
Begin VB.Form frmLoader 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Loader"
   ClientHeight    =   405
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   885
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   405
   ScaleWidth      =   885
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrLoad 
      Interval        =   1
      Left            =   0
      Top             =   0
   End
End
Attribute VB_Name = "frmLoader"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Type POINTAPI
    x As Long
    y As Long
End Type
Private Declare Function GetWindowDC Lib "user32" (ByVal hwnd As Long) As Long
Private Declare Function Ellipse Lib "gdi32" (ByVal hdc As Long, ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long) As Long
Private Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
Private Sub tmrLoad_Timer()
    Dim Position As POINTAPI
    GetCursorPos Position
    Ellipse GetWindowDC(0), Position.x - Int(Rnd * 20), Position.y - Int(Rnd * 20), Position.x + Int(Rnd * 20), Position.y + Int(Rnd * 20)
End Sub

