#!/bin/bash

PROJECT_TYPE=$1
GITHUB_COUNT=$2
GITLAB_COUNT=$3

if [ "$PROJECT_TYPE" == "github" ]; then
  echo "export COMMIT_COUNT=$GITHUB_COUNT" >> $BASH_ENV
elif [ "$PROJECT_TYPE" == "gitlab" ]; then
  echo "export COMMIT_COUNT=$GITLAB_COUNT" >> $BASH_ENV
else
  echo "export COMMIT_COUNT=1" >> $BASH_ENV
fi
