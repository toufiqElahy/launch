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
  --bootnodes "enode://4d187a3a39a86ecf71124365a198a022e487d6c575a4f57f352f8b657346fca34fbc4c42202d6477649e727ffe645ceb3a78991a552ed791ba5588871c9907cc@13.234.4.127:30303,enode://fdd9608d62cc70e51b6000e61a5bd4d5a3d928487cf95d0bca9a1a38e08c31eefdf7e8a5fa0eff94d23c4b3d4812be7bcb30b9b49e8cfa005892f3fef2709267@13.235.172.86:30303"
