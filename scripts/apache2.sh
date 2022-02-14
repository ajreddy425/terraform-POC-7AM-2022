#!/bin/bash
yum install httpd -y
echo "<h1> This response is from web_sever 02 </h1>" >/var/www/html/index.html
chkconfig httpd on
service httpd start