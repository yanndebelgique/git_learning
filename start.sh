#!/bin/bash
#writes to a local file the git commit hashes
git log | grep '^commit ' | awk '{ print $2, " "}' > ~/tmp/git_extras_hashes
echo "hi there! lets explore this git repo. first things first.\n"
echo "Lets go to the first commit."
sh first_commit | tail -n 1
echo 'please type "git_learn next" to go to the next commit\n'
echo 'please type "git_learn previous" to go back to the previous commit \n'
