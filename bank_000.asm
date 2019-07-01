; Disassembly of "Tetris.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    jp Jump_000_028b


    nop
    nop
    nop
    nop
    nop

RST_08::
    jp Jump_000_028b


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_10::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_18::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_20::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_28::
    add a
    pop hl
    ld e, a
    ld d, $00
    add hl, de
    ld e, [hl]
    inc hl

RST_30::
    ld d, [hl]
    push de
    pop hl
    jp hl


    rst $38
    rst $38
    rst $38
    rst $38

RST_38::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

VBlankInterrupt::
    jp Jump_000_01fd


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

LCDCInterrupt::
    jp Jump_000_2712


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

TimerOverflowInterrupt::
    jp Jump_000_2712


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SerialTransferCompleteInterrupt::
    jp Jump_000_017e


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

JoypadTransitionInterrupt::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Boot::
    nop
    jp Jump_000_0150


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "TETRIS", $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

HeaderNewLicenseeCode::
    db $00, $00

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $00

HeaderROMSize::
    db $00

HeaderRAMSize::
    db $00

HeaderDestinationCode::
    db $00

HeaderOldLicenseeCode::
    db $01

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $0b

HeaderGlobalChecksum::
    db $89, $b5

Jump_000_0150:
    jp Jump_000_028b


    call Call_000_2a2b

jr_000_0156:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_0156

    ld b, [hl]

jr_000_015d:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_015d

    ld a, [hl]
    and b
    ret


Call_000_0166:
    ld a, e
    add [hl]
    daa
    ld [hl+], a
    ld a, d
    adc [hl]
    daa
    ld [hl+], a
    ld a, $00
    adc [hl]
    daa
    ld [hl], a
    ld a, $01
    ldh [$e0], a
    ret nc

    ld a, $99
    ld [hl-], a
    ld [hl-], a
    ld [hl], a
    ret


Jump_000_017e:
    push af
    push hl
    push de
    push bc
    call Call_000_018e
    ld a, $01
    ldh [$cc], a
    pop bc
    pop de
    pop hl
    pop af
    reti


Call_000_018e:
    ldh a, [$cd]
    rst $28
    sbc e
    ld bc, $01c2
    rst $00
    ld bc, $01dd
    ld a, $28
    ldh a, [$e1]
    cp $07
    jr z, jr_000_01a9

    cp $06
    ret z

    ld a, $06
    ldh [$e1], a
    ret


jr_000_01a9:
    ldh a, [rSB]
    cp $55
    jr nz, jr_000_01b7

    ld a, $29
    ldh [$cb], a
    ld a, $01
    jr jr_000_01bf

jr_000_01b7:
    cp $29
    ret nz

    ld a, $55
    ldh [$cb], a
    xor a

jr_000_01bf:
    ldh [rSC], a
    ret


    ldh a, [rSB]
    ldh [$d0], a
    ret


    ldh a, [rSB]
    ldh [$d0], a
    ldh a, [$cb]
    cp $29
    ret z

    ldh a, [$cf]
    ldh [rSB], a
    ld a, $ff
    ldh [$cf], a
    ld a, $80
    ldh [rSC], a
    ret


    ldh a, [rSB]
    ldh [$d0], a
    ldh a, [$cb]
    cp $29
    ret z

    ldh a, [$cf]
    ldh [rSB], a
    ei
    call Call_000_0b07
    ld a, $80
    ldh [rSC], a
    ret


    ldh a, [$cd]
    cp $02
    ret nz

    xor a
    ldh [rIF], a
    ei
    ret


Jump_000_01fd:
    push af
    push bc
    push de
    push hl
    ldh a, [$ce]
    and a
    jr z, jr_000_0218

    ldh a, [$cb]
    cp $29
    jr nz, jr_000_0218

    xor a
    ldh [$ce], a
    ldh a, [$cf]
    ldh [rSB], a
    ld hl, $ff02
    ld [hl], $81

jr_000_0218:
    call Call_000_2240
    call Call_000_242c
    call Call_000_2417
    call Call_000_23fe
    call Call_000_23ec
    call Call_000_23dd
    call Call_000_23ce
    call Call_000_23bf
    call Call_000_23b0
    call Call_000_23a1
    call Call_000_2392
    call Call_000_2383
    call Call_000_2358
    call Call_000_2349
    call Call_000_233a
    call Call_000_232b
    call Call_000_231c
    call Call_000_230d
    call Call_000_22fe
    call Call_000_1f32
    call $ffb6
    call Call_000_192e
    ld a, [$c0ce]
    and a
    jr z, jr_000_027a

    ldh a, [$98]
    cp $03
    jr nz, jr_000_027a

    ld hl, $986d
    call Call_000_249b
    ld a, $01
    ldh [$e0], a
    ld hl, $9c6d
    call Call_000_249b
    xor a
    ld [$c0ce], a

jr_000_027a:
    ld hl, $ffe2
    inc [hl]
    xor a
    ldh [rSCX], a
    ldh [rSCY], a
    inc a
    ldh [$85], a
    pop hl
    pop de
    pop bc
    pop af
    reti


Jump_000_028b:
    xor a
    ld hl, $dfff
    ld c, $10
    ld b, $00

jr_000_0293:
    ld [hl-], a
    dec b
    jr nz, jr_000_0293

    dec c
    jr nz, jr_000_0293

Jump_000_029a:
    ld a, $01
    di
    ldh [rIF], a
    ldh [rIE], a
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [$a4], a
    ldh [rSTAT], a
    ldh [rSB], a
    ldh [rSC], a
    ld a, $80
    ldh [rLCDC], a

jr_000_02b2:
    ldh a, [rLY]
    cp $94
    jr nz, jr_000_02b2

    ld a, $03
    ldh [rLCDC], a
    ld a, $e4
    ldh [rBGP], a
    ldh [rOBP0], a
    ld a, $c4
    ldh [rOBP1], a
    ld hl, $ff26
    ld a, $80
    ld [hl-], a
    ld a, $ff
    ld [hl-], a
    ld [hl], $77
    ld a, $01
    ld [$2000], a
    ld sp, $cfff
    xor a
    ld hl, $dfff
    ld b, $00

jr_000_02df:
    ld [hl-], a
    dec b
    jr nz, jr_000_02df

    ld hl, $cfff
    ld c, $10
    ld b, $00

jr_000_02ea:
    ld [hl-], a
    dec b
    jr nz, jr_000_02ea

    dec c
    jr nz, jr_000_02ea

    ld hl, $9fff
    ld c, $20
    xor a
    ld b, $00

jr_000_02f9:
    ld [hl-], a
    dec b
    jr nz, jr_000_02f9

    dec c
    jr nz, jr_000_02f9

    ld hl, $feff
    ld b, $00

jr_000_0305:
    ld [hl-], a
    dec b
    jr nz, jr_000_0305

    ld hl, $fffe
    ld b, $80

jr_000_030e:
    ld [hl-], a
    dec b
    jr nz, jr_000_030e

    ld c, $b6
    ld b, $0c
    ld hl, $2ac7

jr_000_0319:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_0319

    call $27e9
    call $7ff3
    ld a, $09
    ldh [rIE], a
    ld a, $37
    ldh [$c0], a
    ld a, $1c
    ldh [$c1], a
    ld a, $24
    ldh [$e1], a
    ld a, $80
    ldh [rLCDC], a
    ei
    xor a
    ldh [rIF], a
    ldh [rWY], a
    ldh [rWX], a
    ldh [rTMA], a

Jump_000_0343:
    call Call_000_29fa
    call Call_000_0377
    call $7ff0
    ldh a, [$80]
    and $0f
    cp $0f
    jp z, Jump_000_029a

    ld hl, $ffa6
    ld b, $02

jr_000_035a:
    ld a, [hl]
    and a
    jr z, jr_000_035f

    dec [hl]

jr_000_035f:
    inc l
    dec b
    jr nz, jr_000_035a

    ldh a, [$c5]
    and a
    jr z, jr_000_036c

    ld a, $09
    ldh [rIE], a

jr_000_036c:
    ldh a, [$85]
    and a
    jr z, jr_000_036c

    xor a
    ldh [$85], a
    jp Jump_000_0343


Call_000_0377:
    ldh a, [$e1]
    rst $28
    add hl, hl
    inc e
    dec a
    dec e
    xor b
    ld [de], a
    rst $18
    ld [de], a
    ld h, c
    dec e
    add c
    dec e
    add hl, de
    inc b
    and $04
    xor b
    inc d
    ldh a, [rNR14]
    ld l, e
    ld a, [de]
    dec de
    ld e, $71
    rra
    ld a, d
    rra
    adc c
    dec d
    inc d
    dec d
    rst $18
    dec d
    inc hl
    ld d, $8d
    ld d, $de
    ld d, $4f
    rla
    ld [hl], a
    add hl, de
    db $e4
    ld b, $99
    rlca
    sub d
    ld [$0953], sp
    sub l
    dec bc
    ld c, a
    dec c
    ld b, c
    dec bc
    sub [hl]
    dec c
    add a
    ld c, $76
    ld de, $0dfd
    xor $0e
    add hl, hl
    ld e, $9c
    ld e, $e6
    inc bc
    db $10
    inc b
    rl c
    ld c, d
    ld [de], a
    ld h, b
    ld [de], a
    add b
    ld [de], a
    inc [hl]
    ld b, $64
    ld b, $17
    inc de
    ld l, c
    inc de
    adc b
    inc de
    or l
    inc de
    rl e
    ld [c], a
    inc de
    add hl, de
    inc d
    ld c, c
    inc d
    ld a, a
    inc de
    ld a, $28
    call Call_000_2874
    call Call_000_282b
    ld de, $4a4f
    call Call_000_283f
    call Call_000_17ee
    ld hl, $c300
    ld de, $64d0

jr_000_03fb:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, h
    cp $c4
    jr nz, jr_000_03fb

    ld a, $d3
    ldh [rLCDC], a
    ld a, $7d
    ldh [$a6], a
    ld a, $25
    ldh [$e1], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld a, $06
    ldh [$e1], a
    ret


    call Call_000_2874
    xor a
    ldh [$e9], a
    ldh [$98], a
    ldh [$9c], a
    ldh [$9b], a
    ldh [$fb], a
    ldh [$9f], a
    ldh [$e3], a
    ldh [$e7], a
    ldh [$c7], a
    call Call_000_22f3
    call Call_000_26a5
    call Call_000_282b
    ld hl, $c800

jr_000_043b:
    ld a, $2f
    ld [hl+], a
    ld a, h
    cp $cc
    jr nz, jr_000_043b

    ld hl, $c801
    call Call_000_26fd
    ld hl, $c80c
    call Call_000_26fd
    ld hl, $ca41
    ld b, $0c
    ld a, $8e

jr_000_0456:
    ld [hl+], a
    dec b
    jr nz, jr_000_0456

    ld de, $4bb7
    call Call_000_283f
    call Call_000_17ee
    ld hl, $c000
    ld [hl], $80
    inc l
    ld [hl], $10
    inc l
    ld [hl], $58
    ld a, $03
    ld [$dfe8], a
    ld a, $d3
    ldh [rLCDC], a
    ld a, $07
    ldh [$e1], a
    ld a, $7d
    ldh [$a6], a
    ld a, $04
    ldh [$c6], a
    ldh a, [$e4]
    and a
    ret nz

    ld a, $13
    ldh [$c6], a
    ret


jr_000_048c:
    ld a, $37
    ldh [$c0], a
    ld a, $09
    ldh [$c2], a
    xor a
    ldh [$c5], a
    ldh [$b0], a
    ldh [$ed], a
    ldh [$ea], a
    ld a, $63
    ldh [$eb], a
    ld a, $30
    ldh [$ec], a
    ldh a, [$e4]
    cp $02
    ld a, $02
    jr nz, jr_000_04c7

    ld a, $77
    ldh [$c0], a
    ld a, $09
    ldh [$c3], a
    ld a, $02
    ldh [$c4], a
    ld a, $64
    ldh [$eb], a
    ld a, $30
    ldh [$ec], a
    ld a, $11
    ldh [$b0], a
    ld a, $01

jr_000_04c7:
    ldh [$e4], a
    ld a, $0a
    ldh [$e1], a
    call Call_000_2874
    call Call_000_2801
    ld de, $4d1f
    call Call_000_283f
    call Call_000_17ee
    ld a, $d3
    ldh [rLCDC], a
    ret


    ld a, $ff
    ldh [$e9], a
    ret


    ldh a, [$a6]
    and a
    jr nz, jr_000_04f5

    ld hl, $ffc6
    dec [hl]
    jr z, jr_000_048c

    ld a, $7d
    ldh [$a6], a

jr_000_04f5:
    call Call_000_0b07
    ld a, $55
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    ldh a, [$cc]
    and a
    jr z, jr_000_050f

    ldh a, [$cb]
    and a
    jr nz, jr_000_0544

    xor a
    ldh [$cc], a
    jr jr_000_0576

jr_000_050f:
    ldh a, [$81]
    ld b, a
    ldh a, [$c5]
    bit 2, b
    jr nz, jr_000_0560

    bit 4, b
    jr nz, jr_000_056f

    bit 5, b
    jr nz, jr_000_0574

    bit 3, b
    ret z

    and a
    ld a, $08
    jr z, jr_000_0554

    ld a, b
    cp $08
    ret nz

    ldh a, [$cb]
    cp $29
    jr z, jr_000_0544

    ld a, $29
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a

jr_000_053a:
    ldh a, [$cc]
    and a
    jr z, jr_000_053a

    ldh a, [$cb]
    and a
    jr z, jr_000_0576

jr_000_0544:
    ld a, $2a

jr_000_0546:
    ldh [$e1], a
    xor a
    ldh [$a6], a
    ldh [$c2], a
    ldh [$c3], a
    ldh [$c4], a
    ldh [$e4], a
    ret


jr_000_0554:
    push af
    ldh a, [$80]
    bit 7, a
    jr z, jr_000_055d

    ldh [$f4], a

jr_000_055d:
    pop af
    jr jr_000_0546

jr_000_0560:
    xor $01

jr_000_0562:
    ldh [$c5], a
    and a
    ld a, $10
    jr z, jr_000_056b

    ld a, $60

jr_000_056b:
    ld [$c001], a
    ret


jr_000_056f:
    and a
    ret nz

    xor a
    jr jr_000_0560

jr_000_0574:
    and a
    ret z

jr_000_0576:
    xor a
    jr jr_000_0562

Call_000_0579:
    ldh a, [$e4]
    and a
    ret z

    call Call_000_0b07
    xor a
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    ldh a, [$81]
    bit 3, a
    jr z, jr_000_059a

    ld a, $33
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a
    ld a, $06
    ldh [$e1], a
    ret


jr_000_059a:
    ld hl, $ffb0
    ldh a, [$e4]
    cp $02
    ld b, $10
    jr z, jr_000_05a7

    ld b, $1d

jr_000_05a7:
    ld a, [hl]
    cp b
    ret nz

    ld a, $06
    ldh [$e1], a
    ret


Call_000_05af:
    ldh a, [$e4]
    and a
    ret z

    ldh a, [$e9]
    cp $ff
    ret z

    ldh a, [$ea]
    and a
    jr z, jr_000_05c2

    dec a
    ldh [$ea], a
    jr jr_000_05de

jr_000_05c2:
    ldh a, [$eb]
    ld h, a
    ldh a, [$ec]
    ld l, a
    ld a, [hl+]
    ld b, a
    ldh a, [$ed]
    xor b
    and b
    ldh [$81], a
    ld a, b
    ldh [$ed], a
    ld a, [hl+]
    ldh [$ea], a
    ld a, h
    ldh [$eb], a
    ld a, l
    ldh [$ec], a
    jr jr_000_05e1

jr_000_05de:
    xor a
    ldh [$81], a

jr_000_05e1:
    ldh a, [$80]
    ldh [$ee], a
    ldh a, [$ed]
    ldh [$80], a
    ret


    xor a
    ldh [$ed], a
    jr jr_000_05de

    ret


Call_000_05f0:
    ldh a, [$e4]
    and a
    ret z

    ldh a, [$e9]
    cp $ff
    ret nz

    ldh a, [$80]
    ld b, a
    ldh a, [$ed]
    cp b
    jr z, jr_000_061a

    ldh a, [$eb]
    ld h, a
    ldh a, [$ec]
    ld l, a
    ldh a, [$ed]
    ld [hl+], a
    ldh a, [$ea]
    ld [hl+], a
    ld a, h
    ldh [$eb], a
    ld a, l
    ldh [$ec], a
    ld a, b
    ldh [$ed], a
    xor a
    ldh [$ea], a
    ret


jr_000_061a:
    ldh a, [$ea]
    inc a
    ldh [$ea], a
    ret


Call_000_0620:
    ldh a, [$e4]
    and a
    ret z

    ldh a, [$e9]
    and a
    ret nz

    ldh a, [$ee]
    ldh [$80], a
    ret


jr_000_062d:
    ld hl, $ff02
    set 7, [hl]
    jr jr_000_063e

    ld a, $03
    ldh [$cd], a
    ldh a, [$cb]
    cp $29
    jr nz, jr_000_062d

jr_000_063e:
    call Call_000_14b3
    ld a, $80
    ld [$c210], a
    call Call_000_26c5
    ldh [$ce], a
    xor a
    ldh [rSB], a
    ldh [$cf], a
    ldh [$dc], a
    ldh [$d2], a
    ldh [$d3], a
    ldh [$d4], a
    ldh [$d5], a
    ldh [$e3], a
    call $7ff3
    ld a, $2b
    ldh [$e1], a
    ret


    ldh a, [$cb]
    cp $29
    jr z, jr_000_0680

    ldh a, [$f0]
    and a
    jr z, jr_000_068d

    xor a
    ldh [$f0], a
    ld de, $c201
    call Call_000_14f6
    call Call_000_157b
    call Call_000_26c5
    jr jr_000_068d

jr_000_0680:
    ldh a, [$81]
    bit 0, a
    jr nz, jr_000_068d

    bit 3, a
    jr nz, jr_000_068d

    call Call_000_1514

jr_000_068d:
    ldh a, [$cb]
    cp $29
    jr z, jr_000_06b1

    ldh a, [$cc]
    and a
    ret z

    xor a
    ldh [$cc], a
    ld a, $39
    ldh [$cf], a
    ldh a, [$d0]
    cp $50
    jr z, jr_000_06d1

    ld b, a
    ldh a, [$c1]
    cp b
    ret z

    ld a, b
    ldh [$c1], a
    ld a, $01
    ldh [$f0], a
    ret


jr_000_06b1:
    ldh a, [$81]
    bit 3, a
    jr nz, jr_000_06d9

    bit 0, a
    jr nz, jr_000_06d9

    ldh a, [$cc]
    and a
    ret z

    xor a
    ldh [$cc], a
    ldh a, [$cf]
    cp $50
    jr z, jr_000_06d1

    ldh a, [$c1]

jr_000_06ca:
    ldh [$cf], a
    ld a, $01
    ldh [$ce], a
    ret


jr_000_06d1:
    call Call_000_17ee
    ld a, $16
    ldh [$e1], a
    ret


jr_000_06d9:
    ld a, $50
    jr jr_000_06ca

jr_000_06dd:
    ld hl, $ff02
    set 7, [hl]
    jr jr_000_0703

    ld a, $03
    ldh [$cd], a
    ldh a, [$cb]
    cp $29
    jr nz, jr_000_06dd

    call Call_000_0b10
    call Call_000_0b10
    call Call_000_0b10
    ld b, $00
    ld hl, $c300

jr_000_06fc:
    call Call_000_0b10
    ld [hl+], a
    dec b
    jr nz, jr_000_06fc

jr_000_0703:
    call Call_000_2874
    call Call_000_2801
    ld de, $525c
    call Call_000_283f
    call Call_000_17ee
    ld a, $2f
    call Call_000_2038
    ld a, $03
    ldh [$ce], a
    xor a
    ldh [rSB], a
    ldh [$cf], a
    ldh [$dc], a
    ldh [$d2], a
    ldh [$d3], a
    ldh [$d4], a
    ldh [$d5], a
    ldh [$e3], a

jr_000_072c:
    ldh [$cc], a
    ld hl, $c400
    ld b, $0a
    ld a, $28

jr_000_0735:
    ld [hl+], a
    dec b
    jr nz, jr_000_0735

    ldh a, [$d6]
    and a
    jp nz, Jump_000_07da

    call Call_000_157b
    ld a, $d3
    ldh [rLCDC], a
    ld hl, $c080

jr_000_0749:
    ld de, $0772
    ld b, $20

jr_000_074e:
    call $0792
    ld hl, $c200
    ld de, $2741
    ld c, $02
    call Call_000_17da
    call Call_000_087b
    call Call_000_26c5
    xor a
    ldh [$d7], a
    ldh [$d8], a
    ldh [$d9], a
    ldh [$da], a
    ldh [$db], a
    ld a, $17
    ldh [$e1], a
    ret


    ld b, b
    jr z, @-$50

    nop
    ld b, b
    jr nc, @-$50

    jr nz, @+$4a

    jr z, jr_000_072c

    nop
    ld c, b
    jr nc, @-$4f

    jr nz, jr_000_07fb

    jr z, @-$3e

    nop
    ld a, b
    jr nc, jr_000_0749

    jr nz, @-$7e

    jr z, jr_000_074e

    nop
    add b
    jr nc, @-$3d

    jr nz, @+$1c

    ld [hl+], a
    inc de
    dec b
    jr nz, @-$04

    ret


    ldh a, [$cb]
    cp $29
    jr z, jr_000_07c2

    ldh a, [$cc]
    and a
    jr z, jr_000_07b7

    ldh a, [$d0]
    cp $60
    jr z, jr_000_07d7

    cp $06
    jr nc, jr_000_07b0

    ldh [$ac], a

jr_000_07b0:
    ldh a, [$ad]
    ldh [$cf], a
    xor a
    ldh [$cc], a

jr_000_07b7:
    ld de, $c210
    call Call_000_17ca
    ld hl, $ffad
    jr jr_000_082a

jr_000_07c2:
    ldh a, [$81]
    bit 3, a
    jr z, jr_000_07cc

    ld a, $60
    jr jr_000_0819

jr_000_07cc:
    ldh a, [$cc]
    and a
    jr z, jr_000_0821

    ldh a, [$cf]
    cp $60
    jr nz, jr_000_080f

jr_000_07d7:
    call Call_000_17ee

Jump_000_07da:
    ldh a, [$d6]
    and a
    jr nz, jr_000_07f7

    ld a, $18
    ldh [$e1], a
    ldh a, [$cb]
    cp $29
    ret nz

    xor a
    ldh [$a0], a
    ld a, $06
    ld de, $ffe0
    ld hl, $c9a2
    call Call_000_1bc3
    ret


jr_000_07f7:
    ldh a, [$cb]
    cp $29

jr_000_07fb:
    jp nz, Jump_000_0895

    xor a
    ldh [$a0], a
    ld a, $06
    ld de, $ffe0
    ld hl, $c9a2
    call Call_000_1bc3
    jp Jump_000_0895


jr_000_080f:
    ldh a, [$d0]
    cp $06
    jr nc, jr_000_0817

    ldh [$ad], a

jr_000_0817:
    ldh a, [$ac]

jr_000_0819:
    ldh [$cf], a
    xor a
    ldh [$cc], a
    inc a
    ldh [$ce], a

jr_000_0821:
    ld de, $c200
    call Call_000_17ca
    ld hl, $ffac

jr_000_082a:
    ld a, [hl]
    bit 4, b
    jr nz, jr_000_0843

    bit 5, b
    jr nz, jr_000_0855

    bit 6, b
    jr nz, jr_000_085b

    bit 7, b
    jr z, jr_000_084e

    cp $03
    jr nc, jr_000_084e

    add $03
    jr jr_000_0848

jr_000_0843:
    cp $05
    jr z, jr_000_084e

    inc a

jr_000_0848:
    ld [hl], a
    ld a, $01
    ld [$dfe0], a

jr_000_084e:
    call Call_000_087b
    call Call_000_26c5
    ret


jr_000_0855:
    and a
    jr z, jr_000_084e

    dec a
    jr jr_000_0848

jr_000_085b:
    cp $03
    jr c, jr_000_084e

    sub $03
    jr jr_000_0848

    ld b, b
    ld h, b
    ld b, b
    ld [hl], b
    ld b, b
    add b
    ld d, b
    ld h, b
    ld d, b
    ld [hl], b
    ld d, b
    add b
    ld a, b
    ld h, b
    ld a, b
    ld [hl], b
    ld a, b
    add b
    adc b
    ld h, b
    adc b
    ld [hl], b
    adc b
    add b

Call_000_087b:
    ldh a, [$ac]
    ld de, $c201
    ld hl, $0863
    call Call_000_17b9
    ldh a, [$ad]
    ld de, $c211
    ld hl, $086f
    call Call_000_17b9
    ret


    call Call_000_2874

Jump_000_0895:
    xor a
    ld [$c210], a
    ldh [$98], a
    ldh [$9c], a
    ldh [$9b], a
    ldh [$fb], a
    ldh [$9f], a
    ldh [$cc], a
    ldh [rSB], a
    ldh [$ce], a
    ldh [$d0], a
    ldh [$cf], a
    ldh [$d1], a
    call Call_000_26a5
    call Call_000_22f3
    call Call_000_204d
    xor a

jr_000_08b9:
    ldh [$e3], a
    ldh [$e7], a
    call Call_000_17ee
    ld de, $53c4
    push de
    ld a, $01
    ldh [$a9], a
    ldh [$c5], a
    call Call_000_283f

jr_000_08cd:
    pop de
    ld hl, $9c00
    call Call_000_2842
    ld de, $288d
    ld hl, $9c63
    ld c, $0a
    call Call_000_1fd8
    ld hl, $c200
    ld de, $2713
    call Call_000_270a
    ld hl, $c210
    ld de, $271b
    call Call_000_270a
    ld hl, $9951
    ld a, $30
    ldh [$9e], a
    ld [hl], $00
    dec l
    ld [hl], $03
    call Call_000_1b43
    xor a
    ldh [$a0], a
    ldh a, [$cb]
    cp $29
    ld de, $0943
    ldh a, [$ac]
    jr z, jr_000_0913

    ld de, $0933
    ldh a, [$ad]

jr_000_0913:
    ld hl, $98b0
    ld [hl], a
    ld h, $9c
    ld [hl], a
    ld hl, $c080
    ld b, $10
    call $0792
    ld a, $77
    ldh [$c0], a
    ld a, $d3
    ldh [rLCDC], a
    ld a, $19
    ldh [$e1], a
    ld a, $01
    ldh [$cd], a
    ret


    jr jr_000_08b9

    ret nz

    nop
    jr @-$72

    ret nz

    jr nz, jr_000_095c

    add h
    pop bc
    nop
    jr nz, jr_000_08cd

    pop bc
    jr nz, jr_000_095c

    add h
    xor [hl]
    nop
    jr @-$72

    xor [hl]
    jr nz, jr_000_096c

    add h
    xor a
    nop
    jr nz, @-$72

    xor a
    jr nz, jr_000_0992

    ld [$ffe0], sp
    xor a
    ldh [rIF], a
    ldh a, [$cb]

jr_000_095c:
    cp $29
    jp nz, Jump_000_0a65

jr_000_0961:
    call Call_000_0b07
    call Call_000_0b07
    xor a
    ldh [$cc], a
    ld a, $29

jr_000_096c:
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a

jr_000_0972:
    ldh a, [$cc]
    and a
    jr z, jr_000_0972

    ldh a, [rSB]
    cp $55
    jr nz, jr_000_0961

    ld de, $0016
    ld c, $0a
    ld hl, $c902

jr_000_0985:
    ld b, $0a

jr_000_0987:
    xor a
    ldh [$cc], a
    call Call_000_0b07
    ld a, [hl+]
    ldh [rSB], a
    ld a, $81

jr_000_0992:
    ldh [rSC], a

jr_000_0994:
    ldh a, [$cc]
    and a
    jr z, jr_000_0994

    dec b
    jr nz, jr_000_0987

    add hl, de
    dec c
    jr nz, jr_000_0985

    ldh a, [$ac]
    cp $05
    jr z, jr_000_09e3

    ld hl, $ca22
    ld de, $0040

jr_000_09ac:
    add hl, de
    inc a
    cp $05
    jr nz, jr_000_09ac

    ld de, $ca22
    ld c, $0a

jr_000_09b7:
    ld b, $0a

jr_000_09b9:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_000_09b9

    push de
    ld de, $ffd6
    add hl, de
    pop de
    push hl
    ld hl, $ffd6
    add hl, de
    push hl
    pop de
    pop hl
    dec c
    jr nz, jr_000_09b7

    ld de, $ffd6

jr_000_09d3:
    ld b, $0a
    ld a, h
    cp $c8
    jr z, jr_000_09e3

    ld a, $2f

jr_000_09dc:
    ld [hl+], a
    dec b
    jr nz, jr_000_09dc

    add hl, de
    jr jr_000_09d3

jr_000_09e3:
    call Call_000_0b07
    call Call_000_0b07
    xor a
    ldh [$cc], a
    ld a, $29
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a

jr_000_09f4:
    ldh a, [$cc]
    and a
    jr z, jr_000_09f4

    ldh a, [rSB]
    cp $55
    jr nz, jr_000_09e3

    ld hl, $c300
    ld b, $00

jr_000_0a04:
    xor a
    ldh [$cc], a
    ld a, [hl+]
    call Call_000_0b07
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a

jr_000_0a11:
    ldh a, [$cc]
    and a
    jr z, jr_000_0a11

    inc b
    jr nz, jr_000_0a04

jr_000_0a19:
    call Call_000_0b07
    call Call_000_0b07
    xor a
    ldh [$cc], a
    ld a, $30
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a

jr_000_0a2a:
    ldh a, [$cc]
    and a
    jr z, jr_000_0a2a

    ldh a, [rSB]
    cp $56
    jr nz, jr_000_0a19

Jump_000_0a35:
    call Call_000_0afb
    ld a, $09
    ldh [rIE], a
    ld a, $1c
    ldh [$e1], a
    ld a, $02
    ldh [$e3], a
    ld a, $03
    ldh [$cd], a
    ldh a, [$cb]
    cp $29
    jr z, jr_000_0a53

    ld hl, $ff02
    set 7, [hl]

jr_000_0a53:
    ld hl, $c300
    ld a, [hl+]
    ld [$c203], a
    ld a, [hl+]
    ld [$c213], a
    ld a, h
    ldh [$af], a
    ld a, l
    ldh [$b0], a
    ret


Jump_000_0a65:
    ldh a, [$ad]
    inc a
    ld b, a
    ld hl, $ca42
    ld de, $ffc0

jr_000_0a6f:
    dec b
    jr z, jr_000_0a75

    add hl, de
    jr jr_000_0a6f

jr_000_0a75:
    call Call_000_0b07
    xor a
    ldh [$cc], a
    ld a, $55
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_0a83:
    ldh a, [$cc]
    and a
    jr z, jr_000_0a83

    ldh a, [rSB]
    cp $29
    jr nz, jr_000_0a75

    ld de, $0016
    ld c, $0a

jr_000_0a93:
    ld b, $0a

jr_000_0a95:
    xor a
    ldh [$cc], a
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_0a9e:
    ldh a, [$cc]
    and a
    jr z, jr_000_0a9e

    ldh a, [rSB]
    ld [hl+], a
    dec b
    jr nz, jr_000_0a95

    add hl, de
    dec c
    jr nz, jr_000_0a93

jr_000_0aad:
    call Call_000_0b07
    xor a
    ldh [$cc], a
    ld a, $55
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_0abb:
    ldh a, [$cc]
    and a
    jr z, jr_000_0abb

    ldh a, [rSB]
    cp $29
    jr nz, jr_000_0aad

    ld b, $00
    ld hl, $c300

jr_000_0acb:
    xor a
    ldh [$cc], a
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_0ad4:
    ldh a, [$cc]
    and a
    jr z, jr_000_0ad4

    ldh a, [rSB]
    ld [hl+], a
    inc b
    jr nz, jr_000_0acb

jr_000_0adf:
    call Call_000_0b07
    xor a
    ldh [$cc], a
    ld a, $56
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_0aed:
    ldh a, [$cc]
    and a
    jr z, jr_000_0aed

    ldh a, [rSB]
    cp $30
    jr nz, jr_000_0adf

    jp Jump_000_0a35


Call_000_0afb:
    ld hl, $ca42
    ld a, $80
    ld b, $0a

jr_000_0b02:
    ld [hl+], a
    dec b
    jr nz, jr_000_0b02

    ret


Call_000_0b07:
    push bc
    ld b, $fa

jr_000_0b0a:
    ld b, b
    dec b
    jr nz, jr_000_0b0a

    pop bc
    ret


Call_000_0b10:
    push hl
    push bc
    ldh a, [$fc]
    and $fc
    ld c, a
    ld h, $03

jr_000_0b19:
    ldh a, [rDIV]
    ld b, a

jr_000_0b1c:
    xor a

jr_000_0b1d:
    dec b
    jr z, jr_000_0b2a

    inc a
    inc a
    inc a
    inc a
    cp $1c
    jr z, jr_000_0b1c

    jr jr_000_0b1d

jr_000_0b2a:
    ld d, a
    ldh a, [$ae]
    ld e, a
    dec h
    jr z, jr_000_0b38

    or d
    or c
    and $fc
    cp c
    jr z, jr_000_0b19

jr_000_0b38:
    ld a, d
    ldh [$ae], a
    ld a, e
    ldh [$fc], a
    pop bc
    pop hl
    ret


    ld a, $01
    ldh [rIE], a
    ldh a, [$e3]
    and a
    jr nz, jr_000_0b66

    ld b, $44
    ld c, $20
    call Call_000_11a3
    ld a, $02
    ldh [$cd], a
    call Call_000_26d7
    call Call_000_26ea
    call Call_000_157b
    xor a
    ldh [$d6], a
    ld a, $1a
    ldh [$e1], a
    ret


jr_000_0b66:
    cp $05
    ret nz

    ld hl, $c030
    ld b, $12

jr_000_0b6e:
    ld [hl], $f0
    inc hl
    ld [hl], $10
    inc hl
    ld [hl], $b6
    inc hl
    ld [hl], $80
    inc hl
    dec b
    jr nz, jr_000_0b6e

    ld a, [$c3ff]

jr_000_0b80:
    ld b, $0a
    ld hl, $c400

jr_000_0b85:
    dec a
    jr z, jr_000_0b8e

    inc l
    dec b
    jr nz, jr_000_0b85

    jr jr_000_0b80

jr_000_0b8e:
    ld [hl], $2f
    ld a, $03
    ldh [$ce], a
    ret


    ld a, $01
    ldh [rIE], a
    ld hl, $c09c
    xor a
    ld [hl+], a
    ld [hl], $50
    inc l
    ld [hl], $27
    inc l
    ld [hl], $00
    call Call_000_1c68
    call Call_000_1ce3
    call Call_000_2515
    call Call_000_20f7
    call Call_000_2199
    call Call_000_25f5
    call Call_000_22ad
    call Call_000_0bff
    ldh a, [$d5]
    and a
    jr z, jr_000_0bd7

    ld a, $77
    ldh [$cf], a
    ldh [$b1], a
    ld a, $aa
    ldh [$d1], a
    ld a, $1b
    ldh [$e1], a
    ld a, $05
    ldh [$a7], a
    jr jr_000_0be7

jr_000_0bd7:
    ldh a, [$e1]
    cp $01
    jr nz, jr_000_0bf8

    ld a, $aa
    ldh [$cf], a
    ldh [$b1], a
    ld a, $77
    ldh [$d1], a

jr_000_0be7:
    xor a
    ldh [$dc], a
    ldh [$d2], a
    ldh [$d3], a
    ldh [$d4], a
    ldh a, [$cb]
    cp $29
    jr nz, jr_000_0bf8

    ldh [$ce], a

jr_000_0bf8:
    call Call_000_0c54
    call Call_000_0cf0
    ret


Call_000_0bff:
    ld de, $0020
    ld hl, $c802
    ld a, $2f
    ld c, $12

jr_000_0c09:
    ld b, $0a
    push hl

jr_000_0c0c:
    cp [hl]
    jr nz, jr_000_0c19

    inc hl
    dec b
    jr nz, jr_000_0c0c

    pop hl
    add hl, de
    dec c
    jr nz, jr_000_0c09

    push hl

jr_000_0c19:
    pop hl
    ld a, c
    ldh [$b1], a
    cp $0c
    ld a, [$dfe9]
    jr nc, jr_000_0c2b

    cp $08
    ret nz

    call Call_000_157b
    ret


jr_000_0c2b:
    cp $08
    ret z

    ld a, [$dff0]
    cp $02
    ret z

    ld a, $08
    ld [$dfe8], a
    ret


jr_000_0c3a:
    ldh a, [$cb]
    cp $29
    jr z, jr_000_0c92

    ld a, $01
    ld [$df7f], a
    ldh [$ab], a
    ldh a, [$cf]
    ldh [$f1], a
    xor a
    ldh [$f2], a
    ldh [$cf], a
    call Call_000_1d26
    ret


Call_000_0c54:
    ldh a, [$cc]
    and a
    ret z

    ld hl, $c030
    ld de, $0004
    xor a
    ldh [$cc], a
    ldh a, [$d0]
    cp $aa
    jr z, jr_000_0cc8

    cp $77
    jr z, jr_000_0cb4

    cp $94
    jr z, jr_000_0c3a

    ld b, a
    and a
    jr z, jr_000_0cc4

    bit 7, a
    jr nz, jr_000_0ce6

    cp $13
    jr nc, jr_000_0c92

    ld a, $12
    sub b
    ld c, a
    inc c

jr_000_0c80:
    ld a, $98

jr_000_0c82:
    ld [hl], a
    add hl, de
    sub $08
    dec b
    jr nz, jr_000_0c82

jr_000_0c89:
    ld a, $f0

jr_000_0c8b:
    dec c
    jr z, jr_000_0c92

    ld [hl], a
    add hl, de
    jr jr_000_0c8b

jr_000_0c92:
    ldh a, [$dc]
    and a
    jr z, jr_000_0c9e

    or $80
    ldh [$b1], a
    xor a
    ldh [$dc], a

jr_000_0c9e:
    ld a, $ff
    ldh [$d0], a
    ldh a, [$cb]
    cp $29
    ldh a, [$b1]
    jr nz, jr_000_0cb1

    ldh [$cf], a
    ld a, $01
    ldh [$ce], a
    ret


jr_000_0cb1:
    ldh [$cf], a
    ret


jr_000_0cb4:
    ldh a, [$d1]
    cp $aa
    jr z, jr_000_0ce0

    ld a, $77
    ldh [$d1], a
    ld a, $01
    ldh [$e1], a
    jr jr_000_0c92

jr_000_0cc4:
    ld c, $13
    jr jr_000_0c89

jr_000_0cc8:
    ldh a, [$d1]
    cp $77
    jr z, jr_000_0ce0

    ld a, $aa
    ldh [$d1], a
    ld a, $1b
    ldh [$e1], a
    ld a, $05
    ldh [$a7], a
    ld c, $01
    ld b, $12
    jr jr_000_0c80

jr_000_0ce0:
    ld a, $01
    ldh [$ef], a
    jr jr_000_0c92

jr_000_0ce6:
    and $7f
    cp $05
    jr nc, jr_000_0c92

    ldh [$d2], a
    jr jr_000_0c9e

Call_000_0cf0:
    ldh a, [$d3]
    and a
    jr z, jr_000_0cfc

    bit 7, a
    ret z

    and $07
    jr jr_000_0d06

jr_000_0cfc:
    ldh a, [$d2]
    and a
    ret z

    ldh [$d3], a
    xor a
    ldh [$d2], a
    ret


jr_000_0d06:
    ld c, a
    push bc
    ld hl, $c822
    ld de, $ffe0

jr_000_0d0e:
    add hl, de
    dec c
    jr nz, jr_000_0d0e

    ld de, $c822
    ld c, $11

jr_000_0d17:
    ld b, $0a

jr_000_0d19:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_000_0d19

    push de
    ld de, $0016
    add hl, de
    pop de
    push hl
    ld hl, $0016
    add hl, de
    push hl
    pop de
    pop hl
    dec c
    jr nz, jr_000_0d17

    pop bc

jr_000_0d31:
    ld de, $c400
    ld b, $0a

jr_000_0d36:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_0d36

    push de
    ld de, $0016
    add hl, de
    pop de
    dec c
    jr nz, jr_000_0d31

    ld a, $02
    ldh [$e3], a
    ldh [$d4], a
    xor a
    ldh [$d3], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld a, $01
    ldh [rIE], a
    ld a, $03
    ldh [$cd], a
    ldh a, [$d1]
    cp $77
    jr nz, jr_000_0d6d

    ldh a, [$d0]
    cp $aa
    jr nz, jr_000_0d77

jr_000_0d67:
    ld a, $01
    ldh [$ef], a
    jr jr_000_0d77

jr_000_0d6d:
    cp $aa
    jr nz, jr_000_0d77

    ldh a, [$d0]
    cp $77
    jr z, jr_000_0d67

jr_000_0d77:
    ld b, $34
    ld c, $43
    call Call_000_11a3
    xor a
    ldh [$e3], a
    ldh a, [$d1]
    cp $aa
    ld a, $1e
    jr nz, jr_000_0d8b

    ld a, $1d

jr_000_0d8b:
    ldh [$e1], a
    ld a, $28
    ldh [$a6], a
    ld a, $1d
    ldh [$c6], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ldh a, [$ef]
    and a
    jr nz, jr_000_0da4

    ldh a, [$d7]
    inc a
    ldh [$d7], a

jr_000_0da4:
    call Call_000_0fd3
    ld de, $274d
    ldh a, [$cb]
    cp $29
    jr z, jr_000_0db3

    ld de, $275f

jr_000_0db3:
    ld hl, $c200
    ld c, $03
    call Call_000_17da
    ld a, $19
    ldh [$a6], a
    ldh a, [$ef]
    and a
    jr z, jr_000_0dc9

    ld hl, $c220
    ld [hl], $80

jr_000_0dc9:
    ld a, $03
    call Call_000_26c7
    ld a, $20
    ldh [$e1], a
    ld a, $09
    ld [$dfe8], a
    ldh a, [$d7]
    cp $05
    ret nz

    ld a, $11
    ld [$dfe8], a
    ret


jr_000_0de2:
    ldh a, [$d7]
    cp $05
    jr nz, jr_000_0def

    ldh a, [$c6]
    and a
    jr z, jr_000_0df5

    jr jr_000_0e11

jr_000_0def:
    ldh a, [$81]
    bit 3, a
    jr z, jr_000_0e11

jr_000_0df5:
    ld a, $60
    ldh [$cf], a
    ldh [$ce], a
    jr jr_000_0e1a

    ld a, $01
    ldh [rIE], a
    ldh a, [$cc]
    jr z, jr_000_0e11

    ldh a, [$cb]
    cp $29
    jr z, jr_000_0de2

    ldh a, [$d0]
    cp $60
    jr z, jr_000_0e1a

jr_000_0e11:
    call Call_000_0e21
    ld a, $03
    call Call_000_26c7
    ret


jr_000_0e1a:
    ld a, $1f
    ldh [$e1], a
    ldh [$cc], a
    ret


Call_000_0e21:
    ldh a, [$a6]
    and a
    jr nz, jr_000_0e49

    ld hl, $ffc6
    dec [hl]
    ld a, $19
    ldh [$a6], a
    call Call_000_0fc4
    ld hl, $c201
    ld a, [hl]
    xor $30
    ld [hl+], a
    cp $60
    call z, Call_000_0f7b
    inc l
    push af
    ld a, [hl]
    xor $01
    ld [hl], a
    ld l, $13
    ld [hl-], a
    pop af
    dec l
    ld [hl], a

jr_000_0e49:
    ldh a, [$d7]
    cp $05
    jr nz, jr_000_0e77

    ldh a, [$c6]
    ld hl, $c221
    cp $06
    jr z, jr_000_0e73

    cp $08
    jr nc, jr_000_0e77

    ld a, [hl]
    cp $72
    jr nc, jr_000_0e67

    cp $69
    ret z

    inc [hl]
    inc [hl]
    ret


jr_000_0e67:
    ld [hl], $69
    inc l
    inc l
    ld [hl], $57
    ld a, $06
    ld [$dfe0], a
    ret


jr_000_0e73:
    dec l
    ld [hl], $80
    ret


jr_000_0e77:
    ldh a, [$a7]
    and a
    ret nz

    ld a, $0f
    ldh [$a7], a
    ld hl, $c223
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ldh a, [$ef]
    and a
    jr nz, jr_000_0e95

    ldh a, [$d8]
    inc a
    ldh [$d8], a

jr_000_0e95:
    call Call_000_0fd3
    ld de, $2771
    ldh a, [$cb]
    cp $29
    jr z, jr_000_0ea4

    ld de, $277d

jr_000_0ea4:
    ld hl, $c200
    ld c, $02
    call Call_000_17da
    ld a, $19
    ldh [$a6], a
    ldh a, [$ef]
    and a
    jr z, jr_000_0eba

    ld hl, $c210
    ld [hl], $80

jr_000_0eba:
    ld a, $02
    call Call_000_26c7
    ld a, $21
    ldh [$e1], a
    ld a, $09
    ld [$dfe8], a
    ldh a, [$d8]
    cp $05
    ret nz

    ld a, $11
    ld [$dfe8], a
    ret


jr_000_0ed3:
    ldh a, [$d8]
    cp $05
    jr nz, jr_000_0ee0

    ldh a, [$c6]
    and a
    jr z, jr_000_0ee6

    jr jr_000_0f02

jr_000_0ee0:
    ldh a, [$81]
    bit 3, a
    jr z, jr_000_0f02

jr_000_0ee6:
    ld a, $60
    ldh [$cf], a
    ldh [$ce], a
    jr jr_000_0f0b

    ld a, $01
    ldh [rIE], a
    ldh a, [$cc]
    jr z, jr_000_0f02

    ldh a, [$cb]
    cp $29
    jr z, jr_000_0ed3

    ldh a, [$d0]
    cp $60
    jr z, jr_000_0f0b

jr_000_0f02:
    call Call_000_0f12
    ld a, $02
    call Call_000_26c7
    ret


jr_000_0f0b:
    ld a, $1f
    ldh [$e1], a
    ldh [$cc], a
    ret


Call_000_0f12:
    ldh a, [$a6]
    and a
    jr nz, jr_000_0f33

    ld hl, $ffc6
    dec [hl]
    ld a, $19
    ldh [$a6], a
    call Call_000_0fc4
    ld hl, $c211
    ld a, [hl]
    xor $08
    ld [hl+], a
    cp $68
    call z, Call_000_0f7b
    inc l
    ld a, [hl]
    xor $01
    ld [hl], a

jr_000_0f33:
    ldh a, [$d8]
    cp $05
    jr nz, jr_000_0f6b

    ldh a, [$c6]
    ld hl, $c201
    cp $05
    jr z, jr_000_0f67

    cp $06
    jr z, jr_000_0f57

    cp $08
    jr nc, jr_000_0f6b

    ld a, [hl]
    cp $72
    jr nc, jr_000_0f67

    cp $61
    ret z

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ret


jr_000_0f57:
    dec l
    ld [hl], $00
    inc l
    ld [hl], $61
    inc l
    inc l
    ld [hl], $56
    ld a, $06
    ld [$dfe0], a
    ret


jr_000_0f67:
    dec l
    ld [hl], $80
    ret


jr_000_0f6b:
    ldh a, [$a7]
    and a
    ret nz

    ld a, $0f
    ldh [$a7], a
    ld hl, $c203
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


Call_000_0f7b:
    push af
    push hl
    ldh a, [$d7]
    cp $05
    jr z, jr_000_0f9d

    ldh a, [$d8]
    cp $05
    jr z, jr_000_0f9d

    ldh a, [$cb]
    cp $29
    jr nz, jr_000_0f9d

    ld hl, $c060
    ld b, $24
    ld de, $0fa0

jr_000_0f97:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_0f97

jr_000_0f9d:
    pop hl
    pop af
    ret


    ld b, d
    jr nc, jr_000_0fb0

    nop
    ld b, d
    jr c, @-$4c

    nop
    ld b, d
    ld b, b
    ld c, $00
    ld b, d
    ld c, b
    inc e
    nop

jr_000_0fb0:
    ld b, d
    ld e, b
    ld c, $00
    ld b, d
    ld h, b
    dec e
    nop
    ld b, d
    ld l, b
    or l
    nop
    ld b, d
    ld [hl], b
    cp e
    nop
    ld b, d
    ld a, b
    dec e
    nop

Call_000_0fc4:
    ld hl, $c060
    ld de, $0004
    ld b, $09
    xor a

jr_000_0fcd:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_0fcd

    ret


Call_000_0fd3:
    call Call_000_2874
    ld hl, $55f4
    ld bc, $1000
    call Call_000_2838
    call $27e9
    ld hl, $9800
    ld de, $552c
    ld b, $04
    call Call_000_2844
    ld hl, $9980
    ld b, $06
    call Call_000_2844
    ldh a, [$cb]
    cp $29
    jr nz, jr_000_101d

    ld hl, $9841
    ld [hl], $bd
    inc l
    ld [hl], $b2
    inc l
    ld [hl], $2e
    inc l
    ld [hl], $be
    inc l
    ld [hl], $2e
    ld hl, $9a01
    ld [hl], $b4
    inc l
    ld [hl], $b5
    inc l
    ld [hl], $bb
    inc l
    ld [hl], $2e
    inc l
    ld [hl], $bc

jr_000_101d:
    ldh a, [$ef]
    and a
    jr nz, jr_000_1025

    call Call_000_10e9

jr_000_1025:
    ldh a, [$d7]
    and a
    jr z, jr_000_1073

    cp $05
    jr nz, jr_000_1044

    ld hl, $98a5
    ld b, $0b
    ldh a, [$cb]
    cp $29
    ld de, $1157
    jr z, jr_000_103f

    ld de, $1162

jr_000_103f:
    call Call_000_113c
    ld a, $04

jr_000_1044:
    ld c, a
    ldh a, [$cb]
    cp $29
    ld a, $93
    jr nz, jr_000_104f

    ld a, $8f

jr_000_104f:
    ldh [$a0], a
    ld hl, $99e7
    call Call_000_10ce
    ldh a, [$d9]
    and a
    jr z, jr_000_1073

    ld a, $ac
    ldh [$a0], a
    ld hl, $99f0
    ld c, $01
    call Call_000_10ce
    ld hl, $98a6
    ld de, $116d
    ld b, $09
    call Call_000_113c

jr_000_1073:
    ldh a, [$d8]
    and a
    jr z, jr_000_10b6

    cp $05
    jr nz, jr_000_1092

    ld hl, $98a5
    ld b, $0b
    ldh a, [$cb]
    cp $29
    ld de, $1162
    jr z, jr_000_108d

    ld de, $1157

jr_000_108d:
    call Call_000_113c
    ld a, $04

jr_000_1092:
    ld c, a
    ldh a, [$cb]
    cp $29
    ld a, $8f
    jr nz, jr_000_109d

    ld a, $93

jr_000_109d:
    ldh [$a0], a
    ld hl, $9827
    call Call_000_10ce
    ldh a, [$da]
    and a
    jr z, jr_000_10b6

    ld a, $ac
    ldh [$a0], a
    ld hl, $9830
    ld c, $01
    call Call_000_10ce

jr_000_10b6:
    ldh a, [$db]
    and a
    jr z, jr_000_10c6

    ld hl, $98a7
    ld de, $1151
    ld b, $06
    call Call_000_113c

jr_000_10c6:
    ld a, $d3
    ldh [rLCDC], a
    call Call_000_17ee
    ret


Call_000_10ce:
jr_000_10ce:
    ldh a, [$a0]
    push hl
    ld de, $0020
    ld b, $02

jr_000_10d6:
    push hl
    ld [hl+], a
    inc a
    ld [hl], a
    inc a
    pop hl
    add hl, de
    dec b
    jr nz, jr_000_10d6

    pop hl
    ld de, $0003
    add hl, de
    dec c
    jr nz, jr_000_10ce

    ret


Call_000_10e9:
    ld hl, $ffd7
    ld de, $ffd8
    ldh a, [$d9]
    and a
    jr nz, jr_000_112e

    ldh a, [$da]
    and a
    jr nz, jr_000_1135

    ldh a, [$db]
    and a
    jr nz, jr_000_111f

    ld a, [hl]
    cp $04
    jr z, jr_000_1114

    ld a, [de]
    cp $04
    ret nz

jr_000_1107:
    ld a, $05
    ld [de], a
    jr jr_000_1116

    ld a, [de]
    cp $03
    ret nz

jr_000_1110:
    ld a, $03
    jr jr_000_1119

jr_000_1114:
    ld [hl], $05

jr_000_1116:
    xor a
    ldh [$db], a

jr_000_1119:
    xor a
    ldh [$d9], a
    ldh [$da], a
    ret


jr_000_111f:
    ld a, [hl]
    cp $04
    jr nz, jr_000_112a

    ldh [$d9], a

jr_000_1126:
    xor a
    ldh [$db], a
    ret


jr_000_112a:
    ldh [$da], a
    jr jr_000_1126

jr_000_112e:
    ld a, [hl]
    cp $05
    jr z, jr_000_1114

    jr jr_000_1110

jr_000_1135:
    ld a, [de]
    cp $05
    jr z, jr_000_1107

    jr jr_000_1110

Call_000_113c:
    push bc
    push hl

jr_000_113e:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_113e

    pop hl
    ld de, $0020
    add hl, de
    pop bc
    ld a, $b6

jr_000_114c:
    ld [hl+], a
    dec b
    jr nz, jr_000_114c

    ret


    or b
    or c
    or d
    or e
    or c
    ld a, $b4
    or l
    cp e
    ld l, $bc
    cpl
    dec l
    ld l, $3d
    ld c, $3e
    cp l
    or d
    ld l, $be
    ld l, $2f
    dec l
    ld l, $3d
    ld c, $3e
    or l
    or b
    ld b, c
    or l
    dec a
    dec e
    or l
    cp [hl]
    or c
    ld a, $01
    ldh [rIE], a
    ldh a, [$a6]
    and a
    ret nz

    call Call_000_17ee
    xor a
    ldh [$ef], a
    ld b, $27
    ld c, $79
    call Call_000_11a3
    call $7ff3
    ldh a, [$d7]
    cp $05
    jr z, jr_000_119e

    ldh a, [$d8]
    cp $05
    jr z, jr_000_119e

    ld a, $01
    ldh [$d6], a

jr_000_119e:
    ld a, $16
    ldh [$e1], a
    ret


Call_000_11a3:
    ldh a, [$cc]
    and a
    jr z, jr_000_11bc

    xor a
    ldh [$cc], a
    ldh a, [$cb]
    cp $29
    ldh a, [$d0]
    jr nz, jr_000_11c4

    cp b
    jr z, jr_000_11be

    ld a, $02
    ldh [$cf], a
    ldh [$ce], a

jr_000_11bc:
    pop hl
    ret


jr_000_11be:
    ld a, c
    ldh [$cf], a
    ldh [$ce], a
    ret


jr_000_11c4:
    cp c
    ret z

    ld a, b
    ldh [$cf], a
    pop hl
    ret


    call Call_000_1216
    ld hl, $9ce6
    ld de, $147f
    ld b, $07
    call Call_000_149b
    ld hl, $9ce7
    ld de, $1486
    ld b, $07
    call Call_000_149b
    ld hl, $9d08
    ld [hl], $72
    inc l
    ld [hl], $c4
    ld hl, $9d28
    ld [hl], $b7
    inc l
    ld [hl], $b8
    ld de, $27c5
    ld hl, $c200
    ld c, $03
    call Call_000_17da
    ld a, $03
    call Call_000_26c7
    ld a, $db
    ldh [rLCDC], a
    ld a, $bb
    ldh [$a6], a
    ld a, $27
    ldh [$e1], a
    ld a, $10
    ld [$dfe8], a
    ret


Call_000_1216:
    call Call_000_2874
    ld hl, $55f4
    ld bc, $1000
    call Call_000_2838
    ld hl, $9fff
    call Call_000_27ec
    ld hl, $9dc0
    ld de, $520c
    ld b, $04
    call Call_000_2844
    ld hl, $9cec
    ld de, $148d
    ld b, $07
    call Call_000_149b
    ld hl, $9ced
    ld de, $1494
    ld b, $07
    call Call_000_149b
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld hl, $c210
    ld [hl], $00
    ld l, $20
    ld [hl], $00
    ld a, $ff
    ldh [$a6], a
    ld a, $28
    ldh [$e1], a
    ret


    ldh a, [$a6]
    and a
    jr z, jr_000_1269

    call Call_000_145e
    ret


jr_000_1269:
    ld a, $29
    ldh [$e1], a
    ld hl, $c213
    ld [hl], $35
    ld l, $23
    ld [hl], $35
    ld a, $ff
    ldh [$a6], a
    ld a, $2f
    call Call_000_2032
    ret


    ldh a, [$a6]
    and a
    jr z, jr_000_1289

    call Call_000_145e
    ret


jr_000_1289:
    ld a, $02
    ldh [$e1], a
    ld hl, $9d08
    ld b, $2f
    call Call_000_1a63
    ld hl, $9d09
    call Call_000_1a63
    ld hl, $9d28
    call Call_000_1a63
    ld hl, $9d29
    call Call_000_1a63
    ret


    ldh a, [$a6]
    and a
    jr nz, jr_000_12db

    ld a, $0a
    ldh [$a6], a
    ld hl, $c201
    dec [hl]
    ld a, [hl]
    cp $58
    jr nz, jr_000_12db

    ld hl, $c210
    ld [hl], $00
    inc l
    add $20
    ld [hl+], a
    ld [hl], $4c
    inc l
    ld [hl], $40
    ld l, $20
    ld [hl], $80
    ld a, $03
    call Call_000_26c7
    ld a, $03
    ldh [$e1], a
    ld a, $04
    ld [$dff8], a
    ret


jr_000_12db:
    call Call_000_145e
    ret


    ldh a, [$a6]
    and a
    jr nz, jr_000_1301

    ld a, $0a
    ldh [$a6], a
    ld hl, $c211
    dec [hl]
    ld l, $01
    dec [hl]
    ld a, [hl]
    cp $d0
    jr nz, jr_000_1301

    ld a, $9c
    ldh [$c9], a
    ld a, $82
    ldh [$ca], a
    ld a, $2c
    ldh [$e1], a
    ret


jr_000_1301:
    ldh a, [$a7]
    and a
    jr nz, jr_000_1311

    ld a, $06
    ldh [$a7], a
    ld hl, $c213
    ld a, [hl]
    xor $01
    ld [hl], a

jr_000_1311:
    ld a, $03
    call Call_000_26c7
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld a, $06
    ldh [$a6], a
    ldh a, [$ca]
    sub $82
    ld e, a
    ld d, $00
    ld hl, $1359
    add hl, de
    push hl
    pop de
    ldh a, [$c9]
    ld h, a
    ldh a, [$ca]
    ld l, a
    ld a, [de]
    call Call_000_1a62
    push hl
    ld de, $0020
    add hl, de
    ld b, $b6
    call Call_000_1a63
    pop hl
    inc hl
    ld a, $02
    ld [$dfe0], a
    ld a, h
    ldh [$c9], a
    ld a, l
    ldh [$ca], a
    cp $92
    ret nz

    ld a, $ff
    ldh [$a6], a
    ld a, $2d
    ldh [$e1], a
    ret


    or e
    cp h
    dec a
    cp [hl]
    cp e
    or l
    dec e
    or d
    cp l
    or l
    dec e
    ld l, $bc
    dec a
    ld c, $3e
    ldh a, [$a6]
    and a
    ret nz

    call Call_000_2874
    call Call_000_2801
    call Call_000_22f3
    ld a, $93
    ldh [rLCDC], a
    ld a, $05
    ldh [$e1], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld a, $2e
    ldh [$e1], a
    ret


    call Call_000_1216
    ld de, $27d7
    ld hl, $c200
    ld c, $03
    call Call_000_17da
    ldh a, [$f3]
    ld [$c203], a
    ld a, $03
    call Call_000_26c7
    xor a
    ldh [$f3], a
    ld a, $db
    ldh [rLCDC], a
    ld a, $bb
    ldh [$a6], a
    ld a, $2f
    ldh [$e1], a
    ld a, $10
    ld [$dfe8], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld hl, $c210
    ld [hl], $00
    ld l, $20
    ld [hl], $00
    ld a, $a0
    ldh [$a6], a
    ld a, $30
    ldh [$e1], a
    ret


    ldh a, [$a6]
    and a
    jr z, jr_000_13d4

    call Call_000_145e
    ret


jr_000_13d4:
    ld a, $31
    ldh [$e1], a
    ld a, $80
    ldh [$a6], a
    ld a, $2f
    call Call_000_2032
    ret


    ldh a, [$a6]
    and a
    jr nz, jr_000_1415

    ld a, $0a
    ldh [$a6], a
    ld hl, $c201
    dec [hl]
    ld a, [hl]
    cp $6a
    jr nz, jr_000_1415

    ld hl, $c210
    ld [hl], $00
    inc l
    add $10
    ld [hl+], a
    ld [hl], $54
    inc l
    ld [hl], $5c
    ld l, $20
    ld [hl], $80
    ld a, $03
    call Call_000_26c7
    ld a, $32
    ldh [$e1], a
    ld a, $04
    ld [$dff8], a
    ret


jr_000_1415:
    call Call_000_145e
    ret


    ldh a, [$a6]
    and a
    jr nz, jr_000_1433

    ld a, $0a
    ldh [$a6], a
    ld hl, $c211
    dec [hl]
    ld l, $01
    dec [hl]
    ld a, [hl]
    cp $e0
    jr nz, jr_000_1433

    ld a, $33
    ldh [$e1], a
    ret


jr_000_1433:
    ldh a, [$a7]
    and a
    jr nz, jr_000_1443

    ld a, $06
    ldh [$a7], a
    ld hl, $c213
    ld a, [hl]
    xor $01
    ld [hl], a

jr_000_1443:
    ld a, $03
    call Call_000_26c7
    ret


    call Call_000_2874
    call Call_000_2801
    call $7ff3
    call Call_000_22f3
    ld a, $93
    ldh [rLCDC], a
    ld a, $10
    ldh [$e1], a
    ret


Call_000_145e:
    ldh a, [$a7]
    and a
    ret nz

    ld a, $0a
    ldh [$a7], a
    ld a, $03
    ld [$dff8], a
    ld b, $02
    ld hl, $c210

jr_000_1470:
    ld a, [hl]
    xor $80
    ld [hl], a
    ld l, $20
    dec b
    jr nz, jr_000_1470

    ld a, $03
    call Call_000_26c7
    ret


    jp nz, $caca

    jp z, $caca

    jp z, $cbc3

    ld e, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ret z

    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ret


    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h

Call_000_149b:
jr_000_149b:
    ld a, [de]
    ld [hl], a
    inc de
    push de
    ld de, $0020
    add hl, de
    pop de
    dec b
    jr nz, jr_000_149b

    ret


    ld a, $01
    ldh [rIE], a
    xor a
    ldh [rSB], a
    ldh [rSC], a
    ldh [rIF], a

Call_000_14b3:
    call Call_000_2874
    call Call_000_2801
    ld de, $4d1f
    call Call_000_283f
    call Call_000_17ee
    ld hl, $c200
    ld de, $2723
    ld c, $02
    call Call_000_17da
    ld de, $c201
    call Call_000_14f1
    ldh a, [$c0]
    ld e, $12
    ld [de], a
    inc de
    cp $37
    ld a, $1c
    jr z, jr_000_14e1

    ld a, $1d

jr_000_14e1:
    ld [de], a
    call Call_000_26c5
    call Call_000_157b
    ld a, $d3
    ldh [rLCDC], a
    ld a, $0e
    ldh [$e1], a
    ret


Call_000_14f1:
    ld a, $01
    ld [$dfe0], a

Call_000_14f6:
    ldh a, [$c1]
    push af
    sub $1c
    add a
    ld c, a
    ld b, $00
    ld hl, $150c
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    pop af
    ld [de], a
    ret


    ld [hl], b
    scf
    ld [hl], b
    ld [hl], a
    add b
    scf
    add b
    ld [hl], a

Call_000_1514:
    ld de, $c200
    call Call_000_17ca
    ld hl, $ffc1
    ld a, [hl]
    bit 3, b
    jp nz, Jump_000_15c7

    bit 0, b
    jp nz, Jump_000_15c7

    bit 1, b
    jr nz, jr_000_156d

jr_000_152c:
    inc e
    bit 4, b
    jr nz, jr_000_1557

    bit 5, b
    jr nz, jr_000_1562

    bit 6, b
    jr nz, jr_000_154f

    bit 7, b
    jp z, Jump_000_15c3

    cp $1e
    jr nc, jr_000_154b

    add $02

jr_000_1544:
    ld [hl], a
    call Call_000_14f1
    call Call_000_157b

jr_000_154b:
    call Call_000_26c5
    ret


jr_000_154f:
    cp $1e
    jr c, jr_000_154b

    sub $02
    jr jr_000_1544

jr_000_1557:
    cp $1d
    jr z, jr_000_154b

    cp $1f
    jr z, jr_000_154b

    inc a
    jr jr_000_1544

jr_000_1562:
    cp $1c
    jr z, jr_000_154b

    cp $1e
    jr z, jr_000_154b

    dec a
    jr jr_000_1544

jr_000_156d:
    push af
    ldh a, [$c5]
    and a
    jr z, jr_000_1576

    pop af
    jr jr_000_152c

jr_000_1576:
    pop af
    ld a, $0e
    jr jr_000_15d6

Call_000_157b:
    ldh a, [$c1]
    sub $17
    cp $08
    jr nz, jr_000_1585

    ld a, $ff

jr_000_1585:
    ld [$dfe8], a
    ret


    ld de, $c210
    call Call_000_17ca
    ld hl, $ffc0
    ld a, [hl]
    bit 3, b
    jr nz, jr_000_15c7

    bit 0, b
    jr nz, jr_000_15db

    inc e
    inc e
    bit 4, b
    jr nz, jr_000_15af

    bit 5, b
    jr z, jr_000_15c3

    cp $37
    jr z, jr_000_15c3

    ld a, $37
    ld b, $1c
    jr jr_000_15b7

jr_000_15af:
    cp $77
    jr z, jr_000_15c3

    ld a, $77
    ld b, $1d

jr_000_15b7:
    ld [hl], a
    push af
    ld a, $01
    ld [$dfe0], a
    pop af
    ld [de], a
    inc de
    ld a, b

jr_000_15c2:
    ld [de], a

Jump_000_15c3:
jr_000_15c3:
    call Call_000_26c5
    ret


Jump_000_15c7:
jr_000_15c7:
    ld a, $02
    ld [$dfe0], a
    ldh a, [$c0]
    cp $37
    ld a, $10
    jr z, jr_000_15d6

    ld a, $12

jr_000_15d6:
    ldh [$e1], a
    xor a
    jr jr_000_15c2

jr_000_15db:
    ld a, $0f
    jr jr_000_15d6

    call Call_000_2874
    ld de, $4e87
    call Call_000_283f
    call Call_000_1960
    call Call_000_17ee
    ld hl, $c200
    ld de, $272f
    ld c, $01
    call Call_000_17da
    ld de, $c201
    ldh a, [$c2]
    ld hl, $1679
    call Call_000_17b2
    call Call_000_26c5
    call Call_000_17f9
    call Call_000_192e
    ld a, $d3
    ldh [rLCDC], a
    ld a, $11
    ldh [$e1], a
    ldh a, [$c7]
    and a
    jr nz, jr_000_161e

    call Call_000_157b
    ret


jr_000_161e:
    ld a, $15

jr_000_1620:
    ldh [$e1], a
    ret


    ld de, $c200
    call Call_000_17ca
    ld hl, $ffc2
    ld a, $0a
    bit 3, b
    jr nz, jr_000_1620

    bit 0, b
    jr nz, jr_000_1620

    ld a, $08
    bit 1, b
    jr nz, jr_000_1620

    ld a, [hl]
    bit 4, b
    jr nz, jr_000_1655

    bit 5, b
    jr nz, jr_000_166b

    bit 6, b
    jr nz, jr_000_1671

    bit 7, b
    jr z, jr_000_1667

    cp $05
    jr nc, jr_000_1667

    add $05
    jr jr_000_165a

jr_000_1655:
    cp $09
    jr z, jr_000_1667

    inc a

jr_000_165a:
    ld [hl], a
    ld de, $c201
    ld hl, $1679
    call Call_000_17b2
    call Call_000_17f9

jr_000_1667:
    call Call_000_26c5
    ret


jr_000_166b:
    and a
    jr z, jr_000_1667

    dec a
    jr jr_000_165a

jr_000_1671:
    cp $05
    jr c, jr_000_1667

    sub $05
    jr jr_000_165a

    ld b, b
    jr nc, @+$42

    ld b, b
    ld b, b
    ld d, b
    ld b, b
    ld h, b
    ld b, b
    ld [hl], b
    ld d, b
    jr nc, jr_000_16d6

    ld b, b
    ld d, b
    ld d, b
    ld d, b
    ld h, b
    ld d, b
    ld [hl], b
    call Call_000_2874
    ld de, $4fef
    call Call_000_283f
    call Call_000_17ee
    ld hl, $c200
    ld de, $2735
    ld c, $02
    call Call_000_17da
    ld de, $c201
    ldh a, [$c3]
    ld hl, $1736
    call Call_000_17b2
    ld de, $c211
    ldh a, [$c4]
    ld hl, $17a5
    call Call_000_17b2
    call Call_000_26c5
    call Call_000_1813
    call Call_000_192e
    ld a, $d3
    ldh [rLCDC], a
    ld a, $13
    ldh [$e1], a
    ldh a, [$c7]
    and a
    jr nz, jr_000_16d4

    call Call_000_157b
    ret


jr_000_16d4:
    ld a, $15

jr_000_16d6:
    ldh [$e1], a
    ret


jr_000_16d9:
    ldh [$e1], a
    xor a
    ld [de], a
    ret


    ld de, $c200
    call Call_000_17ca
    ld hl, $ffc3
    ld a, $0a
    bit 3, b
    jr nz, jr_000_16d9

    ld a, $14
    bit 0, b
    jr nz, jr_000_16d9

    ld a, $08
    bit 1, b
    jr nz, jr_000_16d9

    ld a, [hl]
    bit 4, b
    jr nz, jr_000_1712

    bit 5, b
    jr nz, jr_000_1728

    bit 6, b
    jr nz, jr_000_172e

    bit 7, b
    jr z, jr_000_1724

    cp $05
    jr nc, jr_000_1724

    add $05
    jr jr_000_1717

jr_000_1712:
    cp $09
    jr z, jr_000_1724

    inc a

jr_000_1717:
    ld [hl], a
    ld de, $c201
    ld hl, $1736
    call Call_000_17b2
    call Call_000_1813

jr_000_1724:
    call Call_000_26c5
    ret


jr_000_1728:
    and a
    jr z, jr_000_1724

    dec a
    jr jr_000_1717

jr_000_172e:
    cp $05
    jr c, jr_000_1724

    sub $05
    jr jr_000_1717

    ld b, b
    jr jr_000_1779

    jr z, jr_000_177b

    jr c, jr_000_177d

    ld c, b
    ld b, b
    ld e, b
    ld d, b
    jr jr_000_1793

    jr z, @+$52

    jr c, jr_000_1797

    ld c, b
    ld d, b
    ld e, b

jr_000_174a:
    ldh [$e1], a
    xor a
    ld [de], a
    ret


    ld de, $c210
    call Call_000_17ca
    ld hl, $ffc4
    ld a, $0a
    bit 3, b
    jr nz, jr_000_174a

    bit 0, b
    jr nz, jr_000_174a

    ld a, $13
    bit 1, b
    jr nz, jr_000_174a

    ld a, [hl]
    bit 4, b
    jr nz, jr_000_1781

    bit 5, b
    jr nz, jr_000_1797

    bit 6, b
    jr nz, jr_000_179d

    bit 7, b
    jr z, jr_000_1793

jr_000_1779:
    cp $03

jr_000_177b:
    jr nc, jr_000_1793

jr_000_177d:
    add $03
    jr jr_000_1786

jr_000_1781:
    cp $05
    jr z, jr_000_1793

    inc a

jr_000_1786:
    ld [hl], a
    ld de, $c211
    ld hl, $17a5
    call Call_000_17b2
    call Call_000_1813

jr_000_1793:
    call Call_000_26c5
    ret


jr_000_1797:
    and a
    jr z, jr_000_1793

    dec a
    jr jr_000_1786

jr_000_179d:
    cp $03
    jr c, jr_000_1793

    sub $03
    jr jr_000_1786

    ld b, b
    ld [hl], b
    ld b, b
    add b
    ld b, b
    sub b
    ld d, b
    ld [hl], b
    ld d, b
    add b
    ld d, b
    sub b
    nop

Call_000_17b2:
    push af
    ld a, $01
    ld [$dfe0], a
    pop af

Call_000_17b9:
    push af
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    pop af
    add $20
    ld [de], a
    ret


Call_000_17ca:
    ldh a, [$81]
    ld b, a
    ldh a, [$a6]
    and a
    ret nz

    ld a, $10
    ldh [$a6], a
    ld a, [de]
    xor $80
    ld [de], a
    ret


Call_000_17da:
jr_000_17da:
    push hl
    ld b, $06

jr_000_17dd:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_17dd

    pop hl
    ld a, $10
    add l
    ld l, a
    dec c
    jr nz, jr_000_17da

    ld [hl], $80
    ret


Call_000_17ee:
    xor a
    ld hl, $c000
    ld b, $a0

jr_000_17f4:
    ld [hl+], a
    dec b
    jr nz, jr_000_17f4

    ret


Call_000_17f9:
    call Call_000_1960
    ldh a, [$c2]
    ld hl, $d654
    ld de, $001b

jr_000_1804:
    and a
    jr z, jr_000_180b

    dec a
    add hl, de
    jr jr_000_1804

jr_000_180b:
    inc hl
    inc hl
    push hl
    pop de
    call Call_000_1864
    ret


Call_000_1813:
    call Call_000_1960
    ldh a, [$c3]
    ld hl, $d000
    ld de, $00a2

jr_000_181e:
    and a
    jr z, jr_000_1825

    dec a
    add hl, de
    jr jr_000_181e

jr_000_1825:
    ldh a, [$c4]
    ld de, $001b

jr_000_182a:
    and a
    jr z, jr_000_1831

    dec a
    add hl, de
    jr jr_000_182a

jr_000_1831:
    inc hl
    inc hl
    push hl
    pop de
    call Call_000_1864
    ret


Call_000_1839:
    ld b, $03

jr_000_183b:
    ld a, [hl]
    and $f0
    jr nz, jr_000_184b

    inc e
    ld a, [hl-]
    and $0f
    jr nz, jr_000_1855

    inc e
    dec b
    jr nz, jr_000_183b

    ret


jr_000_184b:
    ld a, [hl]
    and $f0
    swap a
    ld [de], a
    inc e
    ld a, [hl-]
    and $0f

jr_000_1855:
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_184b

    ret


Call_000_185b:
    ld b, $03

Call_000_185d:
jr_000_185d:
    ld a, [hl-]
    ld [de], a
    dec de
    dec b
    jr nz, jr_000_185d

    ret


Call_000_1864:
    ld a, d
    ldh [$fb], a
    ld a, e
    ldh [$fc], a
    ld c, $03

jr_000_186c:
    ld hl, $c0a2
    push de
    ld b, $03

jr_000_1872:
    ld a, [de]
    sub [hl]
    jr c, jr_000_1886

    jr nz, jr_000_187d

    dec l
    dec de
    dec b
    jr nz, jr_000_1872

jr_000_187d:
    pop de
    inc de
    inc de
    inc de
    dec c
    jr nz, jr_000_186c

    jr jr_000_18e4

jr_000_1886:
    pop de
    ldh a, [$fb]
    ld d, a
    ldh a, [$fc]
    ld e, a
    push de
    push bc
    ld hl, $0006
    add hl, de
    push hl
    pop de
    dec hl
    dec hl
    dec hl

jr_000_1898:
    dec c
    jr z, jr_000_18a0

    call Call_000_185b
    jr jr_000_1898

jr_000_18a0:
    ld hl, $c0a2
    ld b, $03

jr_000_18a5:
    ld a, [hl-]
    ld [de], a
    dec e
    dec b
    jr nz, jr_000_18a5

    pop bc
    pop de
    ld a, c
    ldh [$c8], a
    ld hl, $0012
    add hl, de
    push hl
    ld de, $0006
    add hl, de
    push hl
    pop de
    pop hl

jr_000_18bc:
    dec c
    jr z, jr_000_18c6

    ld b, $06
    call Call_000_185d
    jr jr_000_18bc

jr_000_18c6:
    ld a, $60
    ld b, $05

jr_000_18ca:
    ld [de], a
    dec de
    dec b
    jr nz, jr_000_18ca

    ld a, $0a
    ld [de], a
    ld a, d
    ldh [$c9], a
    ld a, e
    ldh [$ca], a
    xor a
    ldh [$9c], a
    ldh [$c6], a
    ld a, $01
    ld [$dfe8], a
    ldh [$c7], a

jr_000_18e4:
    ld de, $c9ac
    ldh a, [$fb]
    ld h, a
    ldh a, [$fc]
    ld l, a
    ld b, $03

jr_000_18ef:
    push hl
    push de
    push bc
    call Call_000_1839
    pop bc
    pop de
    ld hl, $0020
    add hl, de
    push hl
    pop de
    pop hl
    push de
    ld de, $0003
    add hl, de
    pop de
    dec b
    jr nz, jr_000_18ef

    dec hl
    dec hl
    ld b, $03
    ld de, $c9a4

jr_000_190e:
    push de
    ld c, $06

jr_000_1911:
    ld a, [hl+]
    and a
    jr z, jr_000_191a

    ld [de], a
    inc de
    dec c
    jr nz, jr_000_1911

jr_000_191a:
    pop de
    push hl
    ld hl, $0020
    add hl, de
    push hl
    pop de
    pop hl
    dec b
    jr nz, jr_000_190e

    call Call_000_26a5
    ld a, $01
    ldh [$e8], a
    ret


Call_000_192e:
    ldh a, [$e8]
    and a
    ret z

    ld hl, $99a4
    ld de, $c9a4
    ld c, $06

jr_000_193a:
    push hl

jr_000_193b:
    ld b, $06

jr_000_193d:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_000_193d

    inc e
    inc l
    inc e
    inc l
    dec c
    jr z, jr_000_195b

    bit 0, c
    jr nz, jr_000_193b

    pop hl
    ld de, $0020
    add hl, de
    push hl
    pop de
    ld a, $30
    add d
    ld d, a
    jr jr_000_193a

jr_000_195b:
    pop hl
    xor a
    ldh [$e8], a
    ret


Call_000_1960:
    ld hl, $c9a4
    ld de, $0020
    ld a, $60
    ld c, $03

jr_000_196a:
    ld b, $0e
    push hl

jr_000_196d:
    ld [hl+], a
    dec b
    jr nz, jr_000_196d

    pop hl
    add hl, de
    dec c
    jr nz, jr_000_196a

    ret


    ldh a, [$c8]
    ld hl, $99e4
    ld de, $ffe0

jr_000_197f:
    dec a
    jr z, jr_000_1985

    add hl, de
    jr jr_000_197f

jr_000_1985:
    ldh a, [$c6]
    ld e, a
    ld d, $00
    add hl, de
    ldh a, [$c9]
    ld d, a
    ldh a, [$ca]
    ld e, a
    ldh a, [$a6]
    and a
    jr nz, jr_000_19a8

    ld a, $07
    ldh [$a6], a
    ldh a, [$9c]
    xor $01
    ldh [$9c], a
    ld a, [de]
    jr z, jr_000_19a5

    ld a, $2f

jr_000_19a5:
    call Call_000_1a62

jr_000_19a8:
    ldh a, [$81]
    ld b, a
    ldh a, [$80]
    ld c, a
    ld a, $17
    bit 6, b
    jr nz, jr_000_19eb

    bit 6, c
    jr nz, jr_000_19e3

    bit 7, b
    jr nz, jr_000_1a14

    bit 7, c
    jr nz, jr_000_1a0c

    bit 0, b
    jr nz, jr_000_1a30

    bit 1, b
    jp nz, Jump_000_1a52

    bit 3, b
    ret z

jr_000_19cc:
    ld a, [de]
    call Call_000_1a62
    call Call_000_157b
    xor a
    ldh [$c7], a
    ldh a, [$c0]
    cp $37
    ld a, $11
    jr z, jr_000_19e0

    ld a, $13

jr_000_19e0:
    ldh [$e1], a
    ret


jr_000_19e3:
    ldh a, [$aa]
    dec a
    ldh [$aa], a
    ret nz

    ld a, $09

jr_000_19eb:
    ldh [$aa], a
    ld b, $26
    ldh a, [$f4]
    and a
    jr z, jr_000_19f6

    ld b, $27

jr_000_19f6:
    ld a, [de]
    cp b
    jr nz, jr_000_1a04

    ld a, $2e

jr_000_19fc:
    inc a

jr_000_19fd:
    ld [de], a
    ld a, $01
    ld [$dfe0], a
    ret


jr_000_1a04:
    cp $2f
    jr nz, jr_000_19fc

    ld a, $0a
    jr jr_000_19fd

jr_000_1a0c:
    ldh a, [$aa]
    dec a
    ldh [$aa], a
    ret nz

    ld a, $09

jr_000_1a14:
    ldh [$aa], a
    ld b, $26
    ldh a, [$f4]
    and a
    jr z, jr_000_1a1f

    ld b, $27

jr_000_1a1f:
    ld a, [de]
    cp $0a
    jr nz, jr_000_1a29

    ld a, $30

jr_000_1a26:
    dec a
    jr jr_000_19fd

jr_000_1a29:
    cp $2f
    jr nz, jr_000_1a26

    ld a, b
    jr jr_000_19fd

jr_000_1a30:
    ld a, [de]
    call Call_000_1a62
    ld a, $02
    ld [$dfe0], a
    ldh a, [$c6]
    inc a
    cp $06
    jr z, jr_000_19cc

    ldh [$c6], a
    inc de
    ld a, [de]
    cp $60
    jr nz, jr_000_1a4b

    ld a, $0a
    ld [de], a

jr_000_1a4b:
    ld a, d
    ldh [$c9], a
    ld a, e
    ldh [$ca], a
    ret


Jump_000_1a52:
    ldh a, [$c6]
    and a
    ret z

    ld a, [de]
    call Call_000_1a62
    ldh a, [$c6]
    dec a
    ldh [$c6], a
    dec de
    jr jr_000_1a4b

Call_000_1a62:
    ld b, a

Call_000_1a63:
jr_000_1a63:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1a63

    ld [hl], b
    ret


    call Call_000_2874
    xor a
    ld [$c210], a
    ldh [$98], a
    ldh [$9c], a
    ldh [$9b], a
    ldh [$fb], a
    ldh [$9f], a
    ld a, $2f
    call Call_000_2032
    call Call_000_204d
    call Call_000_26a5
    xor a
    ldh [$e3], a
    ldh [$e7], a
    call Call_000_17ee
    ldh a, [$c0]
    ld de, $403f
    ld hl, $ffc3
    cp $77
    ld a, $50
    jr z, jr_000_1aa5

    ld a, $f1
    ld hl, $ffc2
    ld de, $3ed7

jr_000_1aa5:
    push de
    ldh [$e6], a
    ld a, [hl]
    ldh [$a9], a
    call Call_000_283f
    pop de
    ld hl, $9c00
    call Call_000_2842
    ld de, $288d
    ld hl, $9c63
    ld c, $0a
    call Call_000_1fd8
    ld h, $98
    ldh a, [$e6]
    ld l, a
    ldh a, [$a9]
    ld [hl], a
    ld h, $9c
    ld [hl], a
    ldh a, [$f4]
    and a
    jr z, jr_000_1ad7

    inc hl
    ld [hl], $27
    ld h, $98
    ld [hl], $27

jr_000_1ad7:
    ld hl, $c200
    ld de, $2713
    call Call_000_270a
    ld hl, $c210
    ld de, $271b
    call Call_000_270a
    ld hl, $9951
    ldh a, [$c0]
    cp $77
    ld a, $25
    jr z, jr_000_1af5

    xor a

jr_000_1af5:
    ldh [$9e], a
    and $0f
    ld [hl-], a
    jr z, jr_000_1afe

    ld [hl], $02

jr_000_1afe:
    call Call_000_1b43
    call Call_000_2062
    call Call_000_2062
    call Call_000_2062
    call Call_000_26d7
    xor a
    ldh [$a0], a
    ldh a, [$c0]
    cp $77
    jr nz, jr_000_1b3b

    ld a, $34
    ldh [$99], a
    ldh a, [$c4]
    ld hl, $98b0
    ld [hl], a
    ld h, $9c
    ld [hl], a
    and a
    jr z, jr_000_1b3b

    ld b, a
    ldh a, [$e4]
    and a
    jr z, jr_000_1b31

    call Call_000_1b76
    jr jr_000_1b3b

jr_000_1b31:
    ld a, b
    ld de, $ffc0
    ld hl, $9a02
    call Call_000_1bc3

jr_000_1b3b:
    ld a, $d3
    ldh [rLCDC], a
    xor a
    ldh [$e1], a
    ret


Call_000_1b43:
    ldh a, [$a9]
    ld e, a
    ldh a, [$f4]
    and a
    jr z, jr_000_1b55

    ld a, $0a
    add e
    cp $15
    jr c, jr_000_1b54

    ld a, $14

jr_000_1b54:
    ld e, a

jr_000_1b55:
    ld hl, $1b61
    ld d, $00
    add hl, de
    ld a, [hl]
    ldh [$99], a
    ldh [$9a], a
    ret


    inc [hl]
    jr nc, jr_000_1b90

    jr z, jr_000_1b8a

    jr nz, jr_000_1b83

    dec d
    db $10
    ld a, [bc]
    add hl, bc
    ld [$0607], sp
    dec b
    dec b
    inc b
    inc b
    inc bc
    inc bc
    ld [bc], a

Call_000_1b76:
    ld hl, $99c2
    ld de, $1b9b
    ld c, $04

jr_000_1b7e:
    ld b, $0a
    push hl

jr_000_1b81:
    ld a, [de]
    ld [hl], a

jr_000_1b83:
    push hl
    ld a, h
    add $30
    ld h, a
    ld a, [de]
    ld [hl], a

jr_000_1b8a:
    pop hl
    inc l
    inc de
    dec b
    jr nz, jr_000_1b81

jr_000_1b90:
    pop hl
    push de
    ld de, $0020
    add hl, de
    pop de
    dec c
    jr nz, jr_000_1b7e

    ret


    add l
    cpl
    add d
    add [hl]
    add e
    cpl
    cpl
    add b
    add d
    add l
    cpl
    add d
    add h
    add d
    add e
    cpl
    add e
    cpl
    add a
    cpl
    cpl
    add l
    cpl
    add e
    cpl
    add [hl]
    add d
    add b
    add c
    cpl
    add e
    cpl
    add [hl]
    add e
    cpl
    add l
    cpl
    add l
    cpl
    cpl

Call_000_1bc3:
    ld b, a

jr_000_1bc4:
    dec b
    jr z, jr_000_1bca

    add hl, de
    jr jr_000_1bc4

jr_000_1bca:
    ldh a, [rDIV]
    ld b, a

jr_000_1bcd:
    ld a, $80

jr_000_1bcf:
    dec b
    jr z, jr_000_1bda

    cp $80
    jr nz, jr_000_1bcd

    ld a, $2f
    jr jr_000_1bcf

jr_000_1bda:
    cp $2f
    jr z, jr_000_1be6

    ldh a, [rDIV]
    and $07
    or $80
    jr jr_000_1be8

jr_000_1be6:
    ldh [$a0], a

jr_000_1be8:
    push af
    ld a, l
    and $0f
    cp $0b
    jr nz, jr_000_1bfb

    ldh a, [$a0]
    cp $2f
    jr z, jr_000_1bfb

    pop af
    ld a, $2f
    jr jr_000_1bfc

jr_000_1bfb:
    pop af

jr_000_1bfc:
    ld [hl], a
    push hl
    push af
    ldh a, [$c5]
    and a
    jr nz, jr_000_1c08

    ld de, $3000
    add hl, de

jr_000_1c08:
    pop af
    ld [hl], a
    pop hl
    inc hl

Call_000_1c0c:
    ld a, l
    and $0f
    cp $0c
    jr nz, jr_000_1bca

    xor a
    ldh [$a0], a
    ld a, h
    and $0f
    cp $0a
    jr z, jr_000_1c23

jr_000_1c1d:
    ld de, $0016
    add hl, de
    jr jr_000_1bca

jr_000_1c23:
    ld a, l
    cp $2c
    jr nz, jr_000_1c1d

    ret


    call Call_000_1c68
    ldh a, [$ab]
    and a
    ret nz

    call Call_000_0579
    call Call_000_05af
    call Call_000_05f0
    call Call_000_2515
    call Call_000_20f7
    call Call_000_2199
    call Call_000_25f5
    call Call_000_22ad
    call Call_000_1fec
    call Call_000_0620
    ret


jr_000_1c4f:
    bit 2, a
    ret z

    ld a, [$c0de]
    xor $01
    ld [$c0de], a
    jr z, jr_000_1c65

    ld a, $80

jr_000_1c5e:
    ld [$c210], a
    call Call_000_26ea
    ret


jr_000_1c65:
    xor a
    jr jr_000_1c5e

Call_000_1c68:
    ldh a, [$80]
    and $0f
    cp $0f
    jp z, Jump_000_029a

    ldh a, [$e4]
    and a
    ret nz

    ldh a, [$81]
    bit 3, a
    jr z, jr_000_1c4f

    ldh a, [$c5]
    and a
    jr nz, jr_000_1cc5

    ld hl, $ff40
    ldh a, [$ab]
    xor $01
    ldh [$ab], a
    jr z, jr_000_1cb5

    set 3, [hl]
    ld a, $01
    ld [$df7f], a
    ld hl, $994e
    ld de, $9d4e
    ld b, $04

jr_000_1c9a:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1c9a

    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1c9a

    ld a, $80

jr_000_1ca8:
    ld [$c210], a

jr_000_1cab:
    ld [$c200], a
    call Call_000_26d7
    call Call_000_26ea
    ret


jr_000_1cb5:
    res 3, [hl]
    ld a, $02
    ld [$df7f], a
    ld a, [$c0de]
    and a
    jr z, jr_000_1ca8

    xor a
    jr jr_000_1cab

jr_000_1cc5:
    ldh a, [$cb]
    cp $29
    ret nz

    ldh a, [$ab]
    xor $01
    ldh [$ab], a
    jr z, jr_000_1d05

    ld a, $01
    ld [$df7f], a
    ldh a, [$d0]
    ldh [$f2], a
    ldh a, [$cf]
    ldh [$f1], a
    call Call_000_1d26
    ret


Call_000_1ce3:
    ldh a, [$ab]
    and a
    ret z

    ldh a, [$cc]
    jr z, jr_000_1d24

    xor a
    ldh [$cc], a
    ldh a, [$cb]
    cp $29
    jr nz, jr_000_1cfc

    ld a, $94
    ldh [$cf], a
    ldh [$ce], a
    pop hl
    ret


jr_000_1cfc:
    xor a
    ldh [$cf], a
    ldh a, [$d0]
    cp $94
    jr z, jr_000_1d24

jr_000_1d05:
    ldh a, [$f2]
    ldh [$d0], a
    ldh a, [$f1]
    ldh [$cf], a
    ld a, $02
    ld [$df7f], a
    xor a
    ldh [$ab], a
    ld hl, $98ee
    ld b, $8e
    ld c, $05

jr_000_1d1c:
    call Call_000_1a63
    inc l
    dec c
    jr nz, jr_000_1d1c

    ret


jr_000_1d24:
    pop hl
    ret


Call_000_1d26:
    ld hl, $98ee
    ld c, $05
    ld de, $1d38

jr_000_1d2e:
    ld a, [de]
    call Call_000_1a62
    inc de
    inc l
    dec c
    jr nz, jr_000_1d2e

    ret


    add hl, de
    ld a, [bc]
    ld e, $1c
    ld c, $3e
    add b
    ld [$c200], a
    ld [$c210], a
    call Call_000_26d7
    call Call_000_26ea
    xor a
    ldh [$98], a
    ldh [$9c], a
    call Call_000_22f3
    ld a, $87
    call Call_000_2032
    ld a, $46
    ldh [$a6], a
    ld a, $0d
    ldh [$e1], a
    ret


    ldh a, [$81]
    bit 0, a
    jr nz, jr_000_1d6a

    bit 3, a
    ret z

jr_000_1d6a:
    xor a
    ldh [$e3], a
    ldh a, [$c5]
    and a
    ld a, $16
    jr nz, jr_000_1d7e

    ldh a, [$c0]
    cp $37
    ld a, $10
    jr z, jr_000_1d7e

    ld a, $12

jr_000_1d7e:
    ldh [$e1], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld hl, $c802
    ld de, $28dd
    call Call_000_2858
    ldh a, [$c3]
    and a
    jr z, jr_000_1dc1

    ld de, $0040
    ld hl, $c827
    call Call_000_1ddf
    ld de, $0100
    ld hl, $c887
    call Call_000_1ddf
    ld de, $0300
    ld hl, $c8e7
    call Call_000_1ddf
    ld de, $1200
    ld hl, $c947
    call Call_000_1ddf
    ld hl, $c0a0
    ld b, $03
    xor a

jr_000_1dbd:
    ld [hl+], a
    dec b
    jr nz, jr_000_1dbd

jr_000_1dc1:
    ld a, $80
    ldh [$a6], a
    ld a, $80
    ld [$c200], a
    ld [$c210], a
    call Call_000_26d7
    call Call_000_26ea
    call $7ff3
    ld a, $25
    ldh [$9e], a
    ld a, $0b
    ldh [$e1], a
    ret


Call_000_1ddf:
    push hl
    ld hl, $c0a0
    ld b, $03
    xor a

jr_000_1de6:
    ld [hl+], a
    dec b
    jr nz, jr_000_1de6

    ldh a, [$c3]
    ld b, a
    inc b

jr_000_1dee:
    ld hl, $c0a0
    call Call_000_0166
    dec b
    jr nz, jr_000_1dee

    pop hl
    ld b, $03
    ld de, $c0a2

jr_000_1dfd:
    ld a, [de]
    and $f0
    jr nz, jr_000_1e0c

    ld a, [de]
    and $0f
    jr nz, jr_000_1e12

    dec e
    dec b
    jr nz, jr_000_1dfd

    ret


jr_000_1e0c:
    ld a, [de]
    and $f0
    swap a
    ld [hl+], a

jr_000_1e12:
    ld a, [de]
    and $0f
    ld [hl+], a
    dec e
    dec b
    jr nz, jr_000_1e0c

    ret


    ldh a, [$a6]
    and a
    ret nz

    ld a, $01
    ld [$c0c6], a
    ld a, $05
    ldh [$a6], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld hl, $c802
    ld de, $5157
    call Call_000_2858
    call Call_000_17ee
    ld hl, $c200
    ld de, $2789
    ld c, $0a
    call Call_000_17da
    ld a, $10
    ld hl, $c266
    ld [hl], a
    ld l, $76
    ld [hl], a
    ld hl, $c20e
    ld de, $1e8c
    ld b, $0a

jr_000_1e55:
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    inc de
    push de
    ld de, $000e
    add hl, de
    pop de
    dec b
    jr nz, jr_000_1e55

    ldh a, [$c4]
    cp $05
    jr nz, jr_000_1e6a

    ld a, $09

jr_000_1e6a:
    inc a
    ld b, a
    ld hl, $c200
    ld de, $0010
    xor a

jr_000_1e73:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_1e73

    ldh a, [$c4]
    add $0a
    ld [$dfe8], a
    ld a, $25
    ldh [$9e], a
    ld a, $1b
    ldh [$a6], a
    ld a, $23
    ldh [$e1], a
    ret


    inc e
    rrca
    ld e, $32
    jr nz, jr_000_1eaa

    ld h, $1d
    jr z, jr_000_1ec1

jr_000_1e96:
    ld a, $0a
    call Call_000_26c7
    ret


    ldh a, [$a6]
    cp $14
    jr z, jr_000_1e96

    and a
    ret nz

    ld hl, $c20e
    ld de, $0010

jr_000_1eaa:
    ld b, $0a

jr_000_1eac:
    push hl
    dec [hl]
    jr nz, jr_000_1ec5

    inc l
    ld a, [hl-]
    ld [hl], a
    ld a, l
    and $f0
    or $03
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    cp $50
    jr z, jr_000_1ee4

jr_000_1ec1:
    cp $51
    jr z, jr_000_1eea

jr_000_1ec5:
    pop hl
    add hl, de
    dec b
    jr nz, jr_000_1eac

    ld a, $0a
    call Call_000_26c7
    ld a, [$dfe9]
    and a
    ret nz

    call Call_000_17ee
    ldh a, [$c4]
    cp $05
    ld a, $26
    jr z, jr_000_1ee1

    ld a, $05

jr_000_1ee1:
    ldh [$e1], a
    ret


jr_000_1ee4:
    dec l
    dec l
    ld [hl], $67
    jr jr_000_1ec5

jr_000_1eea:
    dec l
    dec l
    ld [hl], $5d
    jr jr_000_1ec5

jr_000_1ef0:
    xor a
    ld [$c0c6], a
    ld de, $c0c0
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    or l
    jp z, Jump_000_268e

    dec hl
    ld a, h
    ld [de], a
    dec de
    ld a, l
    ld [de], a
    ld de, $0001
    ld hl, $c0c2
    push de
    call Call_000_0166
    ld de, $c0c4
    ld hl, $99a5
    call Call_000_2a7e
    xor a
    ldh [$a6], a
    pop de
    ld hl, $c0a0
    call Call_000_0166
    ld de, $c0a2
    ld hl, $9a25
    call Call_000_2a82
    ld a, $02
    ld [$dfe0], a
    ret


Call_000_1f32:
    ld a, [$c0c6]
    and a
    ret z

    ld a, [$c0c5]
    cp $04
    jr z, jr_000_1ef0

    ld de, $0040
    ld bc, $9823
    ld hl, $c0ac
    and a
    jr z, jr_000_1f6d

    ld de, $0100
    ld bc, $9883
    ld hl, $c0b1
    cp $01
    jr z, jr_000_1f6d

    ld de, $0300
    ld bc, $98e3
    ld hl, $c0b6
    cp $02
    jr z, jr_000_1f6d

    ld de, $1200
    ld bc, $9943
    ld hl, $c0bb

jr_000_1f6d:
    call Call_000_262d
    ret


    ldh a, [$81]
    and a
    ret z

    ld a, $02
    ldh [$e1], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld a, $04
    ld [$dfe8], a
    ldh a, [$c5]
    and a
    jr z, jr_000_1f92

    ld a, $3f
    ldh [$a6], a
    ld a, $1b
    ldh [$cc], a
    jr jr_000_1fc9

jr_000_1f92:
    ld a, $2f
    call Call_000_2032
    ld hl, $c843
    ld de, $2992
    ld c, $07
    call Call_000_1fd8
    ld hl, $c983
    ld de, $29ca
    ld c, $06
    call Call_000_1fd8
    ldh a, [$c0]
    cp $37
    jr nz, jr_000_1fc7

    ld hl, $c0a2
    ld a, [hl]
    ld b, $58
    cp $15
    jr nc, jr_000_1fcc

    inc b
    cp $10
    jr nc, jr_000_1fcc

    inc b
    cp $05
    jr nc, jr_000_1fcc

jr_000_1fc7:
    ld a, $04

jr_000_1fc9:
    ldh [$e1], a
    ret


jr_000_1fcc:
    ld a, b
    ldh [$f3], a
    ld a, $90
    ldh [$a6], a
    ld a, $34
    ldh [$e1], a
    ret


Call_000_1fd8:
jr_000_1fd8:
    ld b, $08
    push hl

jr_000_1fdb:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_1fdb

    pop hl
    push de
    ld de, $0020
    add hl, de
    pop de
    dec c
    jr nz, jr_000_1fd8

    ret


Call_000_1fec:
    ldh a, [$c0]
    cp $37
    ret nz

    ldh a, [$e1]
    and a
    ret nz

    ldh a, [$e3]
    cp $05
    ret nz

    ld hl, $c0ac
    ld bc, $0005
    ld a, [hl]
    ld de, $0040
    and a
    jr nz, jr_000_201e

    add hl, bc
    ld a, [hl]
    ld de, $0100
    and a
    jr nz, jr_000_201e

    add hl, bc
    ld a, [hl]
    ld de, $0300
    and a
    jr nz, jr_000_201e

    add hl, bc
    ld de, $1200
    ld a, [hl]
    and a
    ret z

jr_000_201e:
    ld [hl], $00
    ldh a, [$a9]
    ld b, a
    inc b

jr_000_2024:
    push bc
    push de
    ld hl, $c0a0
    call Call_000_0166
    pop de
    pop bc
    dec b
    jr nz, jr_000_2024

    ret


Call_000_2032:
    push af
    ld a, $02
    ldh [$e3], a
    pop af

Call_000_2038:
    ld hl, $c802
    ld c, $12
    ld de, $0020

jr_000_2040:
    push hl
    ld b, $0a

jr_000_2043:
    ld [hl+], a
    dec b
    jr nz, jr_000_2043

    pop hl
    add hl, de
    dec c
    jr nz, jr_000_2040

    ret


Call_000_204d:
    ld hl, $cbc2
    ld de, $0016
    ld c, $02
    ld a, $2f

jr_000_2057:
    ld b, $0a

jr_000_2059:
    ld [hl+], a
    dec b
    jr nz, jr_000_2059

    add hl, de
    dec c
    jr nz, jr_000_2057

    ret


Call_000_2062:
    ld hl, $c200
    ld [hl], $00
    inc l
    ld [hl], $18
    inc l
    ld [hl], $3f
    inc l
    ld a, [$c213]
    ld [hl], a
    and $fc
    ld c, a
    ldh a, [$e4]
    and a
    jr nz, jr_000_207f

    ldh a, [$c5]
    and a
    jr z, jr_000_209c

jr_000_207f:
    ld h, $c3
    ldh a, [$b0]
    ld l, a
    ld e, [hl]
    inc hl
    ld a, h
    cp $c4
    jr nz, jr_000_208e

    ld hl, $c300

jr_000_208e:
    ld a, l
    ldh [$b0], a
    ldh a, [$d3]
    and a
    jr z, jr_000_20c0

    or $80
    ldh [$d3], a
    jr jr_000_20c0

jr_000_209c:
    ld h, $03

jr_000_209e:
    ldh a, [rDIV]
    ld b, a

jr_000_20a1:
    xor a

jr_000_20a2:
    dec b
    jr z, jr_000_20af

    inc a
    inc a
    inc a
    inc a
    cp $1c
    jr z, jr_000_20a1

    jr jr_000_20a2

jr_000_20af:
    ld d, a
    ldh a, [$ae]
    ld e, a
    dec h
    jr z, jr_000_20bd

    or d
    or c
    and $fc
    cp c
    jr z, jr_000_209e

jr_000_20bd:
    ld a, d
    ldh [$ae], a

jr_000_20c0:
    ld a, e
    ld [$c213], a
    call Call_000_26ea
    ldh a, [$9a]
    ldh [$99], a
    ret


jr_000_20cc:
    ld a, [$c0c7]
    and a
    jr z, jr_000_20de

    ldh a, [$81]
    and $b0
    cp $80
    jr nz, jr_000_20ff

    xor a
    ld [$c0c7], a

jr_000_20de:
    ldh a, [$a7]
    and a
    jr nz, jr_000_210c

    ldh a, [$98]
    and a
    jr nz, jr_000_210c

    ldh a, [$e3]
    and a
    jr nz, jr_000_210c

    ld a, $03
    ldh [$a7], a
    ld hl, $ffe5
    inc [hl]
    jr jr_000_211d

Call_000_20f7:
    ldh a, [$80]
    and $b0
    cp $80
    jr z, jr_000_20cc

jr_000_20ff:
    ld hl, $ffe5
    ld [hl], $00
    ldh a, [$99]
    and a
    jr z, jr_000_2110

    dec a
    ldh [$99], a

jr_000_210c:
    call Call_000_26d7
    ret


jr_000_2110:
    ldh a, [$98]
    cp $03
    ret z

    ldh a, [$e3]
    and a
    ret nz

    ldh a, [$9a]
    ldh [$99], a

jr_000_211d:
    ld hl, $c201
    ld a, [hl]
    ldh [$a0], a
    add $08
    ld [hl], a
    call Call_000_26d7
    call Call_000_25c7
    and a
    ret z

    ldh a, [$a0]
    ld hl, $c201
    ld [hl], a
    call Call_000_26d7
    ld a, $01
    ldh [$98], a
    ld [$c0c7], a
    ldh a, [$e5]
    and a
    jr z, jr_000_215e

    ld c, a
    ldh a, [$c0]
    cp $37
    jr z, jr_000_2181

    ld de, $c0c0
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld b, $00
    dec c
    add hl, bc
    ld a, h
    ld [de], a
    ld a, l
    dec de
    ld [de], a

jr_000_215b:
    xor a
    ldh [$e5], a

jr_000_215e:
    ld a, [$c201]
    cp $18
    ret nz

    ld a, [$c202]
    cp $3f
    ret nz

    ld hl, $fffb
    ld a, [hl]
    cp $01
    jr nz, jr_000_217f

    call $7ff3
    ld a, $01
    ldh [$e1], a
    ld a, $02
    ld [$dff0], a
    ret


jr_000_217f:
    inc [hl]
    ret


jr_000_2181:
    xor a

jr_000_2182:
    dec c
    jr z, jr_000_2189

    inc a
    daa
    jr jr_000_2182

jr_000_2189:
    ld e, a
    ld d, $00
    ld hl, $c0a0
    call Call_000_0166
    ld a, $01
    ld [$c0ce], a
    jr jr_000_215b

Call_000_2199:
    ldh a, [$98]
    cp $02
    ret nz

    ld a, $02
    ld [$dff8], a
    xor a
    ldh [$a0], a
    ld de, $c0a3
    ld hl, $c842
    ld b, $10

jr_000_21ae:
    ld c, $0a
    push hl

jr_000_21b1:
    ld a, [hl+]
    cp $2f
    jp z, Jump_000_2238

    dec c
    jr nz, jr_000_21b1

    pop hl
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    ldh a, [$a0]
    inc a
    ldh [$a0], a

jr_000_21c6:
    push de
    ld de, $0020
    add hl, de
    pop de
    dec b
    jr nz, jr_000_21ae

    ld a, $03
    ldh [$98], a
    dec a
    ldh [$a6], a
    ldh a, [$a0]
    and a
    ret z

    ld b, a
    ld hl, $ff9e
    ldh a, [$c0]
    cp $77
    jr z, jr_000_21fb

    ldh a, [$e7]
    add b
    ldh [$e7], a
    ld a, b
    add [hl]
    daa
    ld [hl+], a
    ld a, $00
    adc [hl]
    daa
    ld [hl], a
    jr nc, jr_000_220a

    ld [hl], $99
    dec hl
    ld [hl], $99
    jr jr_000_220a

jr_000_21fb:
    ld a, [hl]
    or a
    sub b
    jr z, jr_000_223b

    jr c, jr_000_223b

    daa
    ld [hl], a
    and $f0
    cp $90
    jr z, jr_000_223b

jr_000_220a:
    ld a, b
    ld c, $06
    ld hl, $c0ac
    ld b, $00
    cp $01
    jr z, jr_000_222f

    ld hl, $c0b1
    ld b, $01
    cp $02
    jr z, jr_000_222f

    ld hl, $c0b6
    ld b, $02
    cp $03
    jr z, jr_000_222f

    ld hl, $c0bb
    ld b, $04
    ld c, $07

jr_000_222f:
    inc [hl]
    ld a, b
    ldh [$dc], a
    ld a, c
    ld [$dfe0], a
    ret


Jump_000_2238:
    pop hl
    jr jr_000_21c6

jr_000_223b:
    xor a
    ldh [$9e], a
    jr jr_000_220a

Call_000_2240:
    ldh a, [$98]
    cp $03
    ret nz

    ldh a, [$a6]
    and a
    ret nz

    ld de, $c0a3
    ldh a, [$9c]
    bit 0, a
    jr nz, jr_000_228e

    ld a, [de]
    and a
    jr z, jr_000_22a8

jr_000_2256:
    sub $30
    ld h, a
    inc de
    ld a, [de]
    ld l, a
    ldh a, [$9c]
    cp $06
    ld a, $8c
    jr nz, jr_000_2266

    ld a, $2f

jr_000_2266:
    ld c, $0a

jr_000_2268:
    ld [hl+], a
    dec c
    jr nz, jr_000_2268

    inc de
    ld a, [de]
    and a
    jr nz, jr_000_2256

jr_000_2271:
    ldh a, [$9c]
    inc a
    ldh [$9c], a
    cp $07
    jr z, jr_000_227f

    ld a, $0a
    ldh [$a6], a
    ret


jr_000_227f:
    xor a
    ldh [$9c], a
    ld a, $0d
    ldh [$a6], a
    ld a, $01
    ldh [$e3], a

jr_000_228a:
    xor a
    ldh [$98], a
    ret


jr_000_228e:
    ld a, [de]
    ld h, a
    sub $30
    ld c, a
    inc de
    ld a, [de]
    ld l, a
    ld b, $0a

jr_000_2298:
    ld a, [hl]
    push hl
    ld h, c
    ld [hl], a
    pop hl
    inc hl
    dec b
    jr nz, jr_000_2298

    inc de
    ld a, [de]
    and a
    jr nz, jr_000_228e

    jr jr_000_2271

jr_000_22a8:
    call Call_000_2062
    jr jr_000_228a

Call_000_22ad:
    ldh a, [$a6]
    and a
    ret nz

    ldh a, [$e3]
    cp $01
    ret nz

    ld de, $c0a3
    ld a, [de]

jr_000_22ba:
    ld h, a
    inc de
    ld a, [de]
    ld l, a
    push de
    push hl
    ld bc, $ffe0
    add hl, bc
    pop de

jr_000_22c5:
    push hl
    ld b, $0a

jr_000_22c8:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_22c8

    pop hl
    push hl
    pop de
    ld bc, $ffe0
    add hl, bc
    ld a, h
    cp $c7
    jr nz, jr_000_22c5

    pop de
    inc de
    ld a, [de]
    and a
    jr nz, jr_000_22ba

    ld hl, $c802
    ld a, $2f
    ld b, $0a

jr_000_22e7:
    ld [hl+], a
    dec b
    jr nz, jr_000_22e7

    call Call_000_22f3
    ld a, $02
    ldh [$e3], a
    ret


Call_000_22f3:
    ld hl, $c0a3
    xor a
    ld b, $09

jr_000_22f9:
    ld [hl+], a
    dec b
    jr nz, jr_000_22f9

    ret


Call_000_22fe:
    ldh a, [$e3]
    cp $02
    ret nz

    ld hl, $9a22
    ld de, $ca22
    call Call_000_2506
    ret


Call_000_230d:
    ldh a, [$e3]
    cp $03
    ret nz

    ld hl, $9a02
    ld de, $ca02
    call Call_000_2506
    ret


Call_000_231c:
    ldh a, [$e3]
    cp $04
    ret nz

    ld hl, $99e2
    ld de, $c9e2
    call Call_000_2506
    ret


Call_000_232b:
    ldh a, [$e3]
    cp $05
    ret nz

    ld hl, $99c2
    ld de, $c9c2
    call Call_000_2506
    ret


Call_000_233a:
    ldh a, [$e3]
    cp $06
    ret nz

    ld hl, $99a2
    ld de, $c9a2
    call Call_000_2506
    ret


Call_000_2349:
    ldh a, [$e3]
    cp $07
    ret nz

    ld hl, $9982
    ld de, $c982
    call Call_000_2506
    ret


Call_000_2358:
    ldh a, [$e3]
    cp $08
    ret nz

    ld hl, $9962
    ld de, $c962
    call Call_000_2506
    ldh a, [$c5]
    and a
    ldh a, [$e1]
    jr nz, jr_000_2375

    and a
    ret nz

jr_000_236f:
    ld a, $01
    ld [$dff8], a
    ret


jr_000_2375:
    cp $1a
    ret nz

    ldh a, [$d4]
    and a
    jr z, jr_000_236f

    ld a, $05
    ld [$dfe0], a
    ret


Call_000_2383:
    ldh a, [$e3]
    cp $09
    ret nz

    ld hl, $9942
    ld de, $c942
    call Call_000_2506
    ret


Call_000_2392:
    ldh a, [$e3]
    cp $0a
    ret nz

    ld hl, $9922
    ld de, $c922
    call Call_000_2506
    ret


Call_000_23a1:
    ldh a, [$e3]
    cp $0b
    ret nz

    ld hl, $9902
    ld de, $c902
    call Call_000_2506
    ret


Call_000_23b0:
    ldh a, [$e3]
    cp $0c
    ret nz

    ld hl, $98e2
    ld de, $c8e2
    call Call_000_2506
    ret


Call_000_23bf:
    ldh a, [$e3]
    cp $0d
    ret nz

    ld hl, $98c2
    ld de, $c8c2
    call Call_000_2506
    ret


Call_000_23ce:
    ldh a, [$e3]
    cp $0e
    ret nz

    ld hl, $98a2
    ld de, $c8a2
    call Call_000_2506
    ret


Call_000_23dd:
    ldh a, [$e3]
    cp $0f
    ret nz

    ld hl, $9882
    ld de, $c882
    call Call_000_2506
    ret


Call_000_23ec:
    ldh a, [$e3]
    cp $10
    ret nz

    ld hl, $9862
    ld de, $c862
    call Call_000_2506
    call Call_000_24ab
    ret


Call_000_23fe:
    ldh a, [$e3]
    cp $11
    ret nz

    ld hl, $9842
    ld de, $c842
    call Call_000_2506
    ld hl, $9c6d
    call Call_000_249b
    ld a, $01
    ldh [$e0], a
    ret


Call_000_2417:
    ldh a, [$e3]
    cp $12
    ret nz

    ld hl, $9822
    ld de, $c822
    call Call_000_2506
    ld hl, $986d
    call Call_000_249b
    ret


Call_000_242c:
    ldh a, [$e3]
    cp $13
    ret nz

    ld [$c0c7], a
    ld hl, $9802
    ld de, $c802
    call Call_000_2506
    xor a
    ldh [$e3], a
    ldh a, [$c5]
    and a
    ldh a, [$e1]
    jr nz, jr_000_248f

    and a
    ret nz

jr_000_2449:
    ld hl, $994e
    ld de, $ff9f
    ld c, $02
    ldh a, [$c0]
    cp $37
    jr z, jr_000_245f

    ld hl, $9950
    ld de, $ff9e
    ld c, $01

jr_000_245f:
    call Call_000_2a84
    ldh a, [$c0]
    cp $37
    jr z, jr_000_248b

    ldh a, [$9e]
    and a
    jr nz, jr_000_248b

    ld a, $64
    ldh [$a6], a
    ld a, $02
    ld [$dfe8], a
    ldh a, [$c5]
    and a
    jr z, jr_000_247e

    ldh [$d5], a
    ret


jr_000_247e:
    ldh a, [$c3]
    cp $09
    ld a, $05
    jr nz, jr_000_2488

    ld a, $22

jr_000_2488:
    ldh [$e1], a
    ret


jr_000_248b:
    call Call_000_2062
    ret


jr_000_248f:
    cp $1a
    ret nz

    ldh a, [$d4]
    and a
    jr z, jr_000_2449

    xor a
    ldh [$d4], a
    ret


Call_000_249b:
    ldh a, [$e1]
    and a
    ret nz

    ldh a, [$c0]
    cp $37
    ret nz

    ld de, $c0a2
    call Call_000_2a7e
    ret


Call_000_24ab:
    ldh a, [$e1]
    and a
    ret nz

    ldh a, [$c0]
    cp $37
    ret nz

    ld hl, $ffa9
    ld a, [hl]
    cp $09
    jr nc, jr_000_24fd

    ldh a, [$e7]
    cp $0a
    ret c

    sub $0a

jr_000_24c3:
    ldh [$e7], a
    inc [hl]
    ld a, [hl]
    cp $15
    jr nz, jr_000_24cd

    ld [hl], $14

jr_000_24cd:
    ld b, [hl]
    xor a

jr_000_24cf:
    or a
    inc a
    daa
    dec b
    jr z, jr_000_24d7

    jr jr_000_24cf

jr_000_24d7:
    ld b, a
    and $0f
    ld c, a
    ld hl, $98f1

jr_000_24de:
    ld [hl], c
    ld h, $9c
    ld [hl], c
    ld a, b
    and $f0
    jr z, jr_000_24f4

    swap a
    ld c, a
    ld a, l
    cp $f0
    jr z, jr_000_24f4

    ld hl, $98f0
    jr jr_000_24de

jr_000_24f4:
    ld a, $02
    ld [$dfe0], a
    call Call_000_1b43
    ret


jr_000_24fd:
    ldh a, [$e7]
    cp $14
    ret c

    sub $14
    jr jr_000_24c3

Call_000_2506:
    ld b, $0a

jr_000_2508:
    ld a, [de]
    ld [hl], a
    inc l
    inc e
    dec b
    jr nz, jr_000_2508

    ldh a, [$e3]
    inc a
    ldh [$e3], a
    ret


Call_000_2515:
    ld hl, $c203
    ld a, [hl]
    ldh [$a0], a
    ldh a, [$81]
    ld b, a
    bit 1, b
    jr nz, jr_000_2534

    bit 0, b
    jr z, jr_000_255d

    ld a, [hl]
    and $03
    jr z, jr_000_252e

    dec [hl]
    jr jr_000_2542

jr_000_252e:
    ld a, [hl]
    or $03
    ld [hl], a
    jr jr_000_2542

jr_000_2534:
    ld a, [hl]
    and $03
    cp $03
    jr z, jr_000_253e

    inc [hl]
    jr jr_000_2542

jr_000_253e:
    ld a, [hl]
    and $fc
    ld [hl], a

jr_000_2542:
    ld a, $03
    ld [$dfe0], a
    call Call_000_26d7
    call Call_000_25c7
    and a
    jr z, jr_000_255d

    xor a
    ld [$dfe0], a
    ld hl, $c203
    ldh a, [$a0]
    ld [hl], a
    call Call_000_26d7

jr_000_255d:
    ld hl, $c202
    ldh a, [$81]
    ld b, a
    ldh a, [$80]
    ld c, a
    ld a, [hl]
    ldh [$a0], a
    bit 4, b
    ld a, $17
    jr nz, jr_000_257b

    bit 4, c
    jr z, jr_000_25a0

    ldh a, [$aa]
    dec a
    ldh [$aa], a
    ret nz

    ld a, $09

jr_000_257b:
    ldh [$aa], a
    ld a, [hl]
    add $08
    ld [hl], a
    call Call_000_26d7
    ld a, $04
    ld [$dfe0], a
    call Call_000_25c7
    and a
    ret z

jr_000_258e:
    ld hl, $c202
    xor a
    ld [$dfe0], a
    ldh a, [$a0]
    ld [hl], a
    call Call_000_26d7
    ld a, $01

jr_000_259d:
    ldh [$aa], a
    ret


jr_000_25a0:
    bit 5, b
    ld a, $17
    jr nz, jr_000_25b2

    bit 5, c
    jr z, jr_000_259d

    ldh a, [$aa]
    dec a
    ldh [$aa], a
    ret nz

    ld a, $09

jr_000_25b2:
    ldh [$aa], a
    ld a, [hl]
    sub $08
    ld [hl], a
    ld a, $04
    ld [$dfe0], a
    call Call_000_26d7
    call Call_000_25c7
    and a
    ret z

    jr jr_000_258e

Call_000_25c7:
    ld hl, $c010
    ld b, $04

jr_000_25cc:
    ld a, [hl+]
    ldh [$b2], a
    ld a, [hl+]
    and a
    jr z, jr_000_25ea

    ldh [$b3], a
    push hl
    push bc
    call Call_000_2a2b
    ld a, h
    add $30
    ld h, a
    ld a, [hl]
    cp $2f
    jr nz, jr_000_25ee

    pop bc
    pop hl
    inc l
    inc l
    dec b
    jr nz, jr_000_25cc

jr_000_25ea:
    xor a
    ldh [$9b], a
    ret


jr_000_25ee:
    pop bc
    pop hl
    ld a, $01
    ldh [$9b], a
    ret


Call_000_25f5:
    ldh a, [$98]
    cp $01
    ret nz

    ld hl, $c010
    ld b, $04

jr_000_25ff:
    ld a, [hl+]
    ldh [$b2], a
    ld a, [hl+]
    and a
    jr z, jr_000_2623

    ldh [$b3], a
    push hl
    push bc
    call Call_000_2a2b
    push hl
    pop de
    pop bc
    pop hl

jr_000_2611:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_2611

    ld a, [hl]
    ld [de], a
    ld a, d
    add $30
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc l
    dec b
    jr nz, jr_000_25ff

jr_000_2623:
    ld a, $02
    ldh [$98], a
    ld hl, $c200
    ld [hl], $80
    ret


Call_000_262d:
    ld a, [$c0c6]
    cp $02
    jr z, jr_000_267a

    push de
    ld a, [hl]
    or a
    jr z, jr_000_268d

    dec a
    ld [hl+], a
    ld a, [hl]
    inc a
    daa
    ld [hl], a
    and $0f
    ld [bc], a
    dec c
    ld a, [hl+]
    swap a
    and $0f
    jr z, jr_000_264b

    ld [bc], a

jr_000_264b:
    push bc
    ldh a, [$c3]
    ld b, a
    inc b

jr_000_2650:
    push hl
    call Call_000_0166
    pop hl
    dec b
    jr nz, jr_000_2650

    pop bc
    inc hl
    inc hl
    push hl
    ld hl, $0023
    add hl, bc
    pop de
    call Call_000_2a82
    pop de
    ldh a, [$c3]
    ld b, a
    inc b
    ld hl, $c0a0

jr_000_266c:
    push hl
    call Call_000_0166
    pop hl
    dec b
    jr nz, jr_000_266c

    ld a, $02
    ld [$c0c6], a
    ret


jr_000_267a:
    ld de, $c0a2
    ld hl, $9a25
    call Call_000_2a82
    ld a, $02
    ld [$dfe0], a
    xor a
    ld [$c0c6], a
    ret


jr_000_268d:
    pop de

Jump_000_268e:
    ld a, $21
    ldh [$a6], a
    xor a
    ld [$c0c6], a
    ld a, [$c0c5]
    inc a
    ld [$c0c5], a
    cp $05
    ret nz

    ld a, $04
    ldh [$e1], a
    ret


Call_000_26a5:
    ld hl, $c0ac
    ld b, $1b
    xor a

jr_000_26ab:
    ld [hl+], a
    dec b
    jr nz, jr_000_26ab

    ld hl, $c0a0
    ld b, $03

jr_000_26b4:
    ld [hl+], a
    dec b
    jr nz, jr_000_26b4

    ret


    ld a, [hl]
    and $f0
    swap a
    ld [de], a
    ld a, [hl]
    and $0f
    inc e
    ld [de], a
    ret


Call_000_26c5:
    ld a, $02

Call_000_26c7:
    ldh [$8f], a
    xor a
    ldh [$8e], a
    ld a, $c0
    ldh [$8d], a
    ld hl, $c200
    call Call_000_2ad1
    ret


Call_000_26d7:
    ld a, $01
    ldh [$8f], a
    ld a, $10
    ldh [$8e], a
    ld a, $c0
    ldh [$8d], a
    ld hl, $c200
    call Call_000_2ad1
    ret


Call_000_26ea:
    ld a, $01
    ldh [$8f], a
    ld a, $20
    ldh [$8e], a
    ld a, $c0
    ldh [$8d], a
    ld hl, $c210
    call Call_000_2ad1
    ret


Call_000_26fd:
    ld b, $20
    ld a, $8e
    ld de, $0020

jr_000_2704:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_2704

    ret


Call_000_270a:
jr_000_270a:
    ld a, [de]
    cp $ff
    ret z

    ld [hl+], a
    inc de
    jr jr_000_270a

Jump_000_2712:
    reti


    nop
    jr jr_000_2755

    nop
    add b
    nop
    nop
    rst $38
    nop
    add b
    adc a
    nop
    add b
    nop
    nop
    rst $38
    nop
    ld [hl], b
    scf
    inc e
    nop
    nop
    nop
    jr c, @+$39

    inc e
    nop
    nop
    nop
    ld b, b
    inc [hl]
    jr nz, jr_000_2734

jr_000_2734:
    nop
    nop
    ld b, b
    inc e
    jr nz, jr_000_273a

jr_000_273a:
    nop
    nop
    ld b, b
    ld [hl], h
    jr nz, jr_000_2740

jr_000_2740:
    nop
    nop
    ld b, b
    ld l, b
    ld hl, $0000
    nop
    ld a, b
    ld l, b
    ld hl, $0000
    nop
    ld h, b
    ld h, b
    ld a, [hl+]
    add b
    nop
    nop
    ld h, b

jr_000_2755:
    ld [hl], d
    ld a, [hl+]
    add b
    jr nz, jr_000_275a

jr_000_275a:
    ld l, b
    jr c, jr_000_279b

    add b
    nop
    nop
    ld h, b
    ld h, b
    ld [hl], $80
    nop
    nop
    ld h, b
    ld [hl], d
    ld [hl], $80
    jr nz, jr_000_276c

jr_000_276c:
    ld l, b
    jr c, jr_000_27a1

    add b
    nop
    nop
    ld h, b
    ld h, b
    ld l, $80
    nop
    nop
    ld l, b
    jr c, jr_000_27b7

    add b
    nop
    nop
    ld h, b
    ld h, b
    ld a, [hl-]
    add b
    nop
    nop
    ld l, b
    jr c, jr_000_27b7

    add b
    nop
    add b
    ccf
    ld b, b
    ld b, h
    nop
    nop
    add b
    ccf
    jr nz, jr_000_27dd

    nop
    nop
    add b
    ccf
    jr nc, jr_000_27df

    nop
    nop

jr_000_279b:
    add b
    ld [hl], a
    jr nz, jr_000_27e7

    nop
    nop

jr_000_27a1:
    add b
    add a
    ld c, b
    ld c, h
    nop
    nop
    add b
    add a
    ld e, b
    ld c, [hl]
    nop
    nop
    add b
    ld h, a
    ld c, l
    ld d, b
    nop
    nop
    add b
    ld h, a
    ld e, l
    ld d, d

jr_000_27b7:
    nop
    nop
    add b
    adc a
    adc b
    ld d, h
    nop
    nop
    add b
    adc a
    sbc b
    ld d, l
    nop
    nop
    nop
    ld e, a
    ld d, a
    inc l
    nop
    nop
    add b
    add b
    ld d, b
    inc [hl]
    nop
    nop
    add b
    add b
    ld h, b
    inc [hl]
    nop
    jr nz, jr_000_27d8

jr_000_27d8:
    ld l, a
    ld d, a
    ld e, b
    nop
    nop

jr_000_27dd:
    add b
    add b

jr_000_27df:
    ld d, l
    inc [hl]
    nop
    nop
    add b
    add b
    ld e, e
    inc [hl]

jr_000_27e7:
    nop
    jr nz, @+$23

    rst $38
    sbc e

Call_000_27ec:
    ld bc, $0400

jr_000_27ef:
    ld a, $2f
    ld [hl-], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_27ef

    ret


Call_000_27f8:
jr_000_27f8:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_27f8

    ret


Call_000_2801:
    call Call_000_2817
    ld bc, $00a0
    call Call_000_27f8
    ld hl, $3287
    ld de, $8300
    ld bc, $0d00
    call Call_000_27f8
    ret


Call_000_2817:
    ld hl, $41a7
    ld bc, $0138
    ld de, $8000

jr_000_2820:
    ld a, [hl+]
    ld [de], a
    inc de
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_2820

    ret


Call_000_282b:
    call Call_000_2817
    ld bc, $0da0
    call Call_000_27f8
    ret


    ld bc, $1000

Call_000_2838:
    ld de, $8000
    call Call_000_27f8
    ret


Call_000_283f:
    ld hl, $9800

Call_000_2842:
    ld b, $12

Call_000_2844:
jr_000_2844:
    push hl
    ld c, $14

jr_000_2847:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_000_2847

    pop hl
    push de
    ld de, $0020
    add hl, de
    pop de
    dec b
    jr nz, jr_000_2844

    ret


Call_000_2858:
jr_000_2858:
    ld b, $0a
    push hl

jr_000_285b:
    ld a, [de]
    cp $ff
    jr z, jr_000_286e

    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_285b

    pop hl
    push de
    ld de, $0020
    add hl, de
    pop de
    jr jr_000_2858

jr_000_286e:
    pop hl
    ld a, $02
    ldh [$e3], a
    ret


Call_000_2874:
    ldh a, [rIE]
    ldh [$a1], a
    res 0, a
    ldh [rIE], a

jr_000_287c:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_287c

    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a
    ldh a, [$a1]
    ldh [rIE], a
    ret


    cpl
    cpl
    ld de, $1d12
    cpl
    cpl
    cpl
    cpl
    cpl
    add hl, hl
    add hl, hl
    add hl, hl
    cpl
    cpl
    cpl
    cpl
    inc e
    dec e
    ld a, [bc]
    dec de
    dec e
    cpl
    cpl
    cpl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    cpl
    cpl
    cpl
    cpl
    cpl
    dec e
    jr jr_000_28e2

    cpl
    cpl
    cpl
    cpl
    cpl
    add hl, hl
    add hl, hl
    cpl
    cpl
    cpl
    inc c
    jr jr_000_28d7

    dec e
    ld [de], a
    rla
    ld e, $0e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    cpl
    cpl
    db $10
    ld a, [bc]
    ld d, $0e
    cpl
    cpl
    cpl
    cpl

jr_000_28d7:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    cpl
    cpl
    inc e
    ld [de], a
    rla
    db $10
    dec d

jr_000_28e2:
    ld c, $2f
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    ld h, $2f
    inc b
    nop
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    dec c
    jr jr_000_291c

    dec bc
    dec d
    ld c, $2f
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    ld h, $2f
    ld bc, $0000
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    dec e
    dec de
    ld [de], a

jr_000_291c:
    add hl, de
    dec d
    ld c, $2f
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    ld h, $2f
    inc bc
    nop
    nop
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    dec e
    ld c, $1d
    dec de
    ld [de], a
    inc e
    cpl
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    ld h, $2f
    ld bc, $0002
    nop
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    dec c
    dec de
    jr jr_000_2972

    inc e
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl

jr_000_2972:
    cpl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    dec e
    ld de, $1c12
    cpl
    inc e
    dec e
    ld a, [bc]
    db $10
    ld c, $2f
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    rst $38
    ld h, c
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, e
    ld h, h
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld h, l
    ld h, h
    cpl
    db $10
    ld a, [bc]
    ld d, $0e
    cpl
    ld h, l
    ld h, h
    cpl
    xor l
    xor l
    xor l
    xor l
    cpl
    ld h, l
    ld h, h
    cpl
    jr jr_000_29d5

    ld c, $1b
    cpl
    ld h, l
    ld h, h
    cpl
    xor l
    xor l
    xor l
    xor l
    cpl
    ld h, l
    ld h, [hl]
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    add hl, de
    dec d
    ld c, $0a
    inc e
    ld c, $2f
    cpl
    add hl, hl
    add hl, hl
    add hl, hl

jr_000_29d5:
    add hl, hl
    add hl, hl
    add hl, hl
    cpl
    cpl
    cpl
    dec e
    dec de
    ld [hl+], a
    cpl
    cpl
    cpl
    cpl
    cpl
    add hl, hl
    add hl, hl
    add hl, hl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, [bc]
    db $10
    ld a, [bc]
    ld [de], a
    rla
    daa
    cpl
    cpl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    cpl

Call_000_29fa:
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ld c, a
    ldh a, [$80]
    xor c
    and c
    ldh [$81], a
    ld a, c
    ldh [$80], a
    ld a, $30
    ldh [rP1], a
    ret


Call_000_2a2b:
    ldh a, [$b2]
    sub $10
    srl a
    srl a
    srl a
    ld de, $0000
    ld e, a
    ld hl, $9800
    ld b, $20

jr_000_2a3e:
    add hl, de
    dec b
    jr nz, jr_000_2a3e

    ldh a, [$b3]
    sub $08
    srl a
    srl a
    srl a
    ld de, $0000
    ld e, a
    add hl, de
    ld a, h
    ldh [$b5], a
    ld a, l
    ldh [$b4], a
    ret


    ldh a, [$b5]
    ld d, a
    ldh a, [$b4]
    ld e, a
    ld b, $04

jr_000_2a60:
    rr d
    rr e
    dec b
    jr nz, jr_000_2a60

    ld a, e
    sub $84
    and $fe
    rlca
    rlca
    add $08
    ldh [$b2], a
    ldh a, [$b4]
    and $1f
    rla
    rla
    rla
    add $08
    ldh [$b3], a
    ret


Call_000_2a7e:
    ldh a, [$e0]
    and a
    ret z

Call_000_2a82:
    ld c, $03

Call_000_2a84:
    xor a
    ldh [$e0], a

jr_000_2a87:
    ld a, [de]
    ld b, a
    swap a
    and $0f
    jr nz, jr_000_2ab7

    ldh a, [$e0]
    and a
    ld a, $00
    jr nz, jr_000_2a98

    ld a, $2f

jr_000_2a98:
    ld [hl+], a
    ld a, b
    and $0f
    jr nz, jr_000_2abf

    ldh a, [$e0]
    and a
    ld a, $00
    jr nz, jr_000_2aae

    ld a, $01
    cp c
    ld a, $00
    jr z, jr_000_2aae

    ld a, $2f

jr_000_2aae:
    ld [hl+], a
    dec e
    dec c
    jr nz, jr_000_2a87

    xor a
    ldh [$e0], a
    ret


jr_000_2ab7:
    push af
    ld a, $01
    ldh [$e0], a
    pop af
    jr jr_000_2a98

jr_000_2abf:
    push af
    ld a, $01
    ldh [$e0], a
    pop af
    jr jr_000_2aae

    ld a, $c0
    ldh [rDMA], a
    ld a, $28

jr_000_2acd:
    dec a
    jr nz, jr_000_2acd

    ret


Call_000_2ad1:
jr_000_2ad1:
    ld a, h
    ldh [$96], a
    ld a, l
    ldh [$97], a
    ld a, [hl]
    and a
    jr z, jr_000_2af8

    cp $80
    jr z, jr_000_2af6

jr_000_2adf:
    ldh a, [$96]
    ld h, a
    ldh a, [$97]
    ld l, a
    ld de, $0010
    add hl, de
    ldh a, [$8f]
    dec a
    ldh [$8f], a
    ret z

    jr jr_000_2ad1

jr_000_2af1:
    xor a
    ldh [$95], a
    jr jr_000_2adf

jr_000_2af6:
    ldh [$95], a

jr_000_2af8:
    ld b, $07
    ld de, $ff86

jr_000_2afd:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_2afd

    ldh a, [$89]
    ld hl, $2bac
    rlca
    ld e, a
    ld d, $00
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    ld a, [de]
    ldh [$90], a
    inc de
    ld a, [de]
    ldh [$91], a
    ld e, [hl]
    inc hl
    ld d, [hl]

Jump_000_2b20:
jr_000_2b20:
    inc hl
    ldh a, [$8c]
    ldh [$94], a
    ld a, [hl]
    cp $ff
    jr z, jr_000_2af1

    cp $fd
    jr nz, jr_000_2b3c

    ldh a, [$8c]
    xor $20
    ldh [$94], a
    inc hl
    ld a, [hl]
    jr jr_000_2b40

jr_000_2b38:
    inc de
    inc de
    jr jr_000_2b20

jr_000_2b3c:
    cp $fe
    jr z, jr_000_2b38

jr_000_2b40:
    ldh [$89], a
    ldh a, [$87]
    ld b, a
    ld a, [de]
    ld c, a
    ldh a, [$8b]
    bit 6, a
    jr nz, jr_000_2b53

    ldh a, [$90]
    add b
    adc c
    jr jr_000_2b5d

jr_000_2b53:
    ld a, b
    push af
    ldh a, [$90]
    ld b, a
    pop af
    sub b
    sbc c
    sbc $08

jr_000_2b5d:
    ldh [$93], a
    ldh a, [$88]
    ld b, a
    inc de
    ld a, [de]
    inc de
    ld c, a
    ldh a, [$8b]
    bit 5, a
    jr nz, jr_000_2b72

    ldh a, [$91]
    add b
    adc c
    jr jr_000_2b7c

jr_000_2b72:
    ld a, b
    push af
    ldh a, [$91]
    ld b, a
    pop af
    sub b
    sbc c
    sbc $08

jr_000_2b7c:
    ldh [$92], a
    push hl
    ldh a, [$8d]
    ld h, a
    ldh a, [$8e]
    ld l, a
    ldh a, [$95]
    and a
    jr z, jr_000_2b8e

    ld a, $ff
    jr jr_000_2b90

jr_000_2b8e:
    ldh a, [$93]

jr_000_2b90:
    ld [hl+], a
    ldh a, [$92]
    ld [hl+], a
    ldh a, [$89]
    ld [hl+], a
    ldh a, [$94]
    ld b, a
    ldh a, [$8b]
    or b
    ld b, a
    ldh a, [$8a]
    or b
    ld [hl+], a
    ld a, h
    ldh [$8d], a
    ld a, l
    ldh [$8e], a
    pop hl
    jp Jump_000_2b20


    ld l, b
    inc l
    ld l, h
    inc l
    ld [hl], b
    inc l
    ld [hl], h
    inc l
    ld a, b
    inc l
    ld a, h
    inc l
    add b
    inc l
    add h
    inc l
    adc b
    inc l
    adc h
    inc l
    sub b
    inc l
    sub h
    inc l
    sbc b
    inc l
    sbc h
    inc l
    and b
    inc l
    and h
    inc l
    xor b
    inc l
    xor h
    inc l
    or b
    inc l
    or h
    inc l
    cp b
    inc l
    cp h
    inc l
    ret nz

    inc l
    call nz, $c82c
    inc l
    call z, $d02c
    inc l
    call nc, $d82c
    inc l
    call c, $e02c
    inc l
    db $e4
    inc l
    add sp, $2c
    db $ec
    inc l
    ldh a, [$2c]
    db $f4
    inc l
    ld hl, sp+$2c
    db $fc
    inc l
    nop
    dec l
    inc b
    dec l
    ld [$0c2d], sp
    dec l
    db $10
    dec l
    inc d
    dec l
    rrca
    ld sp, $2d14
    jr jr_000_2c37

    inc e
    dec l
    jr nz, jr_000_2c3b

    inc h
    dec l
    jr z, jr_000_2c3f

    inc l
    dec l
    ld [hl-], a
    ld sp, $3136
    jr nc, jr_000_2c47

    inc [hl]
    dec l
    ld a, [hl-]
    ld sp, $313e
    jr c, jr_000_2c4f

    inc a
    dec l
    ld b, b
    dec l
    ld b, h
    dec l
    ld c, b
    dec l
    ld c, h
    dec l
    ld b, d
    ld sp, $3146
    ld c, h
    dec l
    ld d, b
    dec l
    ld d, b
    dec l
    ld d, h

jr_000_2c37:
    dec l
    ld e, b
    dec l
    ld e, h

jr_000_2c3b:
    dec l
    ld h, b
    dec l
    ld h, h

jr_000_2c3f:
    dec l
    ld l, b
    dec l
    ld l, h
    dec l
    ld [hl], b
    dec l
    ld [hl], h

jr_000_2c47:
    dec l
    ld a, b
    dec l
    ld a, h
    dec l
    add b
    dec l
    add h

jr_000_2c4f:
    dec l
    adc b
    dec l
    adc h
    dec l
    sub b
    dec l
    sub h
    dec l
    sbc b
    dec l
    sbc h
    dec l
    ld d, d
    ld sp, $3156
    ld e, d
    ld sp, $315a
    ld c, d
    ld sp, $314e
    and b
    dec l
    rst $28
    ldh a, [$b0]
    dec l
    rst $28
    ldh a, [$c2]
    dec l
    rst $28
    ldh a, [$d1]
    dec l
    rst $28
    ldh a, [$e2]
    dec l
    rst $28
    ldh a, [$f4]
    dec l
    rst $28
    ldh a, [rTIMA]
    ld l, $ef
    ldh a, [rNR13]
    ld l, $ef
    ldh a, [rNR50]
    ld l, $ef
    ldh a, [$33]
    ld l, $ef
    ldh a, [rLY]
    ld l, $ef
    ldh a, [rHDMA3]
    ld l, $ef
    ldh a, [$64]
    ld l, $ef
    ldh a, [rPCM12]
    ld l, $ef
    ldh a, [$88]
    ld l, $ef
    ldh a, [$9a]
    ld l, $ef
    ldh a, [$ac]
    ld l, $ef
    ldh a, [$be]
    ld l, $ef
    ldh a, [$ce]
    ld l, $ef
    ldh a, [$e0]
    ld l, $ef
    ldh a, [$f0]
    ld l, $ef
    ldh a, [rSB]
    cpl
    rst $28
    ldh a, [rNR12]
    cpl
    rst $28
    ldh a, [rNR44]
    cpl
    rst $28
    ldh a, [rHDMA3]
    cpl
    rst $28
    ldh a, [$64]
    cpl
    rst $28
    ldh a, [$34]
    cpl
    rst $28
    ldh a, [rSCY]
    cpl
    rst $28
    ldh a, [$75]
    cpl
    nop
    add sp, $7e
    cpl
    nop
    add sp, -$79
    cpl
    nop
    add sp, -$70
    cpl
    nop
    add sp, -$67
    cpl
    nop
    nop
    sbc l
    cpl
    nop
    nop
    and c
    cpl
    nop
    nop
    and l
    cpl
    nop
    nop
    xor c
    cpl
    nop
    nop
    xor l
    cpl
    nop
    nop
    or c
    cpl
    nop
    nop
    or l
    cpl
    nop
    nop
    cp c
    cpl
    nop
    nop
    cp l
    cpl
    nop
    nop
    pop bc
    cpl
    ldh a, [$f8]
    call z, $f02f
    ld hl, sp-$29
    cpl
    ldh a, [$f0]
    db $eb
    cpl
    ldh a, [$f0]
    nop
    jr nc, @-$06

jr_000_2d23:
    ld hl, sp+$09
    jr nc, @-$06

jr_000_2d27:
    ld hl, sp+$12
    jr nc, jr_000_2d23

jr_000_2d2b:
    ld hl, sp+$19
    jr nc, jr_000_2d27

jr_000_2d2f:
    ld hl, sp+$20
    jr nc, jr_000_2d23

    ld hl, sp+$2b
    jr nc, jr_000_2d27

    ld hl, sp+$36
    jr nc, jr_000_2d2b

jr_000_2d3b:
    ldh a, [rWX]
    jr nc, jr_000_2d2f

jr_000_2d3f:
    ldh a, [$61]
    jr nc, jr_000_2d3b

jr_000_2d43:
    ld hl, sp+$6a
    jr nc, jr_000_2d3f

jr_000_2d47:
    ld hl, sp+$73
    jr nc, jr_000_2d43

jr_000_2d4b:
    ld hl, sp+$7a
    jr nc, jr_000_2d47

jr_000_2d4f:
    ld hl, sp-$7f
    jr nc, jr_000_2d4b

jr_000_2d53:
    ld hl, sp-$78
    jr nc, jr_000_2d4f

jr_000_2d57:
    ld hl, sp-$71
    jr nc, jr_000_2d53

jr_000_2d5b:
    ld hl, sp-$6a
    jr nc, jr_000_2d57

jr_000_2d5f:
    ld hl, sp-$63
    jr nc, jr_000_2d5b

jr_000_2d63:
    ld hl, sp-$5c
    jr nc, jr_000_2d5f

jr_000_2d67:
    ld hl, sp-$51
    jr nc, jr_000_2d63

jr_000_2d6b:
    ld hl, sp-$4a
    jr nc, jr_000_2d67

jr_000_2d6f:
    ld hl, sp-$43
    jr nc, jr_000_2d6b

jr_000_2d73:
    ld hl, sp-$3c
    jr nc, jr_000_2d6f

jr_000_2d77:
    ld hl, sp-$35
    jr nc, jr_000_2d73

jr_000_2d7b:
    ld hl, sp-$2c
    jr nc, jr_000_2d77

jr_000_2d7f:
    ld hl, sp-$23
    jr nc, jr_000_2d7b

jr_000_2d83:
    ld hl, sp-$1a
    jr nc, jr_000_2d7f

jr_000_2d87:
    ld hl, sp-$11
    jr nc, jr_000_2d83

    ld hl, sp-$08
    jr nc, jr_000_2d87

    ld hl, sp+$01
    ld sp, $f8f8
    ld [$f831], sp
    ld hl, sp-$72
    ld sp, $f0f0
    and l
    ld sp, $f8f8
    pop af
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    add h
    add h
    add h
    cp $84
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $84
    cp $fe
    cp $84
    cp $fe
    cp $84
    add h
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $fe
    add h
    cp $84
    add h
    add h
    cp $ff
    pop af
    ld sp, $fefe
    cp $fe
    add h
    add h
    cp $fe
    cp $84
    cp $fe
    cp $84
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    add c
    add c
    add c
    cp $fe
    cp $81
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $81
    add c
    cp $fe
    add c
    cp $fe
    cp $81
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    add c
    cp $fe
    cp $81
    add c
    add c
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $81
    cp $fe
    cp $81
    cp $fe
    add c
    add c
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    adc d
    adc e
    adc e
    adc a
    rst $38
    pop af
    ld sp, $80fe
    cp $fe
    cp $88
    cp $fe
    cp $88
    cp $fe
    cp $89
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    adc d
    adc e
    adc e
    adc a
    rst $38
    pop af
    ld sp, $80fe
    cp $fe
    cp $88
    cp $fe
    cp $88
    cp $fe
    cp $89
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    cp $83
    add e
    cp $fe
    add e
    add e
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    cp $83
    add e
    cp $fe
    add e
    add e
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    cp $83
    add e
    cp $fe
    add e
    add e
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    cp $83
    add e
    cp $fe
    add e
    add e
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    add d
    add d
    cp $fe
    cp $82
    add d
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $82
    cp $fe
    add d
    add d
    cp $fe
    add d
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    add d
    add d
    cp $fe
    cp $82
    add d
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $82
    cp $fe
    add d
    add d
    cp $fe
    add d
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    cp $86
    add [hl]
    cp $86
    add [hl]
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    add [hl]
    cp $fe
    cp $86
    add [hl]
    cp $fe
    cp $86
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    cp $86
    add [hl]
    cp $86
    add [hl]
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    add [hl]
    cp $fe
    cp $86
    add [hl]
    cp $fe
    cp $86
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $85
    cp $fe
    add l
    add l
    add l
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $85
    cp $fe
    add l
    add l
    cp $fe
    cp $85
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    add l
    add l
    add l
    cp $fe
    add l
    rst $38
    pop af
    ld sp, $fefe
    cp $fe
    cp $85
    cp $fe
    cp $85
    add l
    cp $fe
    add l
    rst $38
    ld de, $0a32
    dec h
    dec e
    ld [hl+], a
    add hl, de
    ld c, $ff
    ld de, $0b32
    dec h
    dec e
    ld [hl+], a
    add hl, de
    ld c, $ff
    ld de, $0c32
    dec h
    dec e
    ld [hl+], a
    add hl, de
    ld c, $ff
    ld de, $2f32
    jr jr_000_2fa4

    rrca
    cpl
    cpl
    rst $38
    ld de, $0032
    rst $38
    ld de, $0132
    rst $38
    ld de, $0232

jr_000_2fa4:
    rst $38
    ld de, $0332
    rst $38
    ld de, $0432
    rst $38
    ld de, $0532
    rst $38
    ld de, $0632
    rst $38
    ld de, $0732
    rst $38
    ld de, $0832
    rst $38
    ld de, $0932
    rst $38
    ld hl, $2f32
    ld bc, $112f
    jr nz, jr_000_2fea

    jr nc, jr_000_2ffc

    rst $38
    ld hl, $2f32
    inc bc
    ld [de], a
    inc de
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    rst $38
    pop af
    ld sp, $052f
    db $fd
    dec b
    cpl
    cpl
    dec d
    inc b
    rla
    inc h
    dec h
    ld h, $27
    inc [hl]
    dec [hl]
    ld [hl], $2f

jr_000_2fea:
    rst $38
    pop af
    ld sp, $3708
    db $fd
    scf
    db $fd
    ld [$1918], sp
    inc d
    dec de
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    ld h, b

jr_000_2ffc:
    ld [hl], b
    ld [hl], $2f
    rst $38
    ld hl, $b932
    db $fd
    cp c
    cp d
    db $fd
    cp d
    rst $38
    ld hl, $8232
    db $fd
    add d
    add e
    db $fd
    add e
    rst $38
    ld hl, $0932
    ld a, [bc]
    ld a, [hl-]
    dec sp
    rst $38
    ld hl, $0b32
    ld b, b
    ld a, h
    ld l, a
    rst $38
    ld hl, $2f32
    rrca
    cpl
    rra
    ld e, a
    inc l
    cpl
    ccf
    rst $38
    ld hl, $6c32
    inc a
    ld c, e
    ld c, h
    ld e, e
    ld e, h
    ld l, e
    cpl
    rst $38
    pop af
    ld sp, $4d2f
    db $fd
    ld c, l
    cpl
    cpl
    ld e, l
    ld e, [hl]
    ld c, [hl]
    ld e, a
    ld l, l
    ld l, [hl]
    cpl
    cpl
    ld a, l
    db $fd
    ld a, l
    cpl
    rst $38
    pop af
    ld sp, $7708
    db $fd
    ld [hl], a
    db $fd
    ld [$7818], sp
    ld b, e
    ld d, e
    ld a, d
    ld a, e
    ld d, b
    cpl
    cpl
    ld [bc], a
    db $fd
    ld a, l
    cpl
    rst $38
    ld hl, $b932
    db $fd
    cp c
    cp d
    db $fd
    cp d
    rst $38
    ld hl, $8232
    db $fd
    add d
    add e
    db $fd
    add e
    rst $38
    ld hl, $0932
    ld a, [bc]
    ld a, [hl-]
    dec sp
    rst $38
    ld hl, $0b32
    ld b, b
    ld a, h
    ld l, a
    rst $38
    ld hl, $dc32
    db $dd
    ldh [$e1], a
    rst $38
    ld hl, $de32
    rst $18
    ldh [$e1], a
    rst $38
    ld hl, $de32
    ld [c], a
    ldh [$e4], a
    rst $38
    ld hl, $dc32
    xor $e0
    db $e3
    rst $38
    ld hl, $e532
    and $e7
    add sp, -$01
    ld hl, $fd32
    and $fd
    push hl
    db $fd
    add sp, -$03
    rst $20
    rst $38
    ld hl, $e932
    ld [$eceb], a
    rst $38
    ld hl, $ed32
    ld [$eceb], a
    rst $38
    ld hl, $f232
    db $f4
    di
    cp a
    rst $38
    ld hl, $f432
    ld a, [c]
    cp a
    di
    rst $38
    ld hl, $c232
    db $fd
    jp nz, $fdc3

    jp $21ff


    ld [hl-], a
    call nz, $c4fd
    push bc
    db $fd
    push bc
    rst $38
    ld hl, $dc32
    db $fd
    call c, $fdef
    rst $28
    rst $38
    ld hl, $f032
    db $fd
    ldh a, [$f1]
    db $fd
    pop af
    rst $38
    ld hl, $dc32
    db $fd
    ldh a, [$f1]
    db $fd
    rst $28
    rst $38
    ld hl, $f032
    db $fd
    call c, $fdef
    pop af
    rst $38
    ld hl, $bd32
    cp [hl]
    cp e
    cp h
    rst $38
    ld hl, $b932
    cp d
    jp c, $ffdb

    inc de
    ld sp, $f0e0
    dec a
    ld [hl-], a
    ret nz

    pop bc
    push bc
    add $cc
    call $7675
    and h
    and l
    and [hl]
    and a
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    and b
    and c
    and d
    and e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    rst $38
    ld e, [hl]
    ld sp, $e8f8
    ld h, h
    ld sp, $e8f0
    ld l, l
    ld sp, $0000
    ld [hl], e
    ld sp, $0000
    ld a, c
    ld sp, $0000
    add d
    ld sp, $0000
    push hl
    ld sp, $0000
    db $eb
    ld sp, $0000
    xor h
    ld sp, $f8d8
    call nz, $e831
    ld hl, sp-$2a
    ld sp, $f8f0
    ld [hl], l
    ld [hl-], a
    ld h, e
    ld h, h
    ld h, l
    rst $38
    ld [hl], l
    ld [hl-], a
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    rst $38
    ld [hl], l
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    rst $38
    ld [hl], l
    ld [hl-], a
    ld b, d
    ld b, d
    ld b, d
    rst $38
    ld [hl], l
    ld [hl-], a
    ld d, d
    ld d, d
    ld d, d
    ld h, d
    ld h, d
    ld h, d
    rst $38
    ld [hl], l
    ld [hl-], a
    ld d, c
    ld d, c
    ld d, c
    ld h, c
    ld h, c
    ld h, c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    rst $38
    pop af
    ld sp, $2f2f
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld h, e
    ld h, h
    db $fd
    ld h, h
    db $fd
    ld h, e
    ld h, [hl]
    ld h, a
    db $fd
    ld h, a
    db $fd
    ld h, [hl]
    rst $38
    ld hl, $2f32
    cpl
    ld h, e
    ld h, h
    rst $38
    ld hl, $0032
    db $fd
    nop
    db $10
    db $fd
    db $10
    ld c, a
    db $fd
    ld c, a
    add b
    db $fd
    add b
    add b
    db $fd
    add b
    add c
    db $fd
    add c
    sub a
    db $fd
    sub a
    rst $38
    ld hl, $9832
    db $fd
    sbc b
    sbc c
    db $fd
    sbc c
    add b
    db $fd
    add b
    sbc d
    db $fd
    sbc d
    sbc e
    db $fd
    sbc e
    rst $38
    ld hl, $a832
    db $fd
    xor b
    xor c
    db $fd
    xor c
    xor d
    db $fd
    xor d
    xor e
    db $fd
    xor e
    rst $38
    ld hl, $4132
    cpl
    cpl
    rst $38
    ld hl, $5232
    cpl
    ld h, d
    rst $38
    nop
    nop
    nop
    ld [$1000], sp
    nop
    jr jr_000_3202

    nop
    ld [$0808], sp
    db $10
    ld [$1018], sp

jr_000_3202:
    nop
    db $10
    ld [$1010], sp
    db $10
    jr jr_000_3222

    nop
    jr @+$0a

    jr @+$12

    jr @+$1a

    nop
    nop
    nop
    ld [$1000], sp
    nop
    jr jr_000_321a

jr_000_321a:
    jr nz, jr_000_321c

jr_000_321c:
    jr z, jr_000_321e

jr_000_321e:
    jr nc, jr_000_3220

jr_000_3220:
    jr c, jr_000_3222

jr_000_3222:
    nop
    nop
    ld [$0008], sp
    ld [$1008], sp
    nop
    db $10
    ld [$0018], sp
    jr jr_000_3239

    jr nz, jr_000_3233

jr_000_3233:
    jr nz, jr_000_323d

    jr z, jr_000_3237

jr_000_3237:
    jr z, jr_000_3241

jr_000_3239:
    jr nc, jr_000_323b

jr_000_323b:
    jr nc, jr_000_3245

jr_000_323d:
    nop
    ld [$1000], sp

jr_000_3241:
    ld [$0808], sp
    db $10

jr_000_3245:
    stop
    db $10
    ld [$1010], sp
    db $10
    jr @+$1a

    nop
    jr jr_000_3259

    jr jr_000_3263

    jr jr_000_326d

    jr nz, jr_000_3257

jr_000_3257:
    jr nz, jr_000_3261

jr_000_3259:
    jr nz, jr_000_326b

    jr nz, jr_000_3275

    jr z, jr_000_325f

jr_000_325f:
    jr z, jr_000_3269

jr_000_3261:
    jr z, jr_000_3273

jr_000_3263:
    jr z, @+$1a

    jr nc, jr_000_3267

jr_000_3267:
    jr nc, jr_000_3271

jr_000_3269:
    jr nc, jr_000_327b

jr_000_326b:
    jr nc, @+$1a

jr_000_326d:
    jr c, jr_000_326f

jr_000_326f:
    jr c, @+$0a

jr_000_3271:
    jr c, jr_000_3283

jr_000_3273:
    jr c, jr_000_328d

jr_000_3275:
    nop
    nop
    nop
    ld [$1000], sp

jr_000_327b:
    ld [$0800], sp
    ld [$1008], sp
    stop

jr_000_3283:
    db $10
    ld [$1010], sp
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_000_328d:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, h
    ld a, h
    ld a, b
    ld a, c
    ld a, b
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rra
    sbc a
    rra
    rst $18
    ld a, b
    ld a, e
    ld a, b
    ld a, c
    ld a, h
    ld a, h
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $18
    rra
    sbc a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_330c:
    rst $38
    rst $38
    ld hl, sp-$08
    ldh a, [$f2]
    pop hl
    push af
    db $e3
    ld a, [c]
    and $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rrca
    ld c, a
    add a
    xor a
    rst $00
    ld c, a
    ld h, a
    ld a, [c]
    and $f2
    and $f2
    and $f2
    and $f2
    and $f2
    and $f2
    and $f2
    and $4f
    ld h, a
    ld c, a
    ld h, a
    ld c, a
    ld h, a
    ld c, a
    ld h, a
    ld c, a
    ld h, a
    ld c, a
    ld h, a
    ld c, a
    ld h, a
    ld c, a
    ld h, a
    ld a, [c]
    and $f5
    db $e3
    ld a, [c]
    pop hl
    ld hl, sp-$10
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    ld h, a
    xor a
    rst $00
    ld c, a
    add a
    rra
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    ld a, e
    ld a, b
    ld a, c
    ld a, h
    ld a, h
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, h
    ld a, h
    ld a, b
    ld a, c
    ld a, b
    ld a, e
    rra
    rst $18
    rra
    sbc a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rra
    sbc a
    rra
    rst $18
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    nop
    ld [bc], a
    nop
    ld a, d
    nop
    ld a, d
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    nop
    ld b, b
    nop
    ld e, a
    nop
    ld e, a
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ccf
    ccf
    jr nc, @+$32

    jr nc, @+$32

    inc sp

jr_000_3404:
    ld [hl-], a
    inc sp
    jr nc, jr_000_3408

jr_000_3408:
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    ld [bc], a
    rst $38
    jr nz, jr_000_3418

jr_000_3418:
    nop
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    inc c
    inc c
    inc c
    inc c
    call z, $cc0c
    inc c
    inc sp
    jr nc, jr_000_345d

    jr nc, jr_000_345f

    jr nc, jr_000_3461

    jr nc, jr_000_3463

    jr nc, jr_000_3465

    jr nc, jr_000_3467

    ld [hl-], a
    inc sp
    jr nc, jr_000_3404

    inc c
    call z, $cc4c
    inc c
    call z, $cc0c
    inc c
    call z, $cc8c
    inc c
    call z, Call_000_330c
    jr nc, jr_000_347d

    jr nc, jr_000_347c

    jr nc, jr_000_347e

    jr nc, jr_000_348f

    ccf
    ccf
    ccf
    nop
    nop
    nop
    nop
    rst $38
    inc b
    rst $38
    ld b, b
    nop
    nop

jr_000_345d:
    nop
    nop

jr_000_345f:
    rst $38
    rst $38

jr_000_3461:
    rst $38
    rst $38

jr_000_3463:
    nop
    nop

jr_000_3465:
    nop
    nop

jr_000_3467:
    call z, $cc0c
    ld c, h
    inc c
    inc c
    inc c
    inc c
    db $fc
    db $fc
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38

jr_000_347c:
    nop

jr_000_347d:
    rst $38

jr_000_347e:
    ld [bc], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    nop

jr_000_348f:
    rst $38
    ld [$01ff], sp
    rst $38
    ld b, e
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add b
    rst $38
    jp nz, $e0ff

    cp $06
    cp $46
    cp $06
    cp $06
    cp $16
    cp $86
    cp $06
    cp $06
    ld a, a
    ld h, h
    ld a, a
    ld h, b
    ld a, a
    ld h, d
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld l, b
    ld a, a
    ld h, d
    ld a, a
    ld h, b
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$80ff], sp
    rst $38
    rra
    ldh a, [rNR10]
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rlca
    rst $38
    inc de
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    rst $38
    ld [$0008], sp
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    rst $38
    nop
    nop
    rst $38
    ldh [rIE], a
    ret z

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rst $38
    ld [$ff08], sp
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld hl, sp+$0f
    ld [$10f0], sp
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$50]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    rrca
    ld [$0a0f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    add hl, bc
    rrca
    ld [$0000], sp
    nop
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, h
    ld a, h
    ld a, b
    ld a, c
    ld a, b
    ld a, e
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rra
    sbc a
    rra
    rst $18
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    rra
    jr c, jr_000_35d9

    inc sp
    jr nc, jr_000_35da

    jr nc, jr_000_35da

    jr nc, jr_000_35a8

jr_000_35a8:
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$08
    inc e
    inc e
    call z, $6c0c
    inc c
    inc l
    inc c
    inc [hl]
    jr nc, jr_000_35fe

    jr nc, jr_000_3600

    jr nc, jr_000_3602

    jr nc, jr_000_3604

    jr nc, jr_000_3606

    jr nc, jr_000_3608

    jr nc, jr_000_360a

    jr nc, jr_000_3604

    inc c

jr_000_35d9:
    inc l

jr_000_35da:
    inc c
    inc l
    inc c
    inc l
    inc c
    inc l
    inc c
    inc l
    inc c
    inc l
    inc c
    inc l
    inc c
    inc [hl]
    jr nc, jr_000_3620

    jr nc, jr_000_361f

    jr nc, jr_000_3626

    jr c, jr_000_360f

    rra
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    ld a, e
    nop
    ld a, c
    nop
    ld a, h
    nop

jr_000_35fe:
    ld a, a
    nop

jr_000_3600:
    ld a, a
    nop

jr_000_3602:
    nop
    nop

jr_000_3604:
    ld a, a
    nop

jr_000_3606:
    nop
    nop

jr_000_3608:
    rst $18
    nop

jr_000_360a:
    sbc a
    nop
    ccf
    nop
    rst $38

jr_000_360f:
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop

jr_000_361f:
    rst $38

jr_000_3620:
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop

jr_000_3626:
    nop
    inc l
    inc c
    ld l, h
    inc c
    call z, Call_000_1c0c
    inc e
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ld [$ff08], sp
    rst $38
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    rst $38
    ld [$ff08], sp
    rlca
    rst $38
    inc de
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    ldh [rIE], a
    ret z

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$00ff], sp
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    nop
    rst $38
    rst $38
    ld [$f008], sp
    db $10
    rst $38
    rra
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    rst $38
    ld e, a
    ldh a, [rNR10]
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld [$ff08], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld [$0f08], sp
    ld [$f8ff], sp
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp-$01
    ld a, [$080f]
    rst $38
    rlca
    rst $38
    ld b, e
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    rra
    ldh a, [rNR10]
    rst $38
    ldh [rIE], a
    jp nz, $80ff

    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    ld hl, sp+$0f
    ld [$0000], sp
    nop
    nop
    nop
    nop
    inc a
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld a, [hl]
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld h, [hl]
    nop
    ld a, h
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld h, [hl]
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, [hl]
    nop
    inc a
    nop
    nop
    nop
    db $dd
    ld b, h
    rst $38
    ld b, h
    rst $38
    rst $38
    ld [hl], a
    ld de, $11ff
    rst $38
    rst $38
    db $dd
    ld b, h
    rst $38
    ld b, h
    rst $38
    rst $38
    ld [hl], a
    ld de, $11ff
    rst $38
    rst $38
    db $dd
    ld b, h
    rst $38
    ld b, h
    rst $38
    rst $38
    ld [hl], a
    ld de, $11ff
    rst $38
    rst $38
    db $dd
    ld b, h
    rst $38
    ld b, h
    rst $38
    rst $38
    ld [hl], a
    ld de, $11ff
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    nop
    jr jr_000_376d

jr_000_376d:
    jr jr_000_376f

jr_000_376f:
    jr jr_000_3771

jr_000_3771:
    jr jr_000_3773

jr_000_3773:
    jr jr_000_3775

jr_000_3775:
    nop
    nop
    nop
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    inc a
    nop
    jr jr_000_3781

jr_000_3781:
    jr jr_000_3783

jr_000_3783:
    jr jr_000_3785

jr_000_3785:
    nop
    nop
    rst $38
    rst $38
    rst $30
    adc c
    db $dd
    and e
    rst $38
    add c
    or a
    ret


    db $fd
    add e
    rst $10
    xor c
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    cp l
    rst $20
    and l
    rst $20
    and l
    rst $38
    cp l
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    add c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    jp $df81


    add l
    rst $18
    add l
    rst $38
    cp l
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    cp l
    rst $38
    and l
    rst $20
    and l
    rst $20
    cp l
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    cp l
    add e
    cp l
    add e
    cp l
    add e
    cp l
    add e
    add c
    rst $38
    rst $38
    rst $38
    db $ed
    sub e
    cp a
    pop bc
    push af
    adc e
    rst $18
    and c
    db $fd
    add e
    xor a
    pop de
    ei
    add l
    rst $18
    and c
    db $fd
    add e
    rst $28
    sub c
    cp e
    push bc
    rst $28
    sub c
    cp l
    jp $89f7


    rst $18
    and c
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    and h
    rst $38
    add b
    or l
    jp z, $80ff

    db $dd
    and d
    rst $30
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, a
    xor b
    db $fd
    ld [bc], a
    rst $18
    jr nz, jr_000_38bb

    add h
    xor $11
    cp e
    ld b, h
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    adc c
    rst $18
    ld hl, $05fb
    xor a
    ld d, c
    db $fd
    inc bc
    rst $10
    add hl, hl
    rst $38
    rst $38
    nop
    nop
    inc a
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    jr jr_000_389b

jr_000_389b:
    jr c, jr_000_389d

jr_000_389d:
    jr jr_000_389f

jr_000_389f:
    jr jr_000_38a1

jr_000_38a1:
    jr jr_000_38a3

jr_000_38a3:
    inc a
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld c, [hl]
    nop
    ld c, $00
    inc a
    nop
    ld [hl], b
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop

jr_000_38bb:
    ld c, $00
    inc a
    nop
    ld c, $00
    ld c, $00
    ld a, h
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld l, h
    nop
    ld c, h
    nop
    ld c, [hl]
    nop
    ld a, [hl]
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld h, b
    nop
    ld a, h
    nop
    ld c, $00
    ld c, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld h, b
    nop
    ld a, h
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld b, $00
    inc c
    nop
    jr jr_000_3901

jr_000_3901:
    jr c, jr_000_3903

jr_000_3903:
    jr c, jr_000_3905

jr_000_3905:
    nop
    nop
    nop
    nop
    inc a
    nop
    ld c, [hl]
    nop
    inc a
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld a, $00
    ld c, $00
    inc a
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld a, h
    nop
    ld h, b
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld h, b
    nop
    ld a, h
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld a, h
    nop
    ld h, b
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld h, [hl]
    nop
    ld h, b
    nop
    ld l, [hl]
    nop
    ld h, [hl]
    nop
    ld a, $00
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    ld l, [hl]
    nop
    ld a, [hl]
    nop
    ld d, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld c, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld h, b
    nop
    inc a
    nop
    ld c, $00
    ld c, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    jr jr_000_39ad

jr_000_39ad:
    jr jr_000_39af

jr_000_39af:
    jr jr_000_39b1

jr_000_39b1:
    jr jr_000_39b3

jr_000_39b3:
    inc a
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    inc l
    nop
    jr jr_000_39d5

jr_000_39d5:
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld a, h
    nop
    ld l, b
    nop
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    ld h, [hl]
    nop
    halt
    ld e, [hl]
    nop
    ld c, [hl]
    nop
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld a, h
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr jr_000_3a8a

    ld hl, $473e
    ld a, a
    ld e, a
    ld a, a
    add hl, sp
    jr nc, @+$7d

    ld h, d
    ei
    or d
    rst $38
    and b
    rst $38
    jp nz, $547f

    ld a, a
    ld e, h
    ccf
    ld l, $7f
    ld h, e
    cp a
    ld hl, sp+$37
    rst $38
    ld bc, $0101

jr_000_3a8a:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $8301
    add e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    add e
    add e
    rst $38
    rst $38
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    rst $38
    rst $38
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    nop
    jr c, jr_000_3aea

jr_000_3aea:
    jr c, jr_000_3aec

jr_000_3aec:
    jr c, jr_000_3aee

jr_000_3aee:
    jr c, jr_000_3af0

jr_000_3af0:
    jr c, jr_000_3af2

jr_000_3af2:
    jr c, jr_000_3af4

jr_000_3af4:
    jr c, jr_000_3af6

jr_000_3af6:
    jr c, jr_000_3b74

    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, a
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop

jr_000_3b0f:
    ld [$0800], sp
    nop
    inc e
    nop
    inc e
    nop
    nop
    nop
    nop
    ld c, $01
    dec e
    ld e, $06
    ld a, [hl+]
    ld a, [hl+]
    daa
    daa
    db $10
    inc de
    inc c
    dec c
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_000_3b4d

    db $10
    ret nc

    ret nc

    db $10

jr_000_3b31:
    ldh a, [$30]
    ret z

    add sp, $08
    add sp, $04
    rlca
    inc bc
    inc bc
    inc c
    inc c
    db $10
    db $10
    dec [hl]
    jr nz, jr_000_3b6c

    jr nz, jr_000_3b83

    ccf
    inc c
    inc c
    jr z, jr_000_3b31

    ret c

    ret nz

    ld b, b
    ld b, b

jr_000_3b4d:
    jr nz, jr_000_3b6f

    ld d, b
    db $10
    or b

jr_000_3b52:
    db $10
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    ldh [rSB], a
    ld [hl], c
    ld [hl-], a
    ld b, d
    inc [hl]
    dec [hl]
    ld d, l
    ld d, h
    ld c, a
    ld c, [hl]
    ld hl, $1827
    dec de
    nop
    nop
    add b
    add b
    ld b, b

jr_000_3b6c:
    ld b, b
    jr nz, jr_000_3b0f

jr_000_3b6f:
    and b
    jr nz, jr_000_3b52

    ld h, b
    sub b

jr_000_3b74:
    ldh a, [$08]
    ret z

    cp b
    cp b
    add h
    add h
    add h
    add h
    db $fc
    db $fc
    sub d
    sub d
    sub d
    sub d

jr_000_3b83:
    ld l, h
    ld l, h
    xor $ee
    rlca
    rlca
    rra
    jr jr_000_3bca

    jr nz, jr_000_3c0d

    ld c, a
    ld a, a
    ld e, a
    ld [hl], b
    ld [hl], b
    and d
    and d
    or b
    or b
    or h
    or h
    ld h, h
    ld h, h
    inc a
    inc a
    ld l, $2e
    daa
    daa
    db $10
    db $10
    ld l, h
    ld a, h
    rst $08
    or e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    ld b, $09
    add hl, bc
    ld d, $17
    ld [de], a
    ld de, $0f0e
    ld [$0809], sp
    ld [$0f0f], sp
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld c, $0e
    inc bc
    inc bc
    inc bc

jr_000_3bca:
    inc bc
    inc bc
    ld [bc], a
    rra
    ld e, $21
    ld hl, $554a
    ld c, d
    ld [hl], l
    ld a, [bc]
    dec [hl]
    ld a, [bc]
    dec d
    ld [$0f08], sp
    rrca
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld c, $0e
    nop
    nop
    ld h, [hl]
    nop
    ld l, h
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld l, h
    nop
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    inc l
    nop
    jr jr_000_3bff

jr_000_3bff:
    jr c, jr_000_3c01

jr_000_3c01:
    ld h, h
    nop
    ld b, d
    nop
    nop
    nop
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd

jr_000_3c0d:
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    cp $02
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    ld bc, $ff01
    ld bc, $0101
    rst $38
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    dec b
    ld [$1109], sp
    ld [de], a
    ld hl, $4326
    ld c, h
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld [$1009], sp
    inc de
    jr nz, @+$29

    jr nz, @+$31

    add a
    sbc b
    ld b, $39
    ld c, $71
    ld e, $e1
    inc a
    jp $c33c


    ld a, b
    add a
    ld a, b
    add a
    ld b, b
    ld c, a
    ld b, b
    ld c, a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld b, b
    ld e, a
    ld b, b
    ld c, a
    jr nz, jr_000_3d0c

    jr nz, jr_000_3d06

    db $10
    ld de, $0f0f
    inc b
    inc b
    rlca
    rlca
    ld a, b
    add a
    ld a, h
    add e
    inc a
    jp $e11e


    rrca
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop

jr_000_3d06:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

jr_000_3d0c:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    stop
    jr c, jr_000_3d1b

jr_000_3d1b:
    ld a, h
    nop
    cp $00
    cp $00

jr_000_3d21:
    cp $00
    ld a, h
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    dec c
    ld [$080a], sp
    rrca
    rrca
    inc bc
    inc bc
    jr z, jr_000_3d21

    ldh a, [$d0]
    jr nc, jr_000_3d6d

    ld [$5408], sp
    inc b
    xor h
    inc b
    db $fc
    db $fc
    jr nc, jr_000_3d77

    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    ld b, $09
    add hl, bc
    ld [$0b08], sp
    dec bc
    nop
    nop
    ret nz

    ret nz

    call nz, $e8c4
    ld l, b
    sub b
    ldh a, [$a8]
    ld hl, sp+$48
    ld a, b
    ld hl, sp-$48
    nop
    nop
    rlca
    rlca
    rlca
    rlca

jr_000_3d6d:
    rlca
    inc b
    rlca
    inc b
    dec bc
    dec bc
    db $10
    db $10
    rla
    rla

jr_000_3d77:
    nop
    nop
    add b
    add b
    add b
    add b
    ldh [$e0], a
    sub b
    ldh a, [$a8]
    ld hl, sp+$48
    ld a, b
    cp b
    cp b
    ld [$0f08], sp
    rrca
    ld [$0f08], sp
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, $06
    ld c, $0e
    db $e4
    db $e4
    ld [hl+], a
    ld [hl+], a
    jr nz, jr_000_3dbd

    ldh [$e0], a
    jr nz, jr_000_3dc1

    jr nz, jr_000_3dc3

    ret nz

    ret nz

    ldh [$e0], a
    jr jr_000_3dc1

    sbc b
    sbc b
    sbc b
    sbc b
    ld hl, sp-$08
    sbc h
    sbc b
    inc a
    inc a
    inc a
    inc a
    ld a, [hl]
    ld a, [hl]
    ld a, a
    nop
    cp $fe
    ld a, [hl]
    ld a, [hl]

jr_000_3dbd:
    cp $da
    ld a, [hl]
    ld e, d

jr_000_3dc1:
    ld a, [hl]
    ld a, [hl]

jr_000_3dc3:
    db $fc
    db $fc
    ld hl, sp-$08
    cp $0e
    cp $fe
    ld a, [hl]
    ld a, [hl]
    cp $da
    ld a, [hl]
    ld e, d
    ld a, [hl]
    ld a, [hl]
    db $fc
    db $fc
    ld hl, sp-$08
    add b
    add b
    add e
    add e
    add e
    add e
    jp $ef02


    ld l, $97
    sub a
    ld b, a
    ld b, h
    inc h
    inc h
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [$60], a
    ld hl, sp-$08
    db $e4
    inc h
    inc [hl]
    inc [hl]
    rla
    inc d
    rla
    inc d
    rla
    inc d
    inc e
    rra
    rla
    rla
    rrca
    rrca
    ld e, $1e
    nop
    nop

jr_000_3e07:
    db $f4
    inc h
    ld hl, sp+$28
    add sp, $28
    jr c, jr_000_3e07

    add sp, -$18
    sub b
    sub b
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rrca
    ld c, $11
    ld de, $3737
    ld [hl], c
    ld d, d
    ld a, l
    ld c, [hl]
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    and b
    and b
    db $10
    db $10
    rst $38
    rst $38
    rst $08
    inc sp
    ld a, a
    ld b, b
    ccf
    ccf
    ld [$0f08], sp
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, $06
    ld c, $0e
    db $fc
    db $fc
    jr nz, jr_000_3e6b

    jr nz, jr_000_3e6d

    ldh [$e0], a
    jr nz, @+$22

    jr nz, jr_000_3e73

    ret nz

    ret nz

    ldh [$e0], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    ld b, $09
    add hl, bc
    inc sp
    inc sp
    ld [hl], a
    ld d, h
    ld [hl], e
    ld c, h
    jr jr_000_3e81

    ret c

    ret c

jr_000_3e6b:
    ret c

    ret c

jr_000_3e6d:
    ld hl, sp+$78
    call c, $bc58
    cp h

jr_000_3e73:
    inc a
    inc a
    ld a, [hl]
    ld a, [hl]
    add hl, bc
    ld c, $07
    rlca
    ld [$080f], sp
    rrca
    add hl, bc
    rrca

jr_000_3e81:
    ld a, [bc]
    ld c, $06
    ld b, $0e
    ld c, $00
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rst $38
    ld a, [hl]
    ret


    ccf
    ld a, b
    ld a, a
    add hl, bc
    rrca
    inc b
    inc b
    rlca
    rlca
    cp b
    cp a
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, e
    ld c, b
    ld h, b
    ld e, a
    or [hl]
    or b
    add h
    add h
    cp b
    cp b
    add h
    add h
    add h
    add h
    add h
    add h
    ld a, [$92fa]
    sub d
    sbc [hl]
    sbc [hl]
    ld h, a
    ld h, a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld c, b
    ld b, b
    ld a, [hl]
    or h
    or b
    add h
    add h
    ld a, [hl+]
    ld a, e
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, e
    jr nc, jr_000_3f17

    ld sp, $3131
    ld sp, $2a32
    ld a, h
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, h
    ld b, h
    inc e
    inc c
    jr jr_000_3f18

    ld c, $45
    ld a, [hl+]
    ld a, l
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, l
    ld h, a
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld l, b
    ld a, [hl+]
    ld a, e
    cpl
    cpl

jr_000_3f17:
    cpl

jr_000_3f18:
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, e
    cpl
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    ld a, [hl+]
    ld a, h
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, h
    ld b, e
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld a, [hl+]
    ld a, l
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, l
    jr nc, jr_000_3f7b

    ld sp, $3131
    ld sp, $2a32
    ld a, e
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, e
    ld [hl], $15
    ld c, $1f
    ld c, $15
    scf
    ld a, [hl+]
    ld a, h
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, h
    ld [hl], $2f
    cpl
    cpl
    cpl
    cpl
    scf
    ld a, [hl+]
    ld a, l
    cpl
    cpl

jr_000_3f7b:
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, l
    ld b, b
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, c
    ld a, [hl+]
    ld a, e
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, e
    ld [hl], $15
    ld [de], a
    rla
    ld c, $1c
    scf
    ld a, [hl+]
    ld a, h
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, h
    ld [hl], $2f
    cpl
    cpl
    cpl
    cpl
    scf
    ld a, [hl+]
    ld a, l
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, l
    inc sp
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    dec [hl]
    ld a, [hl+]
    ld a, e
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, e
    dec hl
    jr c, @+$3b

    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl-]
    ld a, [hl+]
    ld a, h
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, h
    dec hl
    dec sp
    cpl
    cpl
    cpl
    cpl
    inc a
    ld a, [hl+]
    ld a, l
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, l
    dec hl
    dec sp
    cpl
    cpl
