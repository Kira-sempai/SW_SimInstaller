@echo off
rem 
rem	Need set enviroment variable:
rem set QTDIR=path\to\Qt
rem

if "%QTDIR%"=="" (echo QTDIR is not specified
goto :EOF)

@echo on
copy "%~dp0\..\..\bin\stdc_production\stdcv3\STDC-V3-Sorel-S20v3r1-QT-sim.exe" "%~dp0\src"
copy "%~dp0\..\..\bin\ltdc_production\ltdcv3\LTDCv3-Sorel-S40v3r1-QT-sim.exe" "%~dp0\src"
copy "%QTDIR%\bin\libgcc_s_dw2-1.dll" "%~dp0\src"
copy "%QTDIR%\bin\libstdc++-6.dll" "%~dp0\src"
copy "%QTDIR%\bin\libwinpthread-1.dll" "%~dp0\src"
copy "%QTDIR%\bin\QtCore4.dll" "%~dp0\src"
copy "%QTDIR%\bin\QtGui4.dll" "%~dp0\src"
copy "%QTDIR%\bin\QtScript4.dll" "%~dp0\src"

