#!/bin/sh
rm -rf common web
gcp -al ../../common ./
gcp -al ../../web ./
cp manifest.yml.dist manifest.yml
../setenv.bx.sh api fanlens web api >> manifest.yml
bx cf push api
rm -rf common web
