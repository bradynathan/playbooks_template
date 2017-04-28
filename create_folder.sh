#!/bin/bash
# Author: Nathan Brady
# This script creates a folder for playbooks and creates link
echo "Please enter the path relative the to root of playbooks:"
echo "eg. playbooks/test"
read FOLDER_PATH
LINK_PATH=$(echo $FOLDER_PATH | sed 's/[a-z A-Z 0-9 \. - _]*/\.\./g')
mkdir -p $FOLDER_PATH

cd $FOLDER_PATH

if [ ! -L files ]; then
  ln -s "${LINK_PATH}/files" files
fi
if [ ! -L group_vars ]; then
ln -s "${LINK_PATH}/group_vars" group_vars
fi
if [ ! -L host_vars ]; then
ln -s "${LINK_PATH}/host_vars" host_vars
fi
if [ ! -L hosts ]; then
ln -s "${LINK_PATH}/hosts" hosts
fi
if [ ! -L roles ]; then
ln -s "${LINK_PATH}/roles" roles
fi
if [ ! -L tasks ]; then
ln -s "${LINK_PATH}/tasks" tasks
fi
if [ ! -L templates ]; then
ln -s "${LINK_PATH}/templates" templates
fi
if [ ! -L vars ]; then
ln -s "${LINK_PATH}/vars" vars
fi
if [ ! -L ansible.cfg ]; then
ln -s "${LINK_PATH}/ansible.cfg" ansible.cfg
fi
if [ ! -L modules ]; then
ln -s "${LINK_PATH}/modules" vars
fi
if [ ! -L plugins ]; then
ln -s "${LINK_PATH}/plugins" vars
fi
