#!/bin/sh
pattern='"address": '
newAddress=$(digitalcoin-cli getaccountaddress 0)
quote='"'

sudo sed -i "s/$pattern.*/$pattern$quote$newAddress$quote,/" ../../pool_configs/./digitalcoin_scrypt.json
sudo sed -i "s/$pattern.*/$pattern$quote$newAddress$quote,/" ../../pool_configs/./digitalcoin_sha256.json
sudo sed -i "s/$pattern.*/$pattern$quote$newAddress$quote,/" ../../pool_configs/./digitalcoin_x11.json

