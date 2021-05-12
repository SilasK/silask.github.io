#!/usr/bin/env bash

set -e

echo Build

hugo

echo add Build to git submodule

cd public
git add .
git commit -m "Build website"

echo "Deploy"

git push origin master
cd ..
