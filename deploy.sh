#!/usr/bin/env bash

set -e

commit_msg=$(git log -1 --pretty=%B)
echo "last message was "\"$commit_msg\"

echo Build

hugo

echo add Build to git submodule


cd public
git add .





git commit -m"$commit_msg"

echo "Deploy"

git push origin main
cd ..

git add public

git commit -m"deployed"
