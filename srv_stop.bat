@echo off
REM ===============================
REM Jetty Server Stop Script
REM ===============================

echo --------------------------------------------
echo  Stopping Jetty Server ...
echo --------------------------------------------

REM 1. Jetty 프로세스 찾아서 종료하기
REM    "jetty" 또는 "mvn jetty:run"이 포함된 프로세스 찾기
for /f "tokens=2 delims=," %%a in ('tasklist /v /fo csv ^| findstr /i "jetty"') do (
    echo Killing process ID: %%a
    taskkill /PID %%a /F
)

for /f "tokens=2 delims=," %%a in ('tasklist /v /fo csv ^| findstr /i "mvn jetty:run"') do (
    echo Killing process ID: %%a
    taskkill /PID %%a /F
)

REM 2. 결과 출력
echo --------------------------------------------
echo  Jetty server stopped (if it was running)
echo --------------------------------------------

pause
