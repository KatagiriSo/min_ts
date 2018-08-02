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

echo "cp file.js"
cp ../file.js file.js

echo "node file.js"
node file.js
rm file.js

echo "cp tsconfig.json"
cp ../_tmp_tsconfig.json tsconfig.json

echo "cp webpack.config.js"
cp ../_tmp_webpack.config.js webpack.config.js
