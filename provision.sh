#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get install --yes \
  linux-image-generic-lts-raring \
  linux-headers-generic-lts-raring \
  python-software-properties \


# set MOZCONFIG env var
if [ ! -f /etc/profile.d/mozconfig.sh ]; then
  echo "export MOZCONFIG=~/mozconfig" | sudo tee /etc/profile.d/mozconfig.sh > /dev/null
fi

mkdir ~/.mozbuild
