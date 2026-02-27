; #FUNCTION# ====================================================================================================================
; Name ..........: MBR GUI Design
; Description ...: This file creates the "Log" tab
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: GKevinOD (2014)
; Modified ......: DkEd, Hervidero (2015), CodeSlinger69 (2017)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2025
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================
#include-once

Global $g_hGUI_LOG = 0
Global $g_hTxtLog = 0, $g_hDivider = 0, $g_hTxtAtkLog = 0
Global $g_hCmbLogDividerOption, $g_hBtnAtkLogClear, $g_hBtnAtkLogCopyClipboard

Func CreateLogTab($hWHndLogsOnly = False)
	Local $i
	Local $x = 0, $y = 0

	Local $activeHWnD = WinGetHandle("") ; RichEdit Controls tamper with active window

	If $hWHndLogsOnly Then
		; only create so logs are available when switching to normal mode
		$g_hTxtLog = _GUICtrlRichEdit_Create($hWHndLogsOnly, "", 0, 0, 20, 20, BitOR($ES_MULTILINE, $ES_READONLY, $WS_VSCROLL, $WS_HSCROLL, $ES_UPPERCASE, $ES_AUTOHSCROLL, $ES_AUTOVSCROLL, $ES_NUMBER, 0x200), $WS_EX_STATICEDGE)
		WinSetState($g_hTxtLog, "", @SW_MINIMIZE)
		$g_hTxtAtkLog = _GUICtrlRichEdit_Create($hWHndLogsOnly, "", 0, 0, 20, 20, BitOR($ES_MULTILINE, $ES_READONLY, $WS_VSCROLL, 8908), $WS_EX_STATICEDGE) ; 8909 = $ES_NUMBER, $ES_AUTOHSCROLL, $ES_AUTOVSCROLL, $ES_MULTILINE, $ES_UPPERCASE, 0x200
		WinSetState($g_hTxtAtkLog, "", @SW_MINIMIZE)
		WinActivate($activeHWnD) ; restore current active window
		Return
	EndIf

	$g_hGUI_LOG = _GUICreate("", $g_iSizeWGrpTab1, $g_iSizeHGrpTab1, $_GUI_CHILD_LEFT, $_GUI_CHILD_TOP, BitOR($WS_CHILD, 0), -1, $g_hFrmBotEx)
	;GUISetBkColor($COLOR_WHITE, $g_hGUI_LOG)

	If IsHWnd($g_hTxtLog) Then
		SetDebugLog("Re-use existing bot log control")
		_WinAPI_SetParent($g_hTxtLog, $g_hGUI_LOG)
		_WinAPI_SetWindowLong($g_hTxtLog, $GWL_HWNDPARENT, $g_hGUI_LOG)
		WinSetState($g_hTxtLog, "", @SW_RESTORE)
	Else
		; Main Log will now stretch across the entire tab height
		$g_hTxtLog = _GUICtrlRichEdit_Create($g_hGUI_LOG, "", 0, 0, $g_iSizeWGrpTab1, $g_iSizeHGrpTab1, BitOR($ES_MULTILINE, $ES_READONLY, $WS_VSCROLL, $WS_HSCROLL, $ES_UPPERCASE, $ES_AUTOHSCROLL, $ES_AUTOVSCROLL, $ES_NUMBER, 0x200), $WS_EX_STATICEDGE)
	EndIf

	WinActivate($activeHWnD) ; restore current active window

EndFunc   ;==>CreateLogTab
