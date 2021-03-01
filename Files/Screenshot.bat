@echo off
@echo Please Wait while the Screenshot is being captured.
@mkdir %SYSTEMDRIVE%\Users\%USERNAME%\Pictures\AgamShot
@nircmd.exe savescreenshot "%SYSTEMDRIVE%\Users\%USERNAME%\Pictures\AgamShot\shot.png"
@rename "%SYSTEMDRIVE%\Users\%USERNAME%\Pictures\AgamShot\shot.png" AgamShot.png"
@if %errorlevel% == 1 goto :TESTDUP
@goto :END
@:TESTDUP
@rename "%SYSTEMDRIVE%\Users\%USERNAME%\Pictures\AgamShot\shot.png" AgamShot%it%.png"
@if %errorlevel% == 0 goto :END
@set /A it+=1
@goto :TESTDUP
@:END
@%SystemRoot%\explorer.exe "%SYSTEMDRIVE%\Users\%USERNAME%\Pictures\AgamShot"