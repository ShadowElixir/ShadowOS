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
echo Hi there %username%, thanks for using ShadowOS Preview. Now it's time for the boring, but very important stuff.
pause
cls
echo Last Updated on: Saturday 13th of May 2023
echo ------------------------------------------
echo ShadowOS Important information:
echo.
echo To be able to use ShadowOS, you need to have agreed to this important information. 
echo 1. You may not make any copies of ShadowOS (and rebrand) without the owner's permission. 
echo 2. You must not change any code in this file and redistribute it online. 
echo 3. ShadowAI Services are referenced and will be used here on ShadowOS.
echo.
echo Press return if you agree to the following, if not, please close this application now. 
pause
cls
echo Last Updated on: Saturday 13th of May 2023
echo ------------------------------------------
echo ShadowAI Services Important information:
echo 1. ShadowAI Services will be referenced in this application.
echo 2. When using ShadowAI Services you are respectful to other users who use the service(s) too. 
echo 3. The ShadowAI Services bundled with this application is local only, to use the full service you will need to use our online services.
echo.
echo Press return if you agree to the following, if not, please close this application now. 
pause
cls
:home
title %username%'s HOME Menu. 
cls
echo HOME
echo ----
echo Warning: You have new messages on the message board.
echo -----------------------------------------------------
echo Press 1 and then return to connect to ShadowAI.
echo Press 2 and return to find out more about ShadowOS.
echo Press 3 and return to open the message centre.
echo Press 4 and then return to enter system settings.
echo Press 5 and then return to personalise your system.
echo Press 6 and then return to access Games on ShadowOS Insider.
echo Press 7 to Clear Data.
echo Press 8 to Uninstall ShadowOS.
echo -----
echo You've reached the end of the HOME Menu.
set /p homeoption=
if %homeoption% == 1 goto ShadowAI
if %homeoption% == 2 goto findoutmore
if %homeoption% == 3 goto mcentre
if %homeoption% == 4 goto systemsettings
if %homeoption% == 5 goto persetup
if %homeoption% == 6 goto games
if %homeoption% == 7 goto cleardata
if %homeoption% == 8 goto uninstallshadowos
if %homeoption% == 9 goto easteregg
if %homeoption% == devmode goto enterdevmode
if %homeoption% == setup goto setup
if %homeoption% == credits goto credits
:ShadowAI
cls
title ShadowAI
echo Connect to ShadowAI?
echo Press 1 and then return to connect.
echo Press 2 and then return to return to the HOME Menu.
set /p sonline=
if %sonline% == 1 goto sonlinec
if %sonline% == 2 goto home
:sonlinec
echo To access Sweepy Online, go to [placeholder]
echo Return to the HOME Menu?
pause
goto home
:findoutmore
cls
title Find out more about ShadowOS Insider.
echo ShadowOS Insider is an application based on NoahOS that is meant to be like an operating system with very small functionality and relies on the internet for some tasks. 
echo https://github.com/ShadowElixir/ShadowOS
echo https://github.com/NoahTheTechNerd/ShadowOS
echo Return to the HOME Menu?
pause
goto home
:mcentre
cls
title %username%'s message centre.
echo [From: InsiderTeam] [To: %username%@local] Hi everyone, it's finally here, the 1.3SP1, enjoy your time here and report any issues to our issue tracker.
echo.
echo Previous messages from June:
echo [From: Shadow] [To: %username%@local]: Hi everyone. Thanks for taking the time to view the message boards. We're glad to announce that ShadowAI (Poll Network and other services) have been launched. You can view Poll Network at http://pollnetwork.rf.gd. - Thank you, the ShadowOS Development Team. 
echo [From: ShadowAI] [To: %username%@local]: Hi there, everyone, we would just like to take the time to say that ShadowAI has been launched on our servers. We might add ShadowAI functionality to ShadowOS in the future. Press 1 on the HOME Menu to access the service.
echo [From: ShadowElixir] [To: %username%@local]: IT'S FINALLY HERE! ShadowOS 1.2s has been released, in fact you're probably reading this message on ShadowOS 1.2s right now.
echo.
echo Previous messages from May:
echo [From: ShadowAI] [To: %username%@local]: Hi there, I'm ShadowAI, your local assistant. We would like to take this time to let you know that ShadowAI functionality will be coming to ShadowOS early June, for now, we would like to thank you for using our services and we hope you enjoy them - The ShadowOS Dev Team.
echo [From: ShadowElixir] [To: %username%@local]: Hi everyone. I would just like to let you know that we have fixed a critical issue with the code. Thanks for using ShadowOS.
echo -------------------------------
echo Returning to the HOME Menu now.
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
echo NoahTheTechNerd - developer of NoahOS, TextSERV and TextOS.
echo NoahTheTechNerd - lead designer
echo NoahTheTechNerd - owner of NoahOS, TextSERV and TextOS.
echo ShadowElixir - developer of ShadowOS
echo And you!
echo (also how did you find this easter egg.)
echo. 
echo Return to the HOME Menu?
pause
goto home
:persetup
cls
title Personalise ShadowOS.
echo Notice: To personalise your ShadowOS experience, you need to be running Windows ME/2000 or later.
echo If you are running DOS, Windows 1, Windows 2, Windows 3, Windows 95, Windows 98 SE, please close this application and upgrade to ME/2000.
pause
cls
echo Type Green and then return to change your system colour to Green Text on Black.
echo Type Aqua and then return to change your system colour to Aqua Text on Black.
echo Type Red and then return to change your system colour to Red Text on Black.
echo Type Purple and then return to change your system colour to Purple Text on Black.
echo Type Yellow and then return to change your system colour to Yellow Text on Black
echo Type White and then return to change your system colour to White Text on Black. [Default]
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
cls 
title Creating files. 
powershell "New-Item ./ShadowOS/AppData/Games/Private -Type Directory" -erroraction 'silentlycontinue'
cls
title %username%'s game library
echo To download games to your computer, download the files off of the GitHub page and place the .bat file inside of ShadowOS/AppData/Games/Private.
echo.
echo Life Sim - Press 1 and return to enter - https://github.com/NoahTheTechNerd/Life-Sim (Dead Link for now)
set /p wgame=
if %wgame% == 1 goto lifesimlaunch
:lifesimlaunch
cd ./ShadowOS/AppData/Games/Private
start lifesim.bat
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
