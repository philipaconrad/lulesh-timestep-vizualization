#!/bin/bash

# Only use Wget if we don't have the tar file on hand.
if [ ! -f visit2_13_3.linux-x86_64-ubuntu18.tar.gz ]; then
    wget http://portal.nersc.gov/project/visit/releases/2.13.3/visit2_13_3.linux-x86_64-ubuntu18.tar.gz
fi

# Untar and rename to something cleaner.
tar -xzvf visit2_13_3.linux-x86_64-ubuntu18.tar.gz && mv visit2_13_3.linux-x86_64 visit
