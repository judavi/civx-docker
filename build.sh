#!/bin/bash

set -e
date

#################################################################
#                  Build CivX from source                       #
#################################################################
build(){
        NPROC=$(nproc)
        echo "nproc: $NPROC"
        cd /CivX-Qt/src/
        make -j$NPROC -f makefile.unix
        cp civxd /usr/bin/civxd

        echo ""
        echo "Build completed ... copied src/civxd to /usr/bin/civxd"
        echo "Run the application by typing 'civxd' at the command prompt"
        exit 0
}

init(){
        config=~/.civx/civx.conf
        if [ ! -e "$config" ]
        then
           mkdir -p ~/.civx && touch $_/civx.conf
           user=$(pwgen 13 1)
           password=$(pwgen 14 1)
           echo "daemon=1" >> $config
           echo "server=1" >> $config
           echo "rpcuser=$user" >> $config
           echo "rpcpassword=$password" >> $config
           echo "" >> $config
           echo "logtimestamps=1" >> $config
        fi
}


#################################################################
#   Update Ubuntu and install prerequisites for running CivX    #
#################################################################
yum update

init
build
