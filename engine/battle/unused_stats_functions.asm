; does nothing since no stats are ever selected (barring glitches)
DoubleSelectedStats:
	ldh a, [hWhoseTurn]
	and a
	ld a, [wPlayerStatsToDouble]
	ld hl, wBattleMonAttack + 1
	jr z, .notEnemyTurn
	ld a, [wEnemyStatsToDouble]
	ld hl, wEnemyMonAttack + 1
.notEnemyTurn
	ld c, 4
	ld b, a
.loop
	srl b
	call c, .doubleStat
	inc hl
	inc hl
	dec c
	ret z
	jr .loop

.doubleStat
	ld a, [hl]
	add a
	ld [hld], a
	ld a, [hl]
	rl a
	ld [hli], a
	ret

; does nothing since no stats are ever selected (barring glitches)
HalveSelectedStats:
	ldh a, [hWhoseTurn]
	and a
	ld a, [wPlayerStatsToHalve]
	ld hl, wBattleMonAttack
	jr z, .notEnemyTurn
	ld a, [wEnemyStatsToHalve]
	ld hl, wEnemyMonAttack
.notEnemyTurn
	ld c, 4
	ld b, a
.loop
	srl b
	call c, .halveStat
	inc hl
	inc hl
	dec c
	ret z
	jr .loop

.halveStat
	ld a, [hl]
	srl a
	ld [hli], a
	rr [hl]
	or [hl]
	jr nz, .nonzeroStat
	ld [hl], 1
.nonzeroStat
	dec hl
	ret
	
;From Shinpokered.
;joenote - caps the stat in bc to 999
BC999cap:
	call GetPredefRegisters
_BC999cap:
	;b register contains high byte & c register contains low byte
	ld a, c ;let's work on low byte first. Note that decimal 999 is $03E7 in hex.
	sub 999 % $100 ;a = a - ($03E7 % $100). Gives a = a - $E7. A byte % $100 always gives the lesser nibble.
	;Note that if a < $E7 then the carry bit 'c' in the flag register gets set due to overflowing with a negative result.
	ld a, b ;now let's work on the high byte
	sbc 999 / $100 ;a = a - ($03E7 / $100 + c_flag). Gives a = a - ($03 + c_flag). A byte / $100 always gives the greater nibble.
	;Note again that if a < $03 then the carry bit remains set. 
	;If the bit is already set from the lesser nibble, then its addition here can still make it remain set if a is low enough.
	jr c, .donecapping ;jump to next marker if the c_flag is set. This only remains set if BC <  the cap of $03E7.
	;else let's continue and set the 999 cap
	ld a, 999 / $100 ; else load $03 into a
	ld b, a ;and store it as the high byte
	ld a, 999 % $100 ; else load $E7 into a
	ld c, a ;and store it as the low byte
	;now registers b & c together contain $03E7 for a capped stat value of 999
.donecapping
	ret

;joenote - this function checks to see if a pkmn is paralyzed or burned
;then it doubles attack if burned or quadruples speed if paralyzed.
;It's meant to be run right before healing paralysis or burn so as to 
;undo the stat changes.
UndoBurnParStats:
	ld hl, wBattleMonStatus
	ld de, wPlayerStatsToDouble
	ld a, [hWhoseTurn]
	and a
	jr z, .checkburn
	ld hl, wEnemyMonStatus
	ld de, wEnemyStatsToDouble
.checkburn
	ld a, [hl]		;load statuses
	and 1 << BRN	;test for burn 
	jr z, .checkpar
	ld a, $01
	ld [de], a	;set attack to be doubled to undo the stat change of BRN
	call DoubleSelectedStats
	jr .return
.checkpar
	ld a, [hl]		;load statuses
	and 1 << PAR	;test for paralyze 
	jr z, .return
	ld a, $04
	ld [de], a	;set speed to be doubled (done twice) to undo the stat change of BRN
	call DoubleSelectedStats
	call DoubleSelectedStats
.return
	xor a
	ld [de], a	;reset the stat change bits
	ret
	
;joenote - this function puts statexp per enemy pkmn level into de
;requires a, b, hl, de, and wCurEnemyLVL
CalcEnemyStatEXP:
	;ld a, [wOptions]	;load game options
	;bit BIT_BATTLE_HARD, a			;check for hard mode
	;jr z, .loadzero		;load zero stat exp if not on hard mode
	ld a, [wCurEnemyLVL]
	cp 6
	jr c, .loadzero	;no stat exp for levels 5 or lower
	cp 100	;make it so lvl maxes out at lvl 100
	jr c, .next
	ld a, 100
.next
	ld b, a
	inc b
	ld a, 6
	ld hl, $0000
.loop
	ld de, $0000
	ld e, a	;load level into low nybble of de
	;sla e	;multiply de by 4
	;rl d
	;sla e	
	;rl d
	add hl, de	;add 12[level] + 50 to hl
	;add hl, de
	;add hl, de
	;ld de, $0032
	;add hl, de
	inc a
	cp b
	jr nz, .loop
.done
	ld d, h
	ld e, l
	ret
.loadzero
	xor a
	ld d, a
	ld e, a
	ret