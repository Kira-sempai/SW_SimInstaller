@echo off
rem 
rem	Need set enviroment variable:
rem set QTDIR=path\to\Qt
rem

if "%QTDIR%"=="" (echo QTDIR is not specified
goto :EOF)

if "%SWSDIR%"=="" (echo SWSDIR is not specified. Set to default
set SWSDIR=C:\development\stdc_clean\bin\stdc_production\stdcv3
)

if "%SWLDIR%"=="" (echo SWLDIR is not specified. Set to default
set SWLDIR=C:\development\stdc_clean\bin\ltdc_production\ltdcv3
)

if "%SWXDIR%"=="" (echo SWXDIR is not specified. Set to default
set SWXDIR=C:\development\xhcc\bin\xhccv2
)


@echo on

copy "%SWSDIR%\STDC-V3-Sorel-S20v3r1-QT-sim.exe"	"src"
copy "%SWLDIR%\LTDCv3-Sorel-S40v3r1-QT-sim.exe"		"src"
copy "%SWXDIR%\XHCC-Sorel-S61v2r1-QT-sim.exe"		"src"

::xcopy /S /E	"C:\development\xhcc\web\teplomonitor-server\server"								"C:\Tools\SW_SimInstaller\src\WEB" /I
::copy		"C:\development\xhcc\web\teplomonitor-server\sitemenu.txt"							"C:\Tools\SW_SimInstaller\src"

copy "C:\Windows\System32\PCANBasic.dll"		"src"
copy "C:\Windows\System32\python27.dll"			"src"
copy "%QTDIR%\bin\libgcc_s_dw2-1.dll"			"src"
copy "%QTDIR%\bin\libstdc++-6.dll"				"src"
copy "%QTDIR%\bin\libwinpthread-1.dll"			"src"
copy "%QTDIR%\bin\QtCore4.dll"					"src"
copy "%QTDIR%\bin\QtGui4.dll"					"src"
copy "%QTDIR%\bin\QtScript4.dll"				"src"