roms := Tetris.gb


### Build tools

MD5 := md5sum -c

RGBDS ?=./bin/
RGBASM  ?= $(RGBDS)rgbasm
RGBFIX  ?= $(RGBDS)rgbfix
RGBGFX  ?= $(RGBDS)rgbgfx
RGBLINK ?= $(RGBDS)rgblink



all: $(roms)

%.2bpp: %.png
	$(RGBGFX) -o $@ $<

game.o: game.asm bank_*.asm
	$(RGBASM)  -o game.o game.asm

%.gb: game.o
	$(RGBLINK) -n game.sym -m game.map -o $@ $<
	$(RGBFIX) $($*_opt) $@
	sort $*.sym -o $*.sym

clean:
	rm -f game.o Tetris.gb game.gb game.sym game.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +

compare: $(roms)
	@$(MD5) roms.md5