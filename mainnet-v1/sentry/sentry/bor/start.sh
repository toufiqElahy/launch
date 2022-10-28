#!/usr/bin/env sh

set -x #echo on

BOR_DIR=${BOR_DIR:-~/.bor}
DATA_DIR=$BOR_DIR/data

bor --datadir $DATA_DIR \
  --port 30303 \
  --http --http.addr '0.0.0.0' \
  --http.vhosts '*' \
  --http.corsdomain '*' \
  --syncmode 'full' \
  --http.port 8545 \
  --http.api 'eth,net,web3,txpool,admin' \
  --ipcpath $DATA_DIR/bor.ipc \
  --networkid '1370' \
  --miner.gasprice '1000000000' \
  --maxpeers 200 \
  --metrics \
  --pprof --pprof.port 7071 --pprof.addr '0.0.0.0' \
  --bootnodes "enode://2e2855ee84208895843891a422768fff53e8b9a3816acb22c874343bb64e4559affe24d6176034727122e901c41243074c5456f32adc0a8db65f58c37b9dff09@103.150.136.112:30303"
