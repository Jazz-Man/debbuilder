#!/usr/bin/env bash

set -o pipefail -e

apt-get clean
apt autoremove -y
apt autoclean -y
rm -rf /var/lib/apt/lists/*
rm -rf /tmp/* /var/tmp/*
rm -rf /var/cache/apt