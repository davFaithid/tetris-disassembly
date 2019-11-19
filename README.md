# tetris-disassembly
Tetris (GB) Disassembly compatible with RGBDS (Tested)
# Building
Download [**Cygwin**](http://cygwin.com/install.html): **setup-x86_64.exe** for 64-bit Windows, **setup-x86.exe** for 32-bit.

Run setup and leave the default settings. At "Select Packages", choose to install the following:

- `make`
- `git`
- `gcc-core`

In the **Cygwin terminal**, enter these commands:

	git clone https://github.com/davFaithid/tetris-disassembly
	cd tetris-disassembly

Then download [**rgbds**](https://github.com/rednex/rgbds/releases/): the latest **win64** or **win32** release. Extract it and put all the `exe` and `dll` files in a folder called **bin** in `tetris-disassembly`.

Then:

	make

#3DS Experimental Version
As an experiment, I am trying to make a 3DS VC version too utilizing similar assets to [**this awesome program**] (https://gbatemp.net/threads/437118/)
Feel free to test it, it is not fully supported yet but hopefully it soon will be.
It now requires [3dstool] (https://github.com/dnasdw/3dstool/releases/latest) and [makerom] (https://github.com/jakcron/Project_CTR/releases/latest) and the command for 3DS version is

	make 3ds

and should produce `Tetris.cia` and feel free to test in [Citra] (https://citra-emu.org/) or on console.
# Other Disassemblies
Be sure to check out [**osnr**'s](https://github.com/osnr/tetris) disassembly of tetris (which is slightly different.)

# Disclaimer
DISCLAIMER: Any and all content presented in this repository is presented for informational and educational purposes only. Commercial usage is expressly prohibited. I (davFaithid) claim no ownership of any code in these repositories. You (the "user" or "end user") assume any and all responsibility for using this content responsibly. I (davFaithid) claim no responsibiliy or warranty.
