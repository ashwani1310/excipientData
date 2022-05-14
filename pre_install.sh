#!/bin/sh
DUMP_LOCATION=/data/tools/lyodrugdatabase/db.dump
	
mkdir /tmp/lyodrugsdata

/usr/bin/mongod --dbpath /tmp/lyodrugsdata  --bind_ip 127.0.0.1 --logpath /tmp/lyodrugsdata.log --logappend &
	
/usr/bin/mongorestore --archive=${DUMP_LOCATION}
