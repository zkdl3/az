#!/bin/sh

# Change the following address to your ETH addr.
ADDRESS=0xE3C91438804765bdCBF0fdb45337B82058a6a7Ee

USERNAME=$ADDRESS.Father
POOL=us1.ethermine.org:4444
# Change SCHEME according to your POOL. For example:
# ethash:     ethermine
# ethproxy:   BTC.com, Ethermine, PandaMiner, Sparkpool
# ethstratum: Antpool.com, BTC.com, F2pool, Huobipool.com, Miningpoolhub
SCHEME=ethstratum

./bminer -uri $SCHEME://$USERNAME@$POOL -api 127.0.0.1:1880 -max-temperature 65 -intensity 6

