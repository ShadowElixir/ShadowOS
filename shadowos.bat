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
echo Hi there. Thanks for deciding to use ShadowOS 3s
echo.
echo What do we need to do to continue with Setup?
echo 1. Show you the TOS.
pause
cls
title ShadowOS's TOS.
powershell "irm https://raw.githubusercontent.com/ShadowElixir/ShadowOS/main/UserServices/Moose/tos.txt"
echo.
echo If you do not agree with the TOS, please close ShadowOS now. By pressing any key from this point, you agree to the TOS shown above.
pause
reg add "HKCU\Software\ShadowOS" /v firstrun /t REG_SZ /d "1" /f
goto app.shadow.home
:app.shadow.home
cls
title %username%'s HOME.
powershell "irm https://raw.githubusercontent.com/ShadowElixir/ShadowOS/main/UserServices/pcOS/messageboard-home.txt"
powershell "irm https://raw.githubusercontent.com/ShadowElixir/ShadowOS/main/UserServices/pcOS/home-ad.txt"
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
echo You're currently running ShadowOS 3.4s.
echo.
echo Press 1 and then enter to enter setup.
echo Press 2 and then enter for Personalisation.
echo Press 3 and then enter for the issue tracker.
echo Press 4 and then enter to return to the HOME Menu.
set /p function.shadow.settings.option=
if %function.shadow.settings.option% == 1 goto app.shadow.setup
if %function.shadow.settings.option% == 2 goto app.shadow.persetup
if %function.shadow.settings.option% == 3 goto app.shadow.issues
if %function.shadow.settings.option% == 4 goto app.shadow.home
:app.shadow.persetup
cls
title Personalise your install of ShadowOS.
echo Type 1 and then enter to change your system colour to Default.
echo Type 2 and then enter to change your system colour to Green Text on Black.
echo Type 3 and then enter to change your system colour to Aqua Text on Black.
echo Type 4 and then enter to change your system colour to Red Text on Black.
echo Type 5 and then enter to change your system colour to Purple Text on Black.
echo Type 6 and then enter to change your system colour to Yellow Text on Black
echo Type 7 and then enter to change your system colour to Light Mode (Black Text on White).
echo Type 8 and then enter to change your system colour to Chill Mode.
set /p function.shadow.persetup.option=
if %function.shadow.persetup.option% == 1 goto app.shadow.persetup.default
if %function.shadow.persetup.option% == 2 goto app.shadow.persetup.gtob
if %function.shadow.persetup.option% == 3 goto app.shadow.persetup.atob
if %function.shadow.persetup.option% == 4 goto app.shadow.persetup.rtob
if %function.shadow.persetup.option% == 5 goto app.shadow.persetup.ptob
if %function.shadow.persetup.option% == 6 goto app.shadow.persetup.ytob
if %function.shadow.persetup.option% == 7 goto app.shadow.persetup.btow
if %function.shadow.persetup.option% == 8 goto app.shadow.persetup.chl
:app.shadow.persetup.default
color 07
goto app.shadow.home
:app.shadow.persetup.gtob
color 0a
goto app.shadow.home
:app.shadow.persetup.atob
color 0b
goto app.shadow.home
:app.shadow.persetup.rtob
color 0c
goto app.shadow.home
:app.shadow.persetup.ptob
color 0d
goto app.shadow.home
:app.shadow.persetup.ytob
color 0e
goto app.shadow.home
:app.shadow.persetup.wtob
color f0
goto app.shadow.home
:app.shadow.persetup.chl
color ed
goto app.shadow.home
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
powershell "irm https://raw.githubusercontent.com/ShadowElixir/ShadowOS/main/UserServices/pcOS/messageboard.txt"
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
echo You are currently running version:
echo 3.4s
echo.
echo The latest version is:
powershell "irm https://raw.githubusercontent.com/ShadowElixir/ShadowOS/main/UserServices/pcOS/latestversion.txt"
echo.
echo Whats new in the latest version:
powershell "irm https://raw.githubusercontent.com/ShadowElixir/ShadowOS/main/UserServices/pcOS/latestversiondesc.txt"
echo.
echo If you've launched this application using VariousScripts, you are already running the latest version of ShadowOS.
pause
goto app.shadow.home
