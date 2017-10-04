#!/bin/sh
for module in common/common brain/brain crawler/crawler worker/worker; do #web/web
  echo running quality checks for $module
  pylint $module && mypy $module
done
