@echo off

npm install

echo Ensure that "outputPath": "dist/personal" in angular.json

ng build --base-href /personal/

cd dist\personal\browser

move assets ../../../../
move favicon.ico ../../../../
move index.html ../../../../
move main-NI6QBMKX.js ../../../../
move media ../../../../
move polyfills-A7MJM4D4.js ../../../../
move styles-ADVJ72QE.css ../../../../

git add --all

git commit -m "Deploying changes to GitHub pages"

git push