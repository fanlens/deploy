#!/bin/sh
if [ $1 = "all" ] ; then
  for module in bot ui api; do
    cd $module;
    ./deploy.sh;
    cd -;
  done;
else
  cd $1;
  ./deploy.sh;
  cd -;
fi;
