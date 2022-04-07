#!/bin/bash

GIT_COMMIT_MSG=$(git log --pretty=oneline -n 1)

if [[ $GIT_COMMIT_MSG == *"[deploy]"* ]]; then
  echo "Deploy Requested!"
  curl --request POST \
  --url "https://circleci.com/api/v2/project/gh/$ORG/$PROJECT/pipeline" \
  --header "Circle-Token: $CIRCLE_TOKEN" \
  --header 'content-type: application/json' #\
  #--data "{'parameters':{$PARAM:$BOOL}}"
fi

