@echo off
REM Usage: commit.bat sourceDir appName [PREBUILDSCRIPT] [POSTBUILDSCRIPT]

setlocal

REM Get arguments
set "SRC=%~1"
set "APPNAME=%~2"


REM Set OUTPUTDIR path
set "DESKTOP=%USERPROFILE%\Desktop"
set "OUTPUTDIR=%DESKTOP%\%APPNAME%"
if not exist "%OUTPUTDIR%" (
	mkdir "%OUTPUTDIR%"
)

REM Write to commit.txt on output directory
echo Commit changes to Velora package.json > "%OUTPUTDIR%\commit.txt"

echo Created %OUTPUTDIR%\commit.txt

endlocal
