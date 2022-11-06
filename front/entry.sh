#!/bin/sh
source /usr/src/app/.env
echo $VUE_APP_APP_NAME
echo $VUE_APP_FRONT_PORT
npm install -g serve
npm audit fix --force
npm run build
serve -n -s dist -p $VUE_APP_FRONT_PORT