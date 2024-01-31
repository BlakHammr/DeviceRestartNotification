@Echo Off

REM ***************************************************************

REM ##---Application Name: System Reboot
REM ##---Script Author: Jagdish
REM ##---Creation Date:10/Jan/2024
REM ##---Modification Date: NA


REM ------------Start of Script------------------------------------

SET WORKINGDIR=%~dp0
@ECHO WORKINGDIR=%WORKINGDIR%


robocopy "%WORKINGDIR%Hy-Vee" "%Windir%\SystemReboot

cmd /c schtasks.exe /Create /XML "%WORKINGDIR%Hy-Vee\System_Reboot.xml" /tn System_Reboot


timeout /t 240


exit /B 0

REM ------------END of Script--------------