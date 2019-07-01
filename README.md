# tetris-disassembly
Tetris (GB) Disassembly compatible with RGBDS (Tested)
# Building
Download [**Cygwin**](http://cygwin.com/install.html): **setup-x86_64.exe** for 64-bit Windows, **setup-x86.exe** for 32-bit.

Run setup and leave the default settings. At "Select Packages", choose to install the following:

- `make`
- `git`
- `gcc-core`

Then download [**rgbds**](https://github.com/rednex/rgbds/releases/): the latest **win64** or **win32** release. Extract it and put all the `exe` and `dll` files in the **bin** folder.

In the **Cygwin terminal**, enter these commands:

	git clone https://github.com/davFaithid/tetris-disassembly
	cd tetris-disassembly

Then:

	make
