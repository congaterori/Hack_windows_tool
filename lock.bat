:start
@echo off
color a
echo 1.lock
echo 2.unlock
set /p choose=choose: 
if %choose% == 1 goto lock
if %choose% == 2 goto unlock
cls
:lock
echo lock
ren set "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
pause
goto start
:unlock
echo unlock
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" set
pause
goto start