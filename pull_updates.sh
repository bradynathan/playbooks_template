#!/bin/bash
# Author: Nathan Brady
# This script is used to quickly pull updates from submodules and commit them.

# Make sure you are working with the latest version of the repository
git pull origin master

# Pull down submodules
git submodule foreach git pull origin master

# Set variable for updated submodules
UPDATED_SUBMODULES=`git status | awk '/new commits/ {print $2}'`

for SUBMODULE in "${UPDATED_SUBMODULES[@]}"
do
  git add $SUBMODULE
done

# Commit changes to submodules
git commit -m "Pulled down update to submodules"

# Upload changes to the repository
git push origin master
