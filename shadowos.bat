@echo off
title Starting ShadowOS...
setlocal enabledelayedexpansion
reg query "HKCU\Software\ShadowOS" > nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=2*" %%a in ('reg query "HKCU\Software\ShadowOS" /v firstrun ^| find "firstrun"') do (
        set "firstrun_value=%%b"
    )
    if !firstrun_value! equ 1 (
        goto app.shadow.home
    )
)
:app.shadow.setup
cls
title Welcome to ShadowOS Setup.
echo Hi there. Thanks for deciding to use ShadowOS 4.1s
echo.
echo What do we need to do to continue with Setup?
echo 1. Show you the TOS.
pause
cls
title ShadowOS's TOS.
echo If you want to showcase ShadowOS in a YouTube video, feel free, while giving credits to me.
echo Do not sell ShadowOS, it is open-source software.
echo If you bought ShadowOS, you have been scammed, please refund your purchase.
echo If you want to fork ShadowOS, go ahead, just give me credits.
echo GitHub Project: https://github.com/ShadowElixir/ShadowOS
echo My GitHub: https://github.com/ShadowElixir
echo.
echo If you do not agree with the TOS, please close ShadowOS now. By pressing any key from this point, you agree to the TOS shown above.
pause
reg add "HKCU\Software\ShadowOS" /v firstrun /t REG_SZ /d "1" /f
goto app.shadow.home
:app.shadow.home
cls
title %username%'s HOME.
echo.
echo Press 1 and then enter to open System Settings.
echo Press 2 and then enter to open Message Board.
echo Press 3 and then enter to open File Manager.
echo Press 4 and then enter to check for updates.
echo Type 'exit' and then enter to quit ShadowOS.
set /p function.shadow.home.option=
if %function.shadow.home.option% == 1 goto app.shadow.settings
if %function.shadow.home.option% == 2 goto app.shadow.messages
if %function.shadow.home.option% == 3 goto app.shadow.filemanager
if %function.shadow.home.option% == 4 goto app.shadow.update
if %function.shadow.settings.option% == exit exit
:app.shadow.settings
cls
title ShadowOS Settings
echo Welcome to Settings.
echo You're currently running ShadowOS 4.1s.
echo.
echo Press 1 and then enter to enter setup.
echo Press 2 and then enter for the issue tracker.
echo Press 3 and then enter to return to the HOME Menu.
set /p function.shadow.settings.option=
if %function.shadow.settings.option% == 1 goto app.shadow.setup
if %function.shadow.settings.option% == 2 goto app.shadow.issues
if %function.shadow.settings.option% == 3 goto app.shadow.home
:app.shadow.issues
cls
title Issue Tracker.
echo Issue Tracker
echo Press enter to launch the issue tracker.
pause
echo Launching the issue tracker. 
start "" https://github.com/ShadowElixir/ShadowOS/issues
goto app.shadow.home
:app.shadow.messages
echo ShadowOS Message Board:
echo.
start "" https://github.com/ShadowElixir/ShadowOS/discussions
pause
goto app.shadow.home
:app.shadow.filemanager
cls
title File Manager
echo Type the full path of the directory you would like to view (including the drive letter).
set /p functiondir=
cd %functiondir%
goto app.shadow.foldercontents
:app.shadow.foldercontents
cls
title File Manager
echo Contents of %functiondir%.
dir
cd ../
echo.
echo Type "home" to go back to the home Menu.
echo Type "changedir" to change the directory you would like to view.
echo Type "open" to open a file.
echo Type "music" to initiate the ShadowOS music player.
echo Type "folder" to make a directory.
echo Type "file" to make a file.
set /p fileoption=
if %fileoption% == home goto app.shadow.home
if %fileoption% == changedir goto app.shadow.filemanager
if %fileoption% == open goto app.shadow.openapp
if %fileoption% == music goto app.shadow.openmusic
if %fileoption% == folder goto app.shadow.mkdir
if %fileoption% == file goto app.shadow.mkfile
:app.shadow.openapp
cls
title File Manager
cd %functiondir%
echo Please type the name of the file (with the extension) in %functiondir%.
set /p functionopenapp=
start "" %functionopenapp%
goto app.shadow.filemanager
:app.shadow.openmusic
cls
title Music Player
cd %functiondir%
echo Please type the name of the music file (with the extension) in %functiondir%.
set /p functionopenmusic=
set "vbs=%temp%\%~n0.vbs"
echo Set Sound = CreateObject("WMPlayer.OCX.7"^) >"%vbs%"
echo Sound.URL = "%functionopenmusic%" >>"%vbs%"
echo Sound.Controls.play >>"%vbs%"
echo do while Sound.currentmedia.duration = 0 >>"%vbs%"
echo wscript.sleep 100 >>"%vbs%"
echo loop >>"%vbs%"
echo wscript.sleep (int (Sound.currentmedia.duration^)+1^)*1000 >>"%vbs%"
start /min "" "%vbs%"
pause
taskkill /im "wscript.exe" /f
goto app.shadow.foldercontents
:app.shadow.mkdir
cls
title File Manager
cd %functiondir%
echo Please type the name of the directory you would like to make in %functiondir%.
set /p functiondir2=
mkdir %functiondir2%
echo Created!
pause
goto app.shadow.filemanager
:app.shadow.mkfile
cls
title File Manager
cd %functiondir%
echo Please type the name of the file you would like to make in %functiondir%.
set /p functionfile=
powershell "New-Item %functiondir%/%functionfile% -erroraction 'silentlycontinue'"
echo File "%functionfile%" created!
pause
goto app.shadow.filemanager
:app.shadow.update
cls
title ShadowOS Update
setlocal

set "psScript=%temp%\update-ShadowOS.ps1"

(
    echo.function Update-ShadowOS {
    echo.    if (^$global:canConnectToGitHub -eq $false^) {
    echo.        return
    echo.    }
    echo.
    echo.    try {
    echo.        ^$updateNeeded = $false
    echo.        ^$currentVersion = 'shadowos-4.1s'
    echo.        ^$gitHubApiUrl = "https://api.github.com/repos/ShadowElixir/ShadowOS/releases/latest"
    echo.        ^$latestReleaseInfo = Invoke-RestMethod -Uri ^$gitHubApiUrl
    echo.        ^$latestVersion = ^$latestReleaseInfo.tag_name.Trim('v'^)
    echo.        if (^$currentVersion -lt ^$latestVersion^) {
    echo.            ^$updateNeeded = $true
    echo.        }
    echo.
    echo.        if (^$updateNeeded^) {
    echo.            Write-Output "Update available, latest version is ^$latestVersion"
    echo.        }
    echo.    } catch {
    echo.        Write-Error "Failed to check for updates ShadowOS. Error: ^$_"
    echo.    }
    echo.}
    echo.
    echo.Update-ShadowOS
) > "%psScript%"

powershell -ExecutionPolicy Bypass -File "%psScript%"

endlocal
pause
goto app.shadow.home
