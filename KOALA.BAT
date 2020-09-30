@echo off
title Koala Migrator

:menu
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo What do you want to do!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo.
echo #1 - Migrate from GDLauncher
echo #2 - Exit
echo. 
choice /C:12 /n /m "Selection: "%1
if errorlevel ==2 EXIT /B
if errorlevel ==1 goto migrate_gdl

:migrate_gdl
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Are you sure you want to migrate all your GDLauncher Instances to KoalaLauncher
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo. 
echo #1 - Yes
echo #2 - I want my gorilla....
echo.
choice /C:12 /n /m "Selection: "
if errorlevel ==2 goto menu
if errorlevel ==1 goto really_migrate_gdl

:really_migrate_gdl
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo No Warnanty will be given if all your instances disappear
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo. 
echo #1 - Koala all the way!
echo #2 - Stupid Gorilla Hater
echo.
choice /C:12 /n /m "Selection: "
if errorlevel ==2 goto menu
if errorlevel ==1 goto start_migrate_gdl

:start_migrate_gdl
cls 
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Migrating all your GDL Instances. This will take a long time!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
cd "%appdata%\koalalauncher" > NUL
if not exist instances\ mkdir instances\ > NUL
XCOPY /S /E /V /Q /F "%appdata%\gdlauncher_next\instances" "%appdata%\koalalauncher\instances"
echo.
echo.
echo.
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Migration Successful! Do you want me to delete the duplicated instances?
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo. 
echo #1 - Koala all the way!
echo #2 - Gorilla's are still cool...
echo.
choice /C:12 /n /m "Selection: "
if errorlevel ==2 goto return
if errorlevel ==1 goto cleanup_gdl

:cleanup_gdl
RD /s /q "%appdata%\gdlauncher_next"

:return
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Returning to Selection in 5 seconds
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
timeout /t 1 /nobreak > NUL
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Returning to Selection in 4 seconds
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
timeout /t 1 /nobreak > NUL
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Returning to Selection in 3 seconds
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
timeout /t 1 /nobreak > NUL
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Returning to Selection in 2 seconds
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
timeout /t 1 /nobreak > NUL
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Returning to Selection in 1 second
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
timeout /t 1 /nobreak > NUL
goto menu
PAUSE