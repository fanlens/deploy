#!/bin/sh
rm -rf bot
gcp -al ../../bot ./
cp manifest.yml.dist manifest.yml
../setenv.bx.sh version bot >> manifest.yml
bx cf push -p bot/
rm -rf bot manifest.yml

