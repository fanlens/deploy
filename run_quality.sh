#!/bin/sh
for module in common/common brain/brain crawler/crawler worker/worker web/web; do
  echo running quality checks for $module
  if [ -e $module/../pylintrc ]; then
    echo special config at $module/../pylintrc
    pylint --rcfile=$module/../pylintrc $module
  else
    pylint $module
  fi
  mypy $module
done
