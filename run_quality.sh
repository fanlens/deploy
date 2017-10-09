#!/bin/sh
#for module in common/common brain/brain crawler/crawler worker/worker web/web; do
for module in web/web; do
  echo running quality checks for $module
  if [ -e $module/../pylintrc ]; then
    echo $module/../pylintrc
    pylint --rcfile=$module/../pylintrc $module
  else
    pylint $module
  fi
  mypy $module
done
