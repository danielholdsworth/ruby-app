#!/bin/bash

GIT_COMMIT_MSG=$(git log --pretty=oneline -n 1)

if [[ $GIT_COMMIT_MSG == *"[$PARAM]"* ]]; then
  echo "Deploy Requested!"
  curl --request POST \
  --url "https://circleci.com/api/v2/project/gh/$CIRCLE_PROJECT_USERNAME/$CIRCLE_PROJECT_REPONAME/pipeline" \
  --header "Circle-Token: $CIRCLE_TOKEN" \
  --header 'content-type: application/json' \
  --data '{"parameters":{"'"$PARAM"'":true}}'
fi

