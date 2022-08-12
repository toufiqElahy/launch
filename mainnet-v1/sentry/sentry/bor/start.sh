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
  --bootnodes "enode://6a1a472e42b6f7ba8cf0f4eae60cc2b0b11ad2dbb5e49f38f5610b73a661de7aea660da8bc0ceb29bdf77317529fa90073dea6f4e8441979787ba689327e4baf@103.150.136.112:30303,enode://35e994fb684747ce4ebaa993c26a9a6641fe0b821ae03f759492e190de663d97adec8485c3fcbea11094bb10a08ba4b3cd2b51b1a7fa1baa613b84957668898d@103.127.31.223:30303,enode://85e502a80b5fe12dd7bae9f06310fbfeb060ffd34826a263203dda0789a9f42ee0b1777eaaa669b0dee0b58850d8db5d4b6dd033500e9d153b0b1ab2979078f1@38.242.144.141:30303"