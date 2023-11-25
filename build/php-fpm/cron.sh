#!/bin/sh
while true; do sleep 300; cd /var/www/html/ && su  nobody -s /usr/bin/php82 cron.php; done 
