#!/bin/bash

# -----------------------------------------------------------------------------
# Install Ubuntu dependencies.
sudo apt-get install -y libhdf5-dev hdf5-tools
sudo apt-get install -y build-essential gfortran


# -----------------------------------------------------------------------------
# Fetch and build the Silo library.
mkdir -p deps
pushd deps

if [ ! -d silo-4.10.2-bsd ]; then
    # We have to pretend to be a web browser because LLNL has blocked cURL and Wget.
    wget https://wci.llnl.gov/content/assets/docs/simulation/computer-codes/silo/silo-4.10.2/silo-4.10.2-bsd.tar.gz --user-agent ="User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:23.0) Gecko/20100101 Firefox/23.0"
    tar -xzvf silo-4.10.2-bsd.tar.gz
fi

# Create dir for Silo's build.
mkdir -p silo
pushd silo-4.10.2-bsd
./configure --prefix=$(pwd)/../silo --with-hdf5=/usr/include/hdf5/serial,/usr/lib/x86_64-linux-gnu/hdf5/serial
make
make install

popd
popd


