#!/bin/bash

status_code=$(curl --write-out %{http_code} --silent --output /dev/null https://circleciruby.herokuapp.com/)

if [[ "$status_code" -ne 200 ]] ; then
  echo "Site status is $status_code"
  exit 1
else
  exit 0
fi