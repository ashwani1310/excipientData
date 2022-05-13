#!/bin/bash

DUMP_LOCATION=/data/tools/lyodrugdatabase/db.dump

mkdir /tmp/lyodrugsdata
mongod --dbpath /tmp/lyodrugsdata  --bind_ip 127.0.0.1 --logpath /tmp/lyodrugsdata.log --logappend &

monogrestore --archive < DUMP_LOCATION
