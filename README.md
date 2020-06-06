# NginX + PHP for Windows
Configured nginx with php-cgi for Windows.

## How to use:
For optimal, use bash or git-bash to execute nginx file inside directory with syntax:  

### Usage
- **nginx create [root_directory|default: '/html'] [block_name|default: default] [port|default: 80] [server_name|default: localhost]**
- **nginx server [prod|default: empty]**
- **nginx delete [server_name|--all for delete all]**
- **nginx start [max_upstream_server|default: 5]**
- **nginx stop**

**Important: Make sure to execute \"nginx stop\" before run create or delete command!**

### Syntax Description
- nginx : *nginx file executable*
- [server]: *Enable opcache if second option is "prod" and disable if empty*
- [start|stop|create|delete]: *Start, stop nginx+php server and create or delete server block by name*
- [root_directory]: *set default path document root directory. Use quote symbol to input document path, e.g. __'C:\xampp\htdocs'__*
- [port]: *Set port. Default is 80*
- [max_upstream_server]: *Max upstream server of php-cgi.exe as nginx backend to use. Default is 5*
- [server_name]: *Set server name aka domain name of project. You must set dns to use custom server_name beside __localhost__ in your host file. Default server_name is localhost*

### Optionals
You can add more server block with create new server block file inside sites-enabled folder.

## Important
*PHP may not working before make configuration extension directory in __php.ini__. Open file php.ini and find extension_dir then change value to php's ext folder path. __e.g. extension_dir = "C:\base_path\php\ext"__*
