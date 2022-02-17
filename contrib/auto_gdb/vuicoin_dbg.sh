#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.vuicoincore/vuicoind.pid file instead
vuicoin_pid=$(<~/.vuicoincore/testnet3/vuicoind.pid)
sudo gdb -batch -ex "source debug.gdb" vuicoind ${vuicoin_pid}
