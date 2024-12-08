#!/bin/bash

# on-chain-oracle setup
cd ./on-chain-oracle;
cp .env.example .env;
yarn install;
truffle compile;
truffle migrate;