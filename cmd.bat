@echo off &setlocal

TITLE File Monitor

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
echo.
echo.
IF %modif_time%==%Allm% (
echo File was altered.
start "" "%file%"
Timeout /t 1 >nul
)
echo file wasn't modified.
GOTO CheckforAlter
