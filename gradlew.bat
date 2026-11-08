@echo off
setlocal
set "GRADLE_VERSION=8.9"
if not defined GRADLE_USER_HOME set "GRADLE_USER_HOME=%USERPROFILE%\.gradle"
set "DIST_DIR=%GRADLE_USER_HOME%\manual-dists\gradle-%GRADLE_VERSION%"
set "GRADLE_BIN=%DIST_DIR%\gradle-%GRADLE_VERSION%\bin\gradle.bat"
if not exist "%GRADLE_BIN%" (
  if not exist "%DIST_DIR%" mkdir "%DIST_DIR%"
  set "ZIP=%DIST_DIR%\gradle-%GRADLE_VERSION%-bin.zip"
  powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://services.gradle.org/distributions/gradle-%GRADLE_VERSION%-bin.zip' -OutFile '%DIST_DIR%\gradle-%GRADLE_VERSION%-bin.zip'; Expand-Archive -Force '%DIST_DIR%\gradle-%GRADLE_VERSION%-bin.zip' '%DIST_DIR%'"
  if errorlevel 1 exit /b 1
)
call "%GRADLE_BIN%" -p "%~dp0" %*
exit /b %ERRORLEVEL%
