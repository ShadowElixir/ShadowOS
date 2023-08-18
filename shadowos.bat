@echo off
title Loading and creating files.
powershell "New-Item ./ShadowOS/AppData -Type Directory" -erroraction 'silentlycontinue'
set themeoption=White
cls
goto setup
:setup
title Setup
echo Hi there, I'm ShadowAI - your personal assistant.
echo We need to configure a few things and ShadowOS will be ready for your use.
pause
cls
echo To start, what's your name? Leave blank to use Windows username.
set /p username=
if %username% == dskip goto home
if %username% == config goto enterdevmode
echo Hi there %username%, thanks for using ShadowOS. Now it's time for the boring, but very important stuff.
pause
cls
echo Last Updated on: Saturday 13th of May 2023
echo ------------------------------------------
echo ShadowOS Important information:
echo.
echo 1. If you have paid for this software, please demand your money back straight away.
echo 2. You are not allowed to steal our code and re-distribute it as your own, without explicit permission from the team.
echo 3. ShadowOS is a fork of noahOS which should be considered as a game that attempts to be as close to an operating system as possible.
echo 4. Games on noahGAMES have been developed for noahOS.
echo.
echo If you do not agree with the Important Information, please close this software and delete it.
pause
cls
:home
title %username%'s HOME Menu. 
cls
echo HOME
echo ----
echo Warning: You have new messages on the message board.
echo -----------------------------------------------------
echo Press 1 and then return to enter System Updates.
echo Press 2 and then return to find out more about ShadowOS.
echo Press 3 and then return to enter system settings.
echo Press 4 and then return to personalise your system.
echo Press 5 and then return to enter the noahGAMES Network.
echo Press 6 and then return to Clear Data.
echo Press 7 and then return to to Uninstall ShadowOS.
echo -----
echo You've reached the end of the HOME Menu.
set /p homeoption=
if %homeoption% == 1 goto updates
if %homeoption% == 2 goto findoutmore
if %homeoption% == 3 goto systemsettings
if %homeoption% == 4 goto persetup
if %homeoption% == 5 goto games
if %homeoption% == 6 goto cleardata
if %homeoption% == 7 goto uninstallshadowos
if %homeoption% == 8 goto easteregg
if %homeoption% == devmode goto enterdevmode
if %homeoption% == setup goto setup
if %homeoption% == credits goto credits
:updates
cls
title System Updates
echo You are currently running version 1.4.1s.
echo Press the Enter key to open the releases page for ShadowOS with your default browser.
pause
start "" https://github.com/ShadowElixir/ShadowOS/releases
goto home
:findoutmore
cls
title Find out more about ShadowOS.
echo ShadowOS is a fork of noahOS which should be considered as a game that attempts to be as close to an operating system as possible.
echo https://github.com/ShadowElixir/ShadowOS
echo https://github.com/NoahTheTechGenius/noahOS
echo Return to the HOME Menu?
pause
goto home
:enterdevmode
title Developer Mode
cls
echo Username - %username%
echo System Date - %date%
echo System Time - %time%
echo Internal Username for the message boards - %username%@local
echo Theme being used - %themeoption%
echo.
echo DEVELOPER NOTICE: Please report any issues with the OS on the issue tracker. 
echo If the issues you are facing are to do with internet, please press 1 and then return, if you're done here, press 2 and then return. 
set /p devmodeoption=
if %devmodeoption% == 1 goto internetdevmode
if %devmodeoption% == 2 goto home
:internetdevmode
cls
echo Connecting to the Internet. 
ipconfig
pause
echo Returning to the HOME Menu
pause
goto home
:credits
title Credits
echo NoahTheTechGenius - developer of noahOS, TextSERV and TextOS.
echo NoahTheTechGenius - lead designer
echo NoahTheTechGenius - owner of noahOS, TextSERV and TextOS.
echo ShadowElixir - developer of ShadowOS
echo And you!
echo (also how did you find this easter egg?)
echo. 
echo Return to the HOME Menu?
pause
goto home
:persetup
cls
title Personalise ShadowOS.
echo Notice: To personalise your ShadowOS experience, you need to be running Windows ME/2000 or later.
echo If you are running DOS, Windows 1, Windows 2, Windows 3, Windows 95, Windows 98 SE, please close this application and upgrade to ME/2000 or later.
echo Restart ShadowOS to reset the theme.
pause
cls
echo Type Green and then return to change your system colour to Green Text on Black.
echo Type Aqua and then return to change your system colour to Aqua Text on Black.
echo Type Red and then return to change your system colour to Red Text on Black.
echo Type Purple and then return to change your system colour to Purple Text on Black.
echo Type Yellow and then return to change your system colour to Yellow Text on Black
echo Type White and then return to change your system colour to White Text on Black.
echo Type Chill and then return to change your system colour to Chill Mode.
set /p themeoption=
if %themeoption% == Green goto gtob
if %themeoption% == Aqua goto atob
if %themeoption% == Red goto rtob
if %themeoption% == Purple goto ptob
if %themeoption% == Yellow goto ytob
if %themeoption% == White goto wtob
if %themeoption% == Chill goto chl
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
echo Press 1 and then return to change your username, press 2 and then return to change your theme. 
set /p systemoption= 
if %systemoption% == 1 goto sysuserchange 
if %systemoption% == 2 goto persetup
:sysuserchange
echo What would you like your username to be?
set /p username=
pause
goto systemsettings
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
:cleardata
title Clearing data
powershell "Remove-Item ./ShadowOS" -Recurse
echo Exiting ShadowOS
pause
exit
:uninstallshadowos
cls
title Uninstalling ShadowOS
powershell "Remove-Item ./ShadowOS" -Recurse -erroraction 'silentlycontinue'
del shadowos.bat
exit
:easteregg
cls
title Hello There!
echo Hello There!
pause
goto home