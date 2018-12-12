#!/bin/bash

echo -e "\033[0;32mAdding Submodules...\033[0m"

git submodule init
git submodule update --recursive --remote

echo -e "\033[0;32mInstalling via npm...\033[0m"

npm install

echo -e "\033[0;32mBuilding via npm...\033[0m"

npm run build