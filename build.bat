@echo off
setlocal
set JAVA=C:\Users\1\tools\jdk-21\bin\java.exe
set APKTOOL=C:\Users\1\AppData\Roaming\craft-anything\engines\apktool\apktool.jar
set DIR=%~dp0
set DIR=%DIR:~0,-1%

echo Building %DIR% ...
"%JAVA%" -jar "%APKTOOL%" b "%DIR%" -o "%DIR%\qnet_unsigned.apk"
if errorlevel 1 goto fail

echo.
echo Built: %DIR%\qnet_unsigned.apk
echo.
echo Next steps:
echo   zipalign -f 4 qnet_unsigned.apk qnet_aligned.apk
echo   apksigner sign --ks keystore\qnet.keystore --ks-pass pass:android --key-pass pass:android --out QNET-presets.apk qnet_aligned.apk
exit /b 0

:fail
echo.
echo Build failed. See the apktool output above.
exit /b 1
