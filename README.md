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

# Other Disassemblies
Be sure to check out [**osnr**'s](https://github.com/osnr/tetris) disassembly of tetris (which is slightly different.)

# Disclaimer
DISCLAIMER: Any and all content presented in this repository is presented for informational and educational purposes only. Commercial usage is expressly prohibited. I (davFaithid) claim no ownership of any code in these repositories. You assume any and all responsibility for using this content responsibly. I (davFaithid) claim no responsibiliy or warranty.
