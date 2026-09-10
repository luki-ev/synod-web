#!/bin/bash

git pull
git remote update
git merge upstream/master
cd .github/workflows
find . -type f ! -name 'main.yml' -print0 | xargs -0 git rm -f
cd ../..
