@echo off &setlocal

TITLE Git Auto Pusher

Set file=file.txt

:CheckforAlter
Set modif_time=
Set allm=

cls
for /f "tokens=1-3 delims=:,. " %%A in ("%time%") do (
  set "Hour=%%A"
  set "Min=%%B"
  set "Sec=%%C"
)

set /a Hour = Hour %% 12
if %Hour%==0 set "Hour=12"

set "Allm=%Hour%:%Min%:%Sec%"

for /f %%i in ('"forfiles /m %file% /c "cmd /c echo @ftime" "') do set modif_time=%%i
IF %modif_time%==%Allm% (
git add .
git commit -m "%modif_time%"
git push
Timeout /t 1 >nul
)

GOTO CheckforAlter
