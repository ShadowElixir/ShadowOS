@echo off
title Starting ShadowOS...
setlocal enabledelayedexpansion
reg query "HKCU\Software\ShadowOS" > nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=2*" %%a in ('reg query "HKCU\Software\ShadowOS" /v firstrun ^| find "firstrun"') do (
        set "firstrun_value=%%b"
    )
    if !firstrun_value! equ 1 (
        goto home
    )
)
goto tutorial
:tutorial
cls
title Welcome!
echo Welcome and thank you for deciding to use ShadowOS as your personal assistant.
echo ShadowOS will be updated regularly to provide you with the best experience.
echo We recommend checking for updates frequently as there may be some bug fixes and sometimes new commands and features.
pause
cls
echo Let's try running a command. Try running the following command (it's case sensitive): "test.command"
set /p command=
if %command% == test.command goto tutorial.testcommand
:tutorial.testcommand
cls
title ShadowOS
echo Well done! You have completed the tutorial.
echo If you require more assistance (or spot a bug, yuck) please report it on our issue tracker.
echo Before entering ShadowOS, you must agree to the Morpies Terms of Service:
echo ------------------------------------------------------------------------
powershell "irm https://raw.githubusercontent.com/Boopki/UserServices/main/accounts/tos.txt"
echo --------------------------------------------------------------------------------------------------------
echo Press Enter to accept the terms of service.
echo Close this window to disagree with the tos.
echo -------------------------------------------
pause
reg add "HKCU\Software\ShadowOS" /v firstrun /t REG_SZ /d "1" /f
goto home
:home
cls
title HOME
echo HOME
echo ----
echo You are running ShadowOS 2.3s
echo -----------------------------------------------------
echo ANNOUNCEMENT: ShadowOS Message Board has moved online, run "messages" to find the new Message Board.
echo -----------------------------------------------------
echo ShadowOS Command List:
echo -----
echo "launch.setup" - initiates the setup program.
echo "messages" - initiates the messages program.
echo "games" - initiates the gaming program.
echo "persetup" - initiates the personalising program.
echo "filemanager" - initiates the file manager
echo "issue.tracker" - initiates the ShadowOS issue tracker.
echo "update" - initiates the update program.
echo "credits" - initiates the credits for ShadowOS.
echo -----
set /p command=
if %command% == launch.setup goto tutorial
if %command% == messages goto messages
if %command% == games goto games
if %command% == persetup goto persetup
if %command% == filemanager goto filemanager
if %command% == issue.tracker goto issues
if %command% == update goto update
if %command% == credits goto credits
:messages
cls
title Messages
start "" https://github.com/ShadowElixir/ShadowOS/discussions
goto home
:credits
cls
title Credits
echo The ShadowOS Dev team would like to thank you for using ShadowOS.
echo -----------------------------------------------------------------
echo TrisoMorpy (founder of Morpies) - lead developer and developer of Sweepy.
echo ShadowElixir - lead developer and developer of ShadowOS.
pause
goto home
:issues
cls
title Issue Tracker.
echo Launching the issue tracker. 
start "" https://github.com/ShadowElixir/ShadowOS/issues
goto home
:update
cls
title Update
echo You are currently running ShadowOS v2.3s.
echo Is it OK if ShadowOS connects to the internet to download the latest version?
echo Type "y" for yes
echo Type "n" for no.
set /p command=
if %command% == y goto update.connect
if %command% == n goto home
:update.connect
cls
title Update
echo Please wait whilst we connect to the internet. Your default web browser will be opened.
echo Checking your internet connection - this will connect to "google.com"
ping google.com
echo Completed. If this didn't work, please make sure you are connected to the internet.
pause
title Update
echo Opening the ShadowOS GitHub Releases page with your default web browser.
start "" https://github.com/ShadowElixir/ShadowOS/releases
pause
goto home
:games
cls
title ShadowOS Games
echo Powered by noahGAMES.
echo Which game would you like to play?
echo Type "lifesim" for Life Sim by TrisoSoft.
echo More games coming soon!
set /p game=
if %game% == lifesim goto app.noahgames.lifesim
:app.noahgames.lifesim
cls
title Welcome to Life Sim.
echo A noahGAMES production.
echo A noahOS Development Team production.
pause
cls
goto app.noahgames.lifesim.lvl1
:app.noahgames.lifesim.lvl1
cls
title Life Sim - LVL1
echo %username%: Ah, what a lovely day to be going out for a walk.
echo Jamie: Yeah %username%, it indeed is a lovely day to be going out for a walk!
echo *Mother calls %username%*
echo %username%: Hi mother, is everything OK?
echo Mother: Yes, everything is fine, I just wanted to know if you're going to have something to eat when you get home?
echo %username%: No, probably not, I've just been to noahFOOD. 
echo Mother: WHAT DID I SAY ABOUT EATING FAST FOOD %username%!
echo %username%: Look, I'm sorry, but you know, I'm out here earning the money to pay for all of this, not you, so mind your own business.
echo Mother: HOW DARE YOU TALK TO ME LIKE THAT, YOU KNOW WHAT, THERE WILL BE NO PC, NO GAMES, NO NOTHING FOR THE NEXT 5 MONTHS!
echo *Call Ends*
pause
echo You now have the option on what you would like to do from here.
echo Type "report" to report your mother to the Police.
echo Type "forgive" to forgive your mother and admit you were in the wrong.
set /p function.noahgames.lifesim.lvl1=
if %function.noahgames.lifesim.lvl1% == report goto app.noahgames.lifesim.lvl1.opt1
if %function.noahgames.lifesim.lvl1% == forgive goto app.noahgames.lifesim.lvl1.opt2
:app.noahgames.lifesim.lvl1.opt1
cls
title Life Sim - LVL1
echo BAD ENDING: You reported your mother for taking away your stuff, but now you're being taken away.
pause
goto app.noahgames.lifesim.lvl2
:app.noahgames.lifesim.lvl1.opt2
cls
title Life Sim - LVL1
echo GOOD Ending: Your mother decided to forgive you, and you lived happily ever after.
pause
goto app.noahgames.lifesim.lvl2
:app.noahgames.lifesim.lvl2
cls
title Life Sim - LVL2
echo We're sorry, but LVL2 currently isn't on our platform yet, keep checking for software updates!
pause
goto home
:persetup
cls
title Personalise ShadowOS.
echo Type Default and then return to change your system colour to default.
echo Type Green and then return to change your system colour to Green Text on Black.
echo Type Aqua and then return to change your system colour to Aqua Text on Black.
echo Type Red and then return to change your system colour to Red Text on Black.
echo Type Purple and then return to change your system colour to Purple Text on Black.
echo Type Yellow and then return to change your system colour to Yellow Text on Black
echo Type White and then return to change your system colour to White Text on Black. [Default]
echo Type Chill and then return to change your system colour to Chill Mode.
set /p themeoption=
if %themeoption% == Default goto defaulttheme
if %themeoption% == Green goto gtob
if %themeoption% == Aqua goto atob
if %themeoption% == Red goto rtob
if %themeoption% == Purple goto ptob
if %themeoption% == Yellow goto ytob
if %themeoption% == White goto wtob
if %themeoption% == Chill goto chl
:defaulttheme
color
goto home
:gtob
color 0a
goto home
:atob
color 0b
goto home
:rtob
color 0c
goto home
:ptob
color 0d
goto home
:ytob
color 0e
goto home
:wtob
color 0f
goto home
:chl
color ed
goto home
:filemanager
cls
title File Manager
echo Type the full path of the directory you would like to view (including the drive letter).
set /p functiondir=
cd %functiondir%
goto foldercontents
:foldercontents
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
if %fileoption% == home goto home
if %fileoption% == changedir goto filemanager
if %fileoption% == open goto openapp
if %fileoption% == music goto openmusic
if %fileoption% == folder goto mkdir
if %fileoption% == file goto mkfile
:openapp
cls
title File Manager
cd %functiondir%
echo Please type the name of the file (with the extension) in %functiondir%.
set /p functionopenapp=
start "" %functionopenapp%
goto filemanager
:openmusic
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
goto foldercontents
:mkdir
cls
title File Manager
cd %functiondir%
echo Please type the name of the directory you would like to make in %functiondir%.
set /p functiondir2=
mkdir %functiondir2%
echo Created!
pause
goto filemanager
:mkfile
cls
title File Manager
cd %functiondir%
echo Please type the name of the file you would like to make in %functiondir%.
set /p functionfile=
powershell "New-Item %functiondir%/%functionfile% -erroraction 'silentlycontinue'"
echo File "%functionfile%" created!
pause
goto filemanager
