roms := Tetris.gb


### Build tools

MD5 := md5sum -c

BINDIR ?=./bin/
RGBASM  ?= $(BINDIR)rgbasm
RGBFIX  ?= $(BINDIR)rgbfix
RGBGFX  ?= $(BINDIR)rgbgfx
RGBLINK ?= $(BINDIR)rgblink
3DSTOOL ?= $(BINDIR)3dstool
MAKEROM ?= $(BINDIR)makerom



all: $(roms)

%.2bpp: %.png
	$(RGBGFX) -o $@ $<

game.o: game.asm bank_*.asm
	$(RGBASM)  -o game.o game.asm

$(roms): game.o
	$(RGBLINK) -n game.sym -m game.map -o $@ $<
	$(RGBFIX) $($*_opt) $@
#	sort $*.sym -o $*.sym

clean:
	rm -f game.o Tetris.gb game.gb *.gb *.bin 3DS/romfs.bin 3DS/exefs.bin game.sym game.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +

compare: $(roms)
	@$(MD5) roms.md5

3ds: $(roms)
	mv $(roms) vc_rom.bin
	cp vc_rom.bin 3DS/romfs/rom/vc_rom.bin
	$(3DSTOOL) -cvtf exefs 3DS/exefs.bin --exefs-dir 3DS/exefs --header 3DS/exefs/header.bin
	$(3DSTOOL) -cvtf romfs 3DS/romfs.bin --romfs-dir 3DS/romfs
	$(3DSTOOL) -cvtf cxi 3DS/Tetris.cxi --header 3DS/exefs/ncch.bin --exh 3DS/exefs/exheader.bin --logo 3DS/exefs/logo.bin --exefs 3DS/exefs.bin --romfs 3DS/romfs.bin
	$(MAKEROM) -f cia -o Tetris.cia -content 3DS/Tetris.cxi:0:0