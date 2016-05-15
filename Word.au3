#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseUpx=y
#AutoIt3Wrapper_Run_Au3Stripper=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs ----------------------------------------------------------------------------

 AutoIt Version : 3.3.14.2
 Auteur:         Wizzar

 Fonction du Script :
	Modèle de Script AutoIt.

#ce ----------------------------------------------------------------------------

; Début du script - Ajouter votre code ci-dessous.
#pragma compile(Icon, D:\Programmes\AutoIt3\Icons\au3.ico)
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

AutoItSetOption('MouseCoordMode', 1)
$fenetre = InputBox("  ", "Comment s'appelle votre document ?") & " - Word"

Example()

Func Example()

WinWaitActive($fenetre, "", 2)
	if WinExists($fenetre) Then
		WinActivate($fenetre)
		WinMove($fenetre, "", "", "", 1600, 900)
	Else
		MsgBox( 0, "", "Votre document n'existe pas !")
		Exit
	EndIf
EndFunc


$Form1 = GUICreate("", 147, 118, 192, 124)
$Button1 = GUICtrlCreateButton("Numéro de Page", 8, 16, 130, 25)
$Button2 = GUICtrlCreateButton("Page de Garde", 8, 48, 130, 25)
$Button3 = GUICtrlCreateButton("Fermer", 8, 80, 131, 25)
GUISetState(@SW_SHOW)

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button1
			WinActivate($fenetre)
			MouseClick("primary", 165, 48, 1, 0)
			Sleep(500)
			MouseClick("primary", 1088, 91, 1, 0)
			Sleep(500)
			MouseClick("primary", 1132, 165, 1, 0)
			Sleep(500)
			MouseClick("primary", 1385, 213, 1, 0)
			Sleep(500)
			MouseClick("primary", 1209, 82, 1, 0)
			WinActivate($Form1)
		Case $Button2
			WinActivate($fenetre)
			MouseClick("primary", 165, 48, 1, 0)
			Sleep(500)
			MouseClick("primary", 25, 91, 1, 0)
			Sleep(500)
			MouseClick("primary", 202, 602, 1,0)
			WinActivate($Form1)
		Case $Button3
			Exit


	EndSwitch
WEnd

