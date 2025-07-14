@echo off
REM Usage: echo Commit changes to Velora package.json > "%DESKTOP%\tag.txt"
.bat sourceDir appName [PREBUILDSCRIPT] [POSTBUILDSCRIPT]

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

REM Write to tag.txt on OUTPUTDIR
echo Tag changes to Velora package.json > "%OUTPUTDIR%\tag.txt"

echo Created %OUTPUTDIR%\tag.txt

endlocal
