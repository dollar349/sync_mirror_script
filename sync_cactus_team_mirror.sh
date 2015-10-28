#!/bin/sh
sudo fusermount -u /sys_home/for_mount/ &> /dev/null
sudo mount -t nfs 10.162.247.164:/var/www/html/oe-mirror /sys_home/for_mount/ && sudo rsync -arv /sys_home/for_mount/ /sys_home/space_for_http_server/ && sudo fusermount -u /sys_home/for_mount/

