CeladonMansionRoofHouse_Script:
	jp EnableAutoTextBoxDrawing

CeladonMansionRoofHouse_TextPointers:
	dw CeladonMansion5Text1
	dw CeladonMansion5Text2

CeladonMansion5Text1:
	text_far _CeladonMansion5Text1
	text_end

CeladonMansion5Text2:
	text_asm
	ld a, [wPlayerStarter]
	cp STARTER1
	jr z, .getJolteon
	cp STARTER2
	jr z, .getFlareon
	cp STARTER3
	jr z, .getVaporeon
.getVaporeon
	lb bc, VAPOREON, 25
	call GivePokemon
	jr nc, .done
	ld a, HS_CELADON_MANSION_EEVEE_GIFT
	ld [wMissableObjectIndex], a
	predef HideObject
	jr .done
.getJolteon
	lb bc, JOLTEON, 25
	call GivePokemon
	jr nc, .done
	ld a, HS_CELADON_MANSION_EEVEE_GIFT
	ld [wMissableObjectIndex], a
	predef HideObject
	jr .done
.getFlareon
	lb bc, FLAREON, 25
	call GivePokemon
	jr nc, .done
	ld a, HS_CELADON_MANSION_EEVEE_GIFT
	ld [wMissableObjectIndex], a
	predef HideObject
	jr .done
.done
	jp TextScriptEnd
