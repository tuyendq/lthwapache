#!/usr/bin/env bash
cd ~
# Download
URL=http://mirror.downloadvn.com/apache//httpd/httpd-2.4.39.tar.gz
SRC_FILE=$(basename $URL)
echo $SRC_FILE
wget $URL

#Extract source file
SRC_DIR=$(tar -tf $SRC_FILE | head -1)
echo "Checck SRC_DIR variable:" $SRC_DIR
tar xzvf $SRC_FILE

# MUST install prerequisites
# Ubuntu
sudo apt install libapr1 libapr1-dev libaprutil1-dev

#Configure
cd ~/$SRC_DIR
./configure
make
sudo make install

