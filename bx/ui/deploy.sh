#!/bin/sh
rm -rf common web
gcp -al ../../common ./
gcp -al ../../web ./
if [ -d ./node_modules ]; then
  gcp -al node_modules web/web/ui/
fi
npm install --prefix=web/web/ui/
npm run build-app --prefix=web/web/ui/
mv web/web/ui/node_modules ./
cp manifest.yml.dist manifest.yml
../setenv.bx.sh version db redis celery mail web twitter >> manifest.yml
bx cf push ui
rm -rf common web manifest.yml


