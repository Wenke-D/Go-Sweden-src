#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init

git config user.email "Matthieu.Du@outlook.com"
git config user.name "Wenke-D"

git add -A
git commit -m 'deploy'

git remote add origin https://github.com/Wenke-D/Go-Sweden.git
git branch -M main
git push -u origin main --force


cd -
