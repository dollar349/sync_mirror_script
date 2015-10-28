#!/bin/sh
sudo fusermount -u /sys_home/for_mount/ &> /dev/null
sudo curlftpfs ftp://10.207.36.235/../../var/www/html/oe-mirror /sys_home/for_mount/ -o user=gdean:avocent && sudo rsync -arv /sys_home/for_mount/ /sys_home/space_for_http_server/ && sudo fusermount -u /sys_home/for_mount/

