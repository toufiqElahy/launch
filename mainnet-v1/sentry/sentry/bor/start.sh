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
  --bootnodes "enode://b50f9826d7638cfb9877cb74e639c807fb30c3a31aab43d91001b4686b03ebfa7a4134378971cbd0624010db9af1923bf6d9a5d03a2455b655edc68acbf5b6cf@192.46.209.67:30303,enode://96fcde5df4880581dee9e11043aea16f0feb5f2a7d6ad5c03e46b18710ea681bf4a07ac3304226d2da1719f20196b829fa15b7eb85a30eff6e8c4f8772ff17f3@103.127.31.82:30303"
