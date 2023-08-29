CeruleanTradeHouse_Script:
	jp EnableAutoTextBoxDrawing

CeruleanTradeHouse_TextPointers:
	dw CeruleanHouse1Text1
	dw CeruleanHouse1Text2
	dw CeruleanHouse1Text3

CeruleanHouse1Text1:
	text_far _CeruleanHouse1Text1
	text_end

CeruleanHouse1Text2:
	text_asm
	ld a, TRADE_FOR_LOLA
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd

CeruleanHouse1Text3:
	text_asm
	CheckEvent EVENT_GOT_STARTER_2, 1
	jr c, .got_mon
	ld a, 30
	ldh [hOaksAideRequirement], a
	ld hl, CeruleanHouse1HiText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .choseNo
	ld hl, wPokedexOwned
	ld b, wPokedexOwnedEnd - wPokedexOwned
	call CountSetBits
	ld a, [wNumSetBits]
	ldh [hOaksAideNumMonsOwned], a
	ld b, a
	ldh a, [hOaksAideRequirement]
	cp b
	jr z, .giveStarter
	jr nc, .notEnough
.giveStarter
	ld hl, CeruleanHouse1YesText
	call PrintText
	ld a, [wPlayerStarter]
	cp STARTER1
	jr z, .getSquirtle
	cp STARTER2
	jr z, .getBulbasaur
	cp STARTER3
	jr z, .getCharmander
.got_mon
	ld hl, CeruleanHouse1HowText
	call PrintText
	jr .done
.done
	jp TextScriptEnd
.choseNo
	ld hl, CeruleanHouse1NoText
	call PrintText
	jr .done
.notEnough
	ld hl, CeruleanHouse1SorryText
	call PrintText
	jr .done
.getBulbasaur
	lb bc, BULBASAUR, 7
	call GivePokemon
	jr nc, .done
	ld a, [wSimulatedJoypadStatesEnd]
	and a
	call z, WaitForTextScrollButtonPress
	call EnableAutoTextBoxDrawing
	ld hl, CeruleanHouse1GivenText
	call PrintText
	SetEvent EVENT_GOT_STARTER_2
	jr .done
.getCharmander
	lb bc, CHARMANDER, 7
	call GivePokemon
	jr nc, .done
	ld a, [wSimulatedJoypadStatesEnd]
	and a
	call z, WaitForTextScrollButtonPress
	call EnableAutoTextBoxDrawing
	ld hl, CeruleanHouse1GivenText
	call PrintText
	SetEvent EVENT_GOT_STARTER_2
	jr .done
.getSquirtle
	lb bc, SQUIRTLE, 7
	call GivePokemon
	jr nc, .done
	ld a, [wSimulatedJoypadStatesEnd]
	and a
	call z, WaitForTextScrollButtonPress
	call EnableAutoTextBoxDrawing
	ld hl, CeruleanHouse1GivenText
	call PrintText
	SetEvent EVENT_GOT_STARTER_2
	jr .done

CeruleanHouse1HowText:
	text_far _CeruleanHouse1HowText
	text_end
	
CeruleanHouse1HiText:
	text_far _CeruleanHouse1HiText
	text_end

CeruleanHouse1YesText:
	text_far _CeruleanHouse1YesText
	text_end
	
CeruleanHouse1NoText:
	text_far _CeruleanHouse1NoText
	text_end
	
CeruleanHouse1SorryText:
	text_far _CeruleanHouse1SorryText
	text_end
	
CeruleanHouse1GivenText:
	text_far _CeruleanHouse1GivenText
	text_end