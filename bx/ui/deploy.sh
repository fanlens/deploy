#!/bin/sh
rm -rf common web
gcp -al ../../common ./
gcp -al ../../web ./
cp manifest.yml.dist manifest.yml
../setenv.bx.sh ui fanlens web ui >> manifest.yml
bx cf push ui
rm -rf common web
