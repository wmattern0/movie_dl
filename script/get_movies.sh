#!/bin/bash
SCRIPT_NAME=$0
echo "starting SCRIPT_NAME: $SCRIPT_NAME"
DEFAULT_CONF_FILE="/cygdrive/c/dev/movie_dl/conf/default.conf"

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
fi

if [ "$1" != "" ]; then
    echo "Positional parameter 1 contains something"
    CONF_FILE=$1
else
    echo "Positional parameter 1 is empty"
    CONF_FILE=$DEFAULT_CONF_FILE
fi

MOVIES_DEST="/cygdrive/f/Shitzor/Movies"
echo "conf: $CONF_FILE"
echo "file dest: $MOVIES_DEST"
wget -i $CONF_FILE -P $MOVIES_DEST/
