#!/usr/bin/env sh

set -x #echo on

BOR_DIR=${BOR_DIR:-~/.bor}
DATA_DIR=$BOR_DIR/data

bor --datadir $DATA_DIR \
  --port 30303 \
  --http --http.addr '0.0.0.0' \
  --http.vhosts '*' \
  --http.corsdomain '*' \
  --http.port 8545 \
  --ipcpath $DATA_DIR/bor.ipc \
  --http.api 'eth,net,web3,txpool,bor' \
  --syncmode 'full' \
  --networkid '1370' \
  --miner.gasprice '1000000000' \
  --miner.gaslimit '20000000' \
  --miner.gastarget '20000000' \
  --txpool.nolocals \
  --txpool.accountslots 16 \
  --txpool.globalslots 32768 \
  --txpool.accountqueue 16 \
  --txpool.globalqueue 32768 \
  --txpool.pricelimit '30000000000' \
  --txpool.lifetime '1h30m0s' \
  --maxpeers 200 \
  --metrics \
  --pprof --pprof.port 7071 --pprof.addr '0.0.0.0' \
  --bootnodes "enode://6a1a472e42b6f7ba8cf0f4eae60cc2b0b11ad2dbb5e49f38f5610b73a661de7aea660da8bc0ceb29bdf77317529fa90073dea6f4e8441979787ba689327e4baf@103.150.136.112:30303,enode://232f4fac0186d0607a38a2c6f58fb44a0f2b1098f490b999e105f74c2d57dea756b4b060e61bf9e514b16dbacc936ae03dc7cf54230e06848de040f6fa9a9bcd@103.127.31.223:30303,enode://941bfc447792a8aee9944d37df0ecc709901238968a94e09bce7bbd48843f76ea9db19fd398e7831cb1b34b081ed53d1c9915224db6660032d7acbbf7bac0f72@38.242.144.141:30303"
