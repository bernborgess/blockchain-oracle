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
  ./run_on_chain.sh
  exec bash
"

# Third window - off-chain-oracle setup
gnome-terminal -- bash -c "
  ./run_off_chain.sh
  exec bash
"
