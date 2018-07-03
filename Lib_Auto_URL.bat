@echo off
echo copying exe file to Desktop..
copy Lib_URL.bat C:\Users\%username%\Desktop
rem creating a shortcut to this particular exe file
REM set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

REM echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
REM echo sLinkFile = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\MSU_Lib_Auto.lnk" >> %SCRIPT%
REM echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
REM echo oLink.TargetPath = "C:\Users\%username%\Desktop\Lib_URL.bat" >> %SCRIPT%
REM echo oLink.Save >> %SCRIPT%

REM cscript /nologo %SCRIPT%
REM del %SCRIPT%


powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Lib_URL.lnk');$s.TargetPath='C:\Users\%username%\Desktop\Lib_URL.bat';$s.Save()"


pause