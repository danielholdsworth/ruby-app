#!/bin/bash

GIT_COMMIT_MSG=$(git log --pretty=oneline -n 1)

if [[ $GIT_COMMIT_MSG == *"[deploy]"* ]]; then
  echo "Deploy Requested!"
  curl --request POST \
  --url https://circleci.com/api/v2/project/gh/danielholdsworth/ruby-app/pipeline \
  --header 'Circle-Token: a21996172f944cf4648fd21dc051911f6f335064' \
  --header 'content-type: application/json' \
  --data '{"parameters":{"deploy":true}}'
fi

