:: Batch Script color Ping

mode 100,20
echo off & cls
ipconfig/flushdns

:top
PING  -n 1 %1 | FIND "TTL="
IF ERRORLEVEL 1 (SET OUT=4F  & echo Request timed out.) ELSE (SET OUT=2F)
color %OUT%
ping -n 2 -l 10 127.0.0.1 >nul
GoTo top