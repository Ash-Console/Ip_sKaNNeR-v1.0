@echo off
if [%1]==[] goto usage
goto main
:usage
"%~dp0Exo.exe" /M:2:1 /C:0e /T:Ip_sKaNNeR v1.0 && echo.
"%~dp0Exo.exe" /M:2:1 /C:0e /T:Written By:Zeeshan azeem && echo.
"%~dp0Exo.exe" /M:2:1 /C:0e /T:Usage: && echo.
"%~dp0Exo.exe" /M:2:1 /C:0e /T:type all Ip addresses in url.txt and pass it to script. && echo.
"%~dp0Exo.exe" /M:2:1 /C:0e /T:Example:Ip_sKaNNeR v1.0.bat url.txt && echo.
pause 
exit
:: Batch script to check weather a server is up or not
:main
if not exist "%~dp0Exo.exe" (echo Exo.exe is missing,aborting to avoid malfunction && exit) else goto continue
:continue 
"%~dp0Exo.exe" /M:2:1 /C:0e /T:Ip_sKaNNeR v1.0 && echo.
"%~dp0Exo.exe" /M:2:1 /C:0e /T:Written By:Zeeshan azeem && echo. 
for /f %%a in (%1) do (
    "%~dp0Exo.exe" /M:2:1 /C:0d /T:Pinging %%a.. && echo.
    ping -n 1 %%a | find "Reply" >nul
    if not errorlevel 1 ( "%~dp0Exo.exe" /M:2:1 /C:0b /T:[*] %%a: /C:0a /T:UP && echo.  ) else ("%~dp0Exo.exe" /M:2:1 /C:0b /T:[*] %%a: /C:0c /T:DOWN && echo. )
)
