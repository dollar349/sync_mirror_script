#!/bin/sh
sudo fusermount -u /sys_home/for_mount/ &> /dev/null
sudo mount -t nfs 10.162.243.141:/var/www/html/oe-mirror /sys_home/for_mount/ && sudo rsync -arv --exclude="sstate-cache*" /sys_home/for_mount/ /sys_home/space_for_http_server/ && sudo fusermount -u /sys_home/for_mount/

