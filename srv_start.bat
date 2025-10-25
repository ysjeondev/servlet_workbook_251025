@echo off
REM ===============================
REM Jetty Server Auto Start Script
REM ===============================

REM 1. 콘솔에 현재 경로 표시
echo --------------------------------------------
echo  Jetty Server Starting ...
echo  Project Path: %cd%
echo --------------------------------------------

REM 2. Maven clean + compile
echo Step 1: Cleaning and Compiling project...
call mvn clean compile

REM 3. Jetty 실행
echo Step 2: Starting Jetty server...
call mvn jetty:run

REM 4. 종료 방지 (실행 후 콘솔창 닫히지 않게)
pause
