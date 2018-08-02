#!/bin/bash
if [ $# -ne 1 ]; then
    echo "directry name.."
    exit 1
fi

dir=$1
echo "create" $dir
mkdir $dir

echo "cd" $dir
cd $dir

pwd

echo "npm init -y"
npm init -y

echo "npm install webpack webpack-cli typescript ts-loader html-loader"
npm install webpack webpack-cli typescript ts-loader html-loader

echo "npm install @types/jquery"
npm install @types/jquery


echo "cp file.js"
cp ../file.js file.js

echo "node file.js"
node file.js
rm file.js

echo "cp tsconfig.json"
cp ../_tmp_tsconfig.json tsconfig.json

echo "cp webpack.config.js"
cp ../_tmp_webpack.config.js webpack.config.js

echo "cp main.html"
mkdir html
cp ../_tmp_main.html html/main.html

mkdir src

echo "cp main.ts"
cp ../_tmp_main.ts src/main.ts

echo "npm run build"
npm run build