#!/bin/sh

tags='root web worker api ui cdn eev lb'
version=v4

for tag in $tags; do
    git tag -a $tag-$version -m '' --force; git push origin $tag-$version --force;
done