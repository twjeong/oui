#!/bin/sh

echo build oui-app-$1

echo copy app.vue
cp ../applications/oui-app-$1/vue/app.vue ./src/

echo npm run build
npm run build

echo copy app.js
cp ./dist/app.common.js ../applications/oui-app-$1/vue/dist/app.js