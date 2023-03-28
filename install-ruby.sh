#!/bin/bash

# Install the EPEL repository
sudo yum install epel-release

# Install the necessary dependencies
sudo yum install gcc openssl-devel readline-devel zlib-devel

# Download the Ruby source code
cd ~
wget https://cache.ruby-lang.org/pub/ruby/2.6/ruby-2.6.0.tar.gz

# Extract the source code
tar xvzf ruby-2.6.0.tar.gz

# Configure the source code
cd ruby-2.6.0
./configure

# Compile the source code
make

# Install Ruby
sudo make install

# Verify that Ruby 2.6 is installed
ruby -v
