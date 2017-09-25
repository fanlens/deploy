#!/bin/sh

for mod_path in "bot brain common crawler web worker"; do
  cd "../${mod_path}";
  git checkout master;
  git merge --no-ff dev;
  git push origin master;
  git checkout dev;
done;

cd ../deploy
git submodule update --remote -j 8;
git add .;
git commit -m 'submodule update';
git push origin dev;
git checkout master;
git merge --no-ff dev;
git push origin master;
git checkout dev;

