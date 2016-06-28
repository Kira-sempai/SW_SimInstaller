@echo off
rem 
rem	Need set enviroment variable:
rem set WIXDIR=Path\to\wix
rem	

if "%WIXDIR%"=="" (echo WIXDIR is not specified
goto :EOF)

set PATH=%WIXDIR%;%PATH%

@echo on

candle product.wxs features.wxs files.wxs shortcuts.wxs WixUI_custom.wxs > candle.log
light -ext WixUIExtension -cultures:ru-ru -loc %WIXDIR%/WixUI_ru-ru.v3/WixUI_ru-ru.wxl -out msi\SmartWebInstall.msi product.wixobj features.wixobj files.wixobj shortcuts.wixobj WixUI_custom.wixobj > light.log
