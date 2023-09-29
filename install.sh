#!/bin/sh

SRC=/tmp/linux.config
DST=~/.config

if [ $# -ge 1 ]; then
    echo "Overwriting default config source directory to \"$1\""
    SRC=$1
fi

copy_config() {
    if [ -d $DST/$1 ]; then
        echo "Removing existing \"$DST/$1\" directory..."
        rm -rf $DST/$1
    fi
    echo "Copying \"$SRC/$1\" configuration to \"$DST/$1\"..."
    cp -r $SRC/$1 $DST/$1
}

copy_config nvim
copy_config tmux
