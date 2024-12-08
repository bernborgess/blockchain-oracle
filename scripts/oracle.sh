#!/bin/bash

# Open terminal windows and execute commands sequentially

# First window - oracle setup
gnome-terminal -- bash -c "
  sleep 1;
  ganache -a 3 -d -m 'stomach wage stem judge control beauty glue chapter cannon kitchen pilot orbit';
  exec bash
"

# Second window - on-chain-oracle setup
gnome-terminal -- bash -c "
  cd ./on-chain-oracle;
  cp .env.example .env;
  yarn install;
  truffle compile;
  truffle migrate;
  exec bash
"

# Third window - off-chain-oracle setup
gnome-terminal -- bash -c "
  cd ./off-chain-oracle;
  cp .env.example .env;
  yarn install;
  sleep 10;
  yarn run develop;
  exec bash
"
