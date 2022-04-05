#!bin/bash

GIT_COMMIT_MSG=git log --format=oneline -n 1 $CIRCLE_SHA1
CI_COMMIT_LABEL=[[ "$GIT_COMMIT_MSG" =~ ^.*\[(major|minor|patch)\ ci\]|\[ci\ (major|minor|patch)\].*$ ]] && echo ${BASH_REMATCH[1]}${BASH_REMATCH[2]}

echo $CI_COMMIT_LABEL