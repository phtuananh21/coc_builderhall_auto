; #FUNCTION# ====================================================================================================================
; Name ..........: MBR Functions
; Description ...: This file Includes several files in the current script.
; Syntax ........: #include
; Parameters ....: None
; Return values .: None
; Author ........:
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2025
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================
;#include-once
#include "functions\Other\Base64.au3"
#include "functions\Other\SetLog.au3"
#include "functions\Other\StopWatch.au3"
;#include "functions\Other\Synchronization.au3" ; now included in LaunchConsole.au3
#include "functions\Other\OnAutoItErrorRegisterBot.au3"
#Include "functions\Other\Json.au3"


#include "functions\Attack\AttackReport.au3"
#include "functions\Attack\AttackStats.au3"
#include "functions\Attack\BuildingSide.au3"
#include "functions\Attack\GoldElixirChangeThSnipes.au3"
#include "functions\Attack\GoldElixirChangeEBO.au3"
#include "functions\Attack\PrepareAttack.au3"
#include "functions\Attack\ReturnHome.au3"
#include "functions\Attack\Unbreakable.au3"
#include "functions\Attack\GetAttackBar.au3"

; AttackCSV Include Block Removed

; RedArea Include Block Removed

; Troops Include Block Removed

; SmartZap Include Block Removed

; Builder Base Attack
#include "functions\Attack\BuilderBase\PrepareAttackBB.au3"
#include "functions\Attack\BuilderBase\AttackBB.au3"
#include "functions\Attack\BuilderBase\GetAttackBarBB.au3"

#Region CreateArmy / Train
; CreateArmy Include Block Removed
#EndRegion CreateArmy / Train

#include "functions\Image Search\checkDeadBase.au3"
#include "functions\Image Search\CheckTombs.au3"
#include "functions\Image Search\imglocAuxiliary.au3"
#include "functions\Image Search\imglocCheckWall.au3"
#include "functions\Image Search\imglocTHSearch.au3"
#include "functions\Image Search\QuickMIS.au3"
#include "functions\Image Search\IsWindowOpen.au3"

#include "functions\Main Screen\checkMainScreen.au3"
#include "functions\Main Screen\checkObstacles.au3"
#include "functions\Main Screen\GetDPI_Ratio.au3"
#include "functions\Main Screen\isGemOpen.au3"
#include "functions\Main Screen\isNoUpgradeLoot.au3"
#include "functions\Main Screen\isProblemAffect.au3"
#include "functions\Main Screen\RemoveGhostTrayIcons.au3"
#include "functions\Main Screen\waitMainScreen.au3"
#include "functions\Main Screen\isOnBuilderBase.au3"

; Android support for MEmu, Nox, BlueStacks
#include "functions\Android\AndroidMenuShortcuts.au3"
#include "functions\Android\Close_OpenCoC.au3"
#include "functions\Android\ZoomOut.au3"
#include "functions\Android\CheckAndroidTimeLag.au3"
#include "functions\Android\CheckAndroidPageError.au3"
#include "functions\Android\CheckAndroidRebootCondition.au3"
#include "functions\Android\AndroidBlueStacks5.au3"
#include "functions\Android\AndroidMEmu.au3"
#include "functions\Android\AndroidNox.au3"
#include "functions\Android\getBSPos.au3"
#include "functions\Android\UniversalCloseWaitOpenCoC.au3"
#include "functions\Android\AndroidEmbed.au3"

#include "functions\Other\WerFaultClose.au3"
#include "functions\Other\TcpTable.au3"
#include "functions\Other\_NumberFormat.au3"
#include "functions\Other\_PadStringCenter.au3"
#include "functions\Other\_ProcessSuspendResume2.au3"
#include "functions\Other\_Sleep.au3"
#include "functions\Other\_SleepStatus.au3"
#include "functions\Other\_StatusUpdateTime.au3"
#include "functions\Other\_TicksToDay.au3"
#include "functions\Other\Click.au3"
#include "functions\Other\ClickOkay.au3"
#include "functions\Other\ClickRemove.au3"
#include "functions\Other\CreateLogFile.au3"
#include "functions\Other\SaveDebugImage.au3"
#include "functions\Other\ExtendedErrorInfo.au3"
#include "functions\Other\FindPos.au3"
#include "functions\Other\StringSize.au3"
#include "functions\Other\Tab.au3"
#include "functions\Other\Time.au3"
#include "functions\Other\TogglePause.au3"
#include "functions\Other\CheckPrerequisites.au3"
#include "functions\Other\WindowsArrange.au3"
#include "functions\Other\MakeScreenshot.au3"
#include "functions\Other\ClickDrag.au3"
#include "functions\Other\TestLanguage.au3"
#include "functions\Other\DeleteFiles.au3"
#include "functions\Other\UpdateStats.au3"
#include "functions\Other\CheckVersion.au3"
#include "functions\Other\CloseRunningBot.au3"
#include "functions\Other\RestartBot.au3"
#include "functions\Other\WindowSystemMenu.au3"
#include "functions\Other\SetWakeUpTime.au3"
#include "functions\Other\ScriptingDictionaryTools.au3"

#include "functions\Other\IsPage.au3"
#include "functions\Other\MoveMouseOutBS.au3"
#include "functions\Other\KillProcess.au3"
#include "functions\Other\LaunchConsole.au3"
#include "functions\Other\ADB.au3"
#include "functions\Other\FindAButton.au3"

#include "functions\Pixels\_CaptureRegion.au3"
#include "functions\Pixels\_ColorCheck.au3"
#include "functions\Pixels\_CheckPixel.au3"
#include "functions\Pixels\GetListPixel.au3"
#include "functions\Pixels\_GetPixelColor.au3"
#include "functions\Pixels\_PixelSearch.au3"
#include "functions\Pixels\_MultiPixelSearch.au3"
#include "functions\Pixels\isInsideDiamond.au3"

#include "functions\Read Text\getBuilderCount.au3"
#include "functions\Read Text\BuildingInfo.au3"
#include "functions\Read Text\getOcr.au3"
#include "functions\Read Text\getShieldInfo.au3"

#include "functions\Search\multiSearch.au3"
#include "functions\Search\WeakBase.au3"
#include "functions\Search\CompareResources.au3"
#include "functions\Search\GetResources.au3"
#include "functions\Search\PrepareSearch.au3"
#include "functions\Search\VillageSearch.au3"
#include "functions\Search\CheckZoomOut.au3"
#include "functions\Search\FindTownHall.au3"
#include "functions\Search\IsSearchModeActive.au3"
#include "functions\Search\IsSearchAttackEnabled.au3"
#include "functions\Search\WaitForClouds.au3"

; Village Include Block Removed

#include "functions\Village\BuilderBase\Collect.au3"
#include "functions\Village\BuilderBase\StartClockTowerBoost.au3"
#include "functions\Village\BuilderBase\BuilderBaseReport.au3"
#include "functions\Village\BuilderBase\SuggestedUpgrades.au3"
#include "functions\Village\BuilderBase\CleanBBYard.au3"
#include "functions\Village\BuilderBase\StarLaboratory.au3"
#include "functions\Village\BuilderBase\UpgradeBattleMachine.au3"
#include "functions\Village\BuilderBase\LocateBuilderHall.au3"
#include "functions\Village\BuilderBase\UpgradeBattleCopter.au3"
#include "functions\Village\BuilderBase\BOBBuildingUpgrades.au3"

#include "functions\Other\Api.au3"
#include "functions\Other\ApiClient.au3"
#include "functions\Other\ForumAuthentication.au3"

; moved to the end to avoid any global declare issues
#include "functions\Config\profileFunctions.au3"
#include "functions\Config\_Ini_Table.au3"
#include "functions\Config\applyConfig.au3"
#include "functions\Config\readConfig.au3"
#include "functions\Config\saveConfig.au3"
