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
  --bootnodes "enode://6a1a472e42b6f7ba8cf0f4eae60cc2b0b11ad2dbb5e49f38f5610b73a661de7aea660da8bc0ceb29bdf77317529fa90073dea6f4e8441979787ba689327e4baf@103.150.136.112:30303"
