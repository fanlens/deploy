#!/bin/sh
rm -rf common web
gcp -al ../../common ./
gcp -al ../../web ./
cp manifest.yml.dist manifest.yml
../setenv.bx.sh version db redis celery mail web twitter >> manifest.yml
bx cf push ui
rm -rf common web


