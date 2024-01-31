@Echo Off

REM ***************************************************************

REM ##---Application Name: System Reboot


REM ------------Start of Script------------------------------------

SET WORKINGDIR=%~dp0
@ECHO WORKINGDIR=%WORKINGDIR%


robocopy "%WORKINGDIR%Script" "%Windir%\SystemReboot

cmd /c schtasks.exe /Create /XML "%WORKINGDIR%Script\System_Reboot.xml" /tn System_Reboot


timeout /t 240


exit /B 0

REM ------------END of Script--------------