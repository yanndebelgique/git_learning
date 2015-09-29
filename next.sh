#!/bin/bash

IN_MASTER_BRANCH=$(git status | head -n 1 | grep 'On branch master')

if [ -n "$IN_MASTER_BRANCH" ];
then
  sh start.sh
else
  current_commit_hash=$(sh current_commit_hash)
  current_commit_number=$(cat ~/tmp/git_extras_hashes | grep -n "$current_commit_hash" | awk -F':' '{print $1}')
  next_commit_number = $current_commit_number - 1
  next_commit_hash =  $(sed -e $next_commit_number'q;d' ~/tmp/git_extras_hashes)
  git checkout $next_commit_hash
  echo 'You are in the next commit'
fi
