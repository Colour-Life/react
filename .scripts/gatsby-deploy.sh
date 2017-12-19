#!/bin/sh

cd ~/project
cp -r public/ ../public
git config --global user.email "$GH_EMAIL" > /dev/null 2>&1
git config --global user.name "$GH_NAME" > /dev/null 2>&1
git checkout gh-pages
rm -rf *
cp -r ../public/* ./
git add -A
git commit -m "update docs"
git push -u origin gh-pages
rm -rf ../public

echo "Finished Deployment!"