@echo off

SET PHP_FCGI_MAX_REQUESTS=1000
for /L %%i in (0,1,%1) do (
	@start /b %~dp0\php\php-cgi.exe -b 127.0.0.1:900%%i -c %~dp0\php\php.ini
)

@start /b %~dp0\start-nginx.exe -g "daemon off;" -p .