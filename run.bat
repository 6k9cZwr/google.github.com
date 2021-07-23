@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
color D
ECHO ==========================
ECHO Hibernation can't make your system faster. Search Google ;) 
ECHO ==========================

SET /P input=Do you want to active? (Y/[N])?
IF /I "%input%"=="Y" GOTO Y
IF /I "%input%"=="N" GOTO N
:Y
powercfg /hibernate on
msg * Activated Successfully.
exit
:N 
powercfg /hibernate off
msg * Deactivated Successfully.
exit
