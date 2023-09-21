@echo off
title Loading...
set themeoption=Default
cls
goto setup
:setup
title Setup
cls
echo Hi there, I'm ShadowAI - your personal assistant.
echo We need to configure a few things and ShadowOS will be ready for your use.
pause
cls
echo To start, what's your name? Leave blank to use Windows username.
set /p username=
if %username% == config goto enterdevmode
cls
echo Hi there %username%, thanks for using ShadowOS.
pause
cls
:home
title %username%'s HOME Menu. 
cls
echo HOME
echo ----
echo You are running ShadowOS 1.6s
echo -----------------------------------------------------
echo Type info and then return to read the important information.
echo Press 1 and then return to enter System Updates.
echo Press 2 and then return to find out more about ShadowOS.
echo Press 3 and then return to enter system settings.
echo Press 4 and then return to personalise your system.
echo Press 5 and then return to enter the noahGAMES Network.
echo Press 6 and then return to enter File Manager.
echo -----
echo You've reached the end of the HOME Menu.
set /p homeoption=
if %homeoption% == info goto info
if %homeoption% == 1 goto updates
if %homeoption% == 2 goto findoutmore
if %homeoption% == 3 goto systemsettings
if %homeoption% == 4 goto persetup
if %homeoption% == 5 goto games
if %homeoption% == 6 goto filemanager
if %homeoption% == devmode goto enterdevmode
if %homeoption% == enterdevmode goto enterdevmode
if %homeoption% == setup goto setup
if %homeoption% == credits goto credits
:devhome
title %username%'s DEV Menu. 
cls
echo DEV HOME
echo ----
echo You are running ShadowOS 1.6s (Developer Mode)
echo -----------------------------------------------------
echo Type info and then return to read the important information.
echo Press 1 and then return to enter System Updates.
echo Press 2 and then return to find out more about ShadowOS.
echo Press 3 and then return to enter system settings.
echo Press 4 and then return to personalise your system.
echo Press 5 and then return to enter the noahGAMES Network.
echo Press 6 and then return to enter File Manager.
echo Type devmode and then return to enter the dev menu.
echo Type enterdevmode and then return to also enter the dev menu.
echo Type setup and then return to enter setup.
echo Type credits and then return to enter the credits menu.
echo Type home and then return to enter the normal home menu.
echo -----
echo You've reached the end of the DEV Menu.
set /p devhomeoption=
if %devhomeoption% == info goto info
if %devhomeoption% == 1 goto updates
if %devhomeoption% == 2 goto findoutmore
if %devhomeoption% == 3 goto systemsettings
if %devhomeoption% == 4 goto persetup
if %devhomeoption% == 5 goto games
if %devhomeoption% == 6 goto filemanager
if %devhomeoption% == devmode goto enterdevmode
if %devhomeoption% == enterdevmode goto enterdevmode
if %devhomeoption% == setup goto setup
if %devhomeoption% == credits goto credits
if %devhomeoption% == home goto home
:updates
cls
title System Updates
echo You are currently running version 1.6s.
echo Press the Enter key to open the releases page for ShadowOS with your default browser.
pause
start "" https://github.com/ShadowElixir/ShadowOS/releases
goto home
:findoutmore
cls
title Find out more about ShadowOS.
echo ShadowOS is a fork of noahOS which should be considered as a game that attempts to be as close to an operating system as possible.
echo https://github.com/ShadowElixir/ShadowOS
echo https://github.com/NoahTheTechGenius/noahOS (noahOS not available for now)
echo Return to the HOME Menu?
pause
goto home
:enterdevmode
title Developer Mode
cls
echo Username - %username%
echo System Date - %date%
echo System Time - %time%
echo Theme being used - %themeoption%
echo.
echo DEVELOPER NOTICE: Please report any issues with the OS on the issue tracker. 
echo Press 1 and then return to go to the issue tracker on GitHub.
echo Press 2 and then return to go to the dev menu.
set /p devmodeoption=
if %devmodeoption% == 1 goto issues
if %devmodeoption% == 2 goto devhome
:issues
title Report an Issue.
cls
start "" https://github.com/ShadowElixir/ShadowOS/issues
goto enterdevmode
:credits
title Credits
cls
echo NoahTheTechGenius - developer of noahOS, TextSERV and TextOS.
echo NoahTheTechGenius - lead designer
echo NoahTheTechGenius - owner of noahOS, TextSERV and TextOS.
echo ShadowElixir - developer of ShadowOS
echo And you!
echo. 
echo Return to the HOME Menu?
pause
goto home
:systemsettings
cls
title System Settings 
echo Welcome to System Settings:
echo.
echo Your current preferences are:
echo Username: %username%
echo Current Theme: %themeoption%
echo System date: %date%
echo System time: %time%
echo.
echo Press 1 and then return to change your username.
echo Press 2 and then return to change your theme. 
echo Press 3 and then return to go to the dev menu.
echo Press 4 and then return to go to the home menu.
set /p systemoption= 
if %systemoption% == 1 goto sysuserchange 
if %systemoption% == 2 goto persetup
if %systemoption% == 3 goto devhome
if %systemoption% == 4 goto home
:sysuserchange
echo What would you like your username to be?
set /p username=
pause
goto systemsettings
:persetup
cls
title Personalise ShadowOS.
echo WARNING: You will need to restart ShadowOS to reset your theme.
echo Type Green and then return to change your system colour to Green Text on Black.
echo Type Aqua and then return to change your system colour to Aqua Text on Black.
echo Type Red and then return to change your system colour to Red Text on Black.
echo Type Purple and then return to change your system colour to Purple Text on Black.
echo Type Yellow and then return to change your system colour to Yellow Text on Black
echo Type White and then return to change your system colour to White Text on Black.
echo Type Chill and then return to change your system colour to Chill Mode.
echo Type 0 and then return to keep your current theme.
set /p themeoption=
if %themeoption% == Green goto gtob
if %themeoption% == Aqua goto atob
if %themeoption% == Red goto rtob
if %themeoption% == Purple goto ptob
if %themeoption% == Yellow goto ytob
if %themeoption% == White goto wtob
if %themeoption% == Chill goto chl
if %themeoption% == 0 goto home
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
:games
echo Which game would you like to play?
echo Press 1 and then return to play Life Sim by NoahTheTechGenius.
echo More games coming soon!
set /p game=
if %game% == 1 goto app.noahgames.lifesim
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
echo Press 1 and then return to report your mother to the Police. Press 2 and then return to forgive your mother and admit you were in the wrong. 
set /p function.noahgames.lifesim.lvl1=
if %function.noahgames.lifesim.lvl1% == 1 goto app.noahgames.lifesim.lvl1.opt1
if %function.noahgames.lifesim.lvl1% == 2 goto app.noahgames.lifesim.lvl1.opt2
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
echo Press 1 and then return to go back to the home Menu.
echo Press 2 and then return to change the directory you would like to view.
echo Press 3 and then return to open a file.
echo Press 4 and then return to play a song.
echo Press 5 and then return to make a directory.
echo Press 6 and then return to make a file.
set /p fileoption=
if %fileoption% == 1 goto home
if %fileoption% == 2 goto filemanager
if %fileoption% == 3 goto openapp
if %fileoption% == 4 goto openmusic
if %fileoption% == 5 goto mkdir
if %fileoption% == 6 goto mkfile
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
:info
cls
title ShadowOS Important information 
echo Last Updated on: Monday 21st of August 2023
echo --------------------------------------------
echo ShadowOS Important information:
echo.
echo 1. If you have paid for this software, please demand your money back straight away.
echo 2. You are not allowed to steal our code and re-distribute it as your own, without explicit permission from the team.
echo 3. ShadowOS is a fork of noahOS which should be considered as a game that attempts to be as close to an operating system as possible.
echo 4. Games on noahGAMES have been developed for noahOS.
echo 5. ShadowOS has full compatibility on Windows ME/2000 and above. We do not recommend running ShadowOS on versions of Windows that are no longer supported.
echo.
echo If you do not agree with the Important Information, please close this software and delete it.
pause
cls
goto home
