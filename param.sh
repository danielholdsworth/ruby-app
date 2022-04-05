#!/bin/sh

GIT_COMMIT_MSG=$(git log --pretty=oneline -n 1)

if [[ $GIT_COMMIT_MSG == *"[deploy]"* ]]; then
  echo "Deploy Requested!"

fi

