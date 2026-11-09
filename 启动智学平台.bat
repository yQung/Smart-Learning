@echo off
chcp 65001 >nul
title Zhixue AI Learning Care
cd /d "%~dp0"
where powershell >nul 2>nul
if errorlevel 1 (
  echo Windows PowerShell is required.
  pause
  exit /b 1
)
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0launcher.ps1"
exit /b %errorlevel%