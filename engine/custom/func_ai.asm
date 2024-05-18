;joenote - custom functions for determining which trainerAI pkmn have already been sent out before
;a=party position of pkmn (like wWhichPokemon). If checking, zero flag gives bit state (1 means sent out already)
CheckAISentOut:
	ld a, [wWhichPokemon]	
	cp $05
	jr z, .party5
	cp $04
	jr z, .party4
	cp $03
	jr z, .party3
	cp $02
	jr z, .party2
	cp $01
	jr z, .party1
	jr .party0
.party5
	ld a, [wFontLoaded]
	bit 6, a
	jr .partyret
.party4
	ld a, [wFontLoaded]
	bit 5, a
	jr .partyret
.party3
	ld a, [wFontLoaded]
	bit 4, a
	jr .partyret
.party2
	ld a, [wFontLoaded]
	bit 3, a
	jr .partyret
.party1
	ld a, [wFontLoaded]
	bit 2, a
	jr .partyret
.party0
	ld a, [wFontLoaded]
	bit 1, a
.partyret
	ret
	
SetAISentOut:
	ld a, [wWhichPokemon]	
	cp $05
	jr z, .party5
	cp $04
	jr z, .party4
	cp $03
	jr z, .party3
	cp $02
	jr z, .party2
	cp $01
	jr z, .party1
	jr .party0
.party5
	ld a, [wFontLoaded]
	set 6, a
	ld [wFontLoaded], a
	jr .partyret
.party4
	ld a, [wFontLoaded]
	set 5, a
	ld [wFontLoaded], a
	jr .partyret
.party3
	ld a, [wFontLoaded]
	set 4, a
	ld [wFontLoaded], a
	jr .partyret
.party2
	ld a, [wFontLoaded]
	set 3, a
	ld [wFontLoaded], a
	jr .partyret
.party1
	ld a, [wFontLoaded]
	set 2, a
	ld [wFontLoaded], a
	jr .partyret
.party0
	ld a, [wFontLoaded]
	set 1, a
	ld [wFontLoaded], a
.partyret
	ret
	
;let's get some PP tracking for enemies both trainer and wild
ChooseMovePPTrack:
	;retrieve hl pointer
	ld a, [wUnusedCF8D]
	ld h, a
	ld a, [wUnusedCF8D + 1]
	ld l, a	
	ld b, e	;retrieve move number
;b holds the move slot (1 to 4)

	call IsTrainerBattlePPCheck

	ld a, b
	dec a
	ld [wEnemyMoveListIndex], a
;is move disabled?
	ld a, [wEnemyDisabledMove]
	swap a
	and $f
	cp b
	jp z, .flagset
;is the move non-existant?
	ld a, [hl]
	and a
	jp z, .flagset
;now check the PP for the slot specified by "b"
	push hl
	ld hl, wEnemyMonPP
	push bc
	ld c, b
	ld b, 0
	dec bc
	add hl, bc
	pop bc
	ld a, [hl]
	and a
	jr z, .PPexhausted
.PPremaining
	;else decrement PP
	dec a
	ld [hl], a
	ld a, 1
	ld e, a	;return nz flag if there was PP left
	push bc
	call transformPPtasks
	pop bc
	pop hl
	jp .back
.PPexhausted	;return zero flag if no PP left
	pop hl
.flagset	;d is holding flags for unusable moves
	ld e, 0
	ld a,  b
	cp 4
	jr z, .move4
	cp 3
	jr z, .move3
	cp 2
	jr z, .move2
.move1
	set 0, d
	jr .back
.move2
	set 1, d
	jr .back
.move3
	set 2, d
	jr .back
.move4
	set 3, d
.back
	ld a, h
	ld [wUnusedCF8D], a
	ld a, l
	ld [wUnusedCF8D + 1], a
	ret


;this function will try to pick a trainer's preferred choice of move
;while also taking into account unusable moves
IsTrainerBattlePPCheck:
	ld a, [wIsInBattle]
	cp 2
	ret nz

;first, adjust the scores in the backup buffer so that unusable moves are maxed out (based on flags in d)
	push hl
	push de
	ld hl, wBuffer + NUM_MOVES
	ld e, NUM_MOVES
.loop
	rr d
	call c, .disabled_move
	inc hl
	dec e
	jr nz, .loop
	pop de
	pop hl
	
;now determine if the randomly chosen move is a preferred move that is usuable
	ld a, [hl]
	and a
	jr z, .next	;not preferred if zero; else check against backup score
	push hl
	push bc
	ld bc, NUM_MOVES
	add hl, bc
	pop bc
	ld a, [hl]
	pop hl
	cp $ff
	jr nz, .done	;the preferred move is not unuseable so we're good to go
.next	

;so the randomly picked move is either not preferred or is preferred but unusable
;in that case, pick the move with the lowest score moving towards the left and circling back if needed
	push hl
	push de
	push bc
	;move HL to the backup score buffer and set the loop counter
	push bc
	ld bc, NUM_MOVES
	add hl, bc
	pop bc
	ld c, NUM_MOVES	
	;initialize current score as best score
	ld a, [hl]
	ld e, a
	;initialize current move position as best move
	ld d, b
.loop2
	ld a, [hl]
	cp e
	call c, .updateBestScore
	dec hl
	dec b
	call z, .circleB
	dec c
	jr nz, .loop2
	pop bc
	ld b, d
	pop de
	pop hl

.done
	ld hl, wEnemyMonMoves
	push bc
	ld c, b
	ld b, 0
	dec bc
	add hl, bc
	pop bc
	ret
.disabled_move
	ld a, $ff
	ld [hl], a
	ret
.updateBestScore
	ld e, a
	ld d, b
	ret
.circleB
	ld b, NUM_MOVES
	push bc
	ld bc, NUM_MOVES
	add hl, bc
	pop bc
	ret

;if trainer uses Transform, then write its PP to party struct
transformPPtasks:
;	return if not a trainer battle since there is no need to update the party struct PP
	ld a, [wIsInBattle]
	cp 2
	ret nz

	ld c, b
	ld b, 0
	dec bc
	
;	return if the move being used is not Transform
	ld hl, wEnemyMonMoves
	add hl, bc
	ld a, [hl]
	cp TRANSFORM
	ret nz
	
;	return if using the Transform move while already transformed into something
	ld a, [wEnemyBattleStatus3]
	bit 3, a
	ret nz
	
	ld hl, wEnemyMonPP
	add hl, bc
	ld a, [hl]
	push af
	
	ld hl, wEnemyMon1PP
	add hl, bc
	ld a, [wEnemyMonPartyPos]
	ld bc, wEnemyMon2 - wEnemyMon1
	call AddNTimes
	
	pop af
	ld [hl], a
	ret

advancedLoadPP:
	ld a, [wIsInBattle]
	cp 1
	jr z, .doRegular	;don't do anything special for wild battles
	;else see if the mon has been sent out before
	call CheckAISentOut
	jr z, .doRegular	;don't do anything special if the mon has not been out before

	;else load its PPs from the wEnemyMonxPP
	ld a, [wWhichPokemon]
	ld hl, wEnemyMon1PP
	ld bc, wEnemyMon2 - wEnemyMon1
	call AddNTimes
	;HL now points to wEnemyMonxPP
	ld de, wEnemyMonPP
	ld bc, $0004
	call CopyData	;copy the pp data from wEnemyMonxPP to wEnemyMonPP
	ret
.doRegular
	ld hl, wEnemyMonMoves
	ld de, wEnemyMonPP - 1
	predef LoadMovePPs
	ret