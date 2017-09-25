#!/bin/sh
rm -rf common web
gcp -al ../../common ./
gcp -al ../../web ./
cp manifest.yml.dist manifest.yml
../setenv.bx.sh version db redis celery mail web >> manifest.yml
bx cf push api
rm -rf common web



