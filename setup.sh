#!/usr/bin/env bash

set -e

current_path=`pwd`

local_bin="$HOME/.local/bin"
if [ ! -d $local_bin ]; then
    mkdir -p $local_bin
fi
cp mvn $local_bin

local_bash_completion_d="$HOME/.local/etc/bash_completion.d"
cp mvn-completion $local_bash_completion_d
cd $local_bash_completion_d
sh do_completion_flush.sh
cd $current_path
