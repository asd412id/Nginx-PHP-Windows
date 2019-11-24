@echo off

SET child=%1
IF "%i"=="" (
	SET child=5
)

SET PHP_FCGI_CHILDREN=%child%
SET PHP_FCGI_MAX_REQUESTS=0
@start /b %~dp0\php\php-cgi.exe -b 127.0.0.1:9000 -c %~dp0\php\php.ini

@start /b %~dp0\start-nginx.exe -g "daemon off;" -p .