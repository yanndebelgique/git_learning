#!/bin/bash

IN_MASTER_BRANCH=$(git status | head -n 1 | grep 'On branch master')

if [ -n "$IN_MASTER_BRANCH" ];
then
  echo 'do nothing';
else
  git checkout master
fi
