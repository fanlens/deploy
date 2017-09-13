#!/bin/bash
set -e

if [ "$1" = 'python' ]; then
    pip install --upgrade pip
    for D in common brain crawler worker web deploy; do
        if [ -e /usr/src/app/$D/setup.py ]; then
            pip install -e /usr/src/app/$D;
        fi
        if [ -e /usr/src/app/$D/requirements.txt ]; then
            pip install -r /usr/src/app/$D/requirements.txt;
        fi
    done
fi

exec "$@"