#!/bin/sh

for conf in $@; do 
  for line in $(cat docker/config/$conf.bx.env) ; do
    bx cf set-env $1 $(echo $line | sed -e 's/=/ /');
  done;
done;
