#!/bin/bash
SASS_OPTS=''

if [ "$1" = "--watch" ]
then
  SASS_OPTS='--watch'
fi

echo "Building SASS"
sass $SASS_OPTS --style expanded scss/style.scss:css/style.css
