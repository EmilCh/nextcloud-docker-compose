FROM alpine:3.18
RUN apk add --no-cache php82 php82-bcmath php82-bz2 php82-calendar  php82-common  php82-ctype  php82-curl  php82-dba  php82-doc  php82-dom  php82-embed  php82-enchant  php82-exif  php82-ffi  php82-fileinfo  php82-fpm  php82-ftp  php82-gd  php82-gettext  php82-gmp  php82-iconv  php82-imap  php82-intl  php82-ldap   php82-mbstring  php82-mysqlnd  php82-odbc   php82-opcache  php82-openssl  php82-pcntl  php82-pear  php82-pgsql  php82-phar   php82-posix   php82-pspell   php82-session   php82-shmop  php82-simplexml  php82-snmp  php82-soap  php82-sockets  php82-sodium  php82-sqlite3  php82-tidy  php82-tokenizer  php82-xml   php82-xmlreader   php82-xmlwriter   php82-zip  php82-xsl  php82-pdo  php82-pdo_pgsql   php82-pdo_odbc   php82-pdo_sqlite   php82-pdo_mysql php82-pecl-memcache php82-pecl-memcached php82-pecl-redis bash sudo php82-sysvsem php82-pecl-imagick
copy www.conf /etc/php82/php-fpm.d/www.conf
COPY cron.sh /cron.sh
RUN chmod +x /cron.sh
EXPOSE 9000
CMD ["/usr/sbin/php-fpm82", "-F"]