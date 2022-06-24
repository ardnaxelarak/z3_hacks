#!/bin/bash

rm working.sfc
cp base.sfc working.sfc
if [ ! -z "$1" ]; then
  asar "-Dsprite=$1" ../sprite.asm working.sfc
fi
asar base_mods.asm working.sfc
