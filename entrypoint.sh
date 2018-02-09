#! /bin/sh

# Wait max 2 minutes for sock volume to mount
count=0
while [[ ! -d /sock && $count -le 60 ]]
do
    sleep 2
    count=`expr $count + 1`
done
redis-server /usr/local/etc/redis.conf
