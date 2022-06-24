#!/bin/bash

BASEFILE="${1:-Legend of Zelda, The - A Link to the Past (USA).sfc}"

flips --apply gerudo_exile.ips "$BASEFILE" gerudo_exile/base.sfc
flips --apply parallel_worlds.ips "$BASEFILE" parallel_worlds/base.sfc
flips --apply secrets_past.ups "$BASEFILE" secrets_past/base.sfc
