#!/bin/bash
  
cd ./off-chain-oracle;
cp .env.example .env;
yarn install;
sleep 10;
yarn run develop;
exec bash