# z3_hacks
Remove Flashing and Add Quickswap to Romhacks of A Link to the Past

## Currently Supported RomHacks:
- [The Legend of Zelda: Secrerts of the Past V1.01](https://www.romhacking.net/hacks/6119)
- [The Legend of Zelda: Gerudo Exile V1.3](https://gweilogopher.wixsite.com/website)
- [The Legend of Zelda: Parallel Worlds V1.23](https://www.romhacking.net/hacks/197)

## Usage:
- Ensure that executables for both [asar](https://github.com/RPGHacker/asar) and [flips](https://github.com/Alcaro/Flips) are on your Path.
- Clone this repository and place an unheadered rom of The Legend of Zelda: A Link to the Past (USA) in the main directory.
- Execute `./init.sh [romfile.sfc]` from the main directory to generate the base roms for each romhack.
- Optionally, find a sprite replacement you would like to use, and download the `.zspr` file. (The ones available in ALttPR are available [here](http://alttp.mymm1.com/sprites/).)
- In the appropriate romhack's directory, execute `./build.sh [spritefile.zspr]` to generate a patched file with reduced flashing¹ and quickswap, and your custom sprite injected. To leave the default sprite, you may omit the sprite argument to `build.sh`
- Your patched rom is now available in that directory at `working.sfc`.

¹ Removed flashing consists of the lightning from the initial rain state, the lightning attacks from Vitreous and Agahnim, and the ether medallion.
If you experience photosensitivity, please be careful as everyone's experiences are different and there might still be remaining triggers for you.

Please let me know if you encounter any issues!
