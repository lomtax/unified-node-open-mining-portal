#!/bin/sh
pattern='"address": '
scryptaddress=$(digitalcoin-cli -datadir=scrypt getaccountaddress 0)
sha256address=$(digitalcoin-cli -datadir=sha256 getaccountaddress 0)
x11address=$(digitalcoin-cli -datadir=x11 getaccountaddress 0)
quote='"'

sudo sed -i "s/$pattern.*/$pattern$quote$scryptaddress$quote,/" ../../pool_configs/./digitalcoin_scrypt.json
sudo sed -i "s/$pattern.*/$pattern$quote$sha256address$quote,/" ../../pool_configs/./digitalcoin_sha256.json
sudo sed -i "s/$pattern.*/$pattern$quote$x11address$quote,/" ../../pool_configs/./digitalcoin_x11.json

