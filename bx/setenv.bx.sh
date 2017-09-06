#!/bin/sh

for conf in $@; do 
  for line in $(cat ../../config/$conf.bx.env) ; do
    echo $line | sed -e 's/=/: /' | sed -e 's/^/    /';
  done;
done;
