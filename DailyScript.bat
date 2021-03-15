@echo off
set MomFName=%date%.mom
set line=**********************************************************************************************
set appname="C:\Program Files\Notepad++\notepad++.exe"
set init=%date% 

:Retry
cls
color 1e
echo Enter your input :
echo ``````````````````
echo M. Open MOM File for today
echo P. Copy code
echo E. Copy Email
echo T. Open Timesheet
echo Q. QUIT
echo ______________________________

set /p input="Enter your input: " 

SET input=%input:m=M%
if %input%==M (
	if not exist %MomFName%  (
	echo %line% > %MomFName%
	echo   %init%: >> %MomFName%
	echo %line% >> %MomFName%
	)
	%appname% %MomFName%
	goto Retry
)

SET input=%input:p=P%
if %input%==P ( echo MyPasscode@25 | clip & goto retry )

SET input=%input:e=E%
if %input%==E ( echo dont.miss.hari@gmail.com | clip & goto retry)

SET input=%input:t=T%
if %input%==T ( start chrome.exe & goto retry)

SET input=%input:q=Q%
if %input%==Q ( exit )

echo "Invalid input:%input%.  Press any key to retry..."
pause
goto Retry
