# NginX + PHP for Windows
Configured nginx with php-cgi for Windows.

## How to use:
For optimal, use bash or git-bash to execute nginx file inside directory with syntax:  

**nginx [start|stop] [root_directory|default: '/html'|string] [port|default: 80|number] [max_upstream_server|default: 5|number] [server_name|default: localhost|string]**

###Usage:###
**nginx create [root_directory|default: '/html'|<string>] [port|default: 80|<number>] [server_name|default: localhost|<string>]**
**nginx destroy [server_name|--all for destroy all]**
**nginx start [max_upstream_server|default: 5|<number>]**
**nginx stop**

**Important: Make sure to execute \"nginx stop\" before run create or destroy command!**

### Syntax Description
- nginx : *nginx file executable*
- [start|stop|create|destroy]: *Start, stop nginx+php server and create or delete server block by name*
- [root_directory]: *set default path document root directory. Use quote symbol to input document path, e.g. __'C:\xampp\htdocs'__*
- [port]: *Set port. Default is 80*
- [max_upstream_server]: *Max upstream server of php-cgi.exe as nginx backend to use. Default is 5*
- [server_name]: *Set server name aka domain name of project. You must set dns to use custom server_name beside __localhost__ in your host file. Default server_name is localhost*

### Optionals
You can add more server block with create new server block file inside sites-enabled folder.