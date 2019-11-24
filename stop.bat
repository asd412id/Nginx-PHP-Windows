@echo off

taskkill /F /IM php-cgi.exe /T >NUL
taskkill /F /IM start-nginx.exe /T >NUL