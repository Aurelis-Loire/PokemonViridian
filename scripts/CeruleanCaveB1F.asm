CeruleanCaveB1F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, CeruleanCaveB1FTrainerHeaders
	ld de, CeruleanCaveB1F_ScriptPointers
	ld a, [wCeruleanCaveB1FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wCeruleanCaveB1FCurScript], a
	ret

CeruleanCaveB1F_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

CeruleanCaveB1F_TextPointers:
	dw MewtwoText
	dw PickUpItemText
	dw PickUpItemText
	dw CeruleanFossilText

CeruleanCaveB1FTrainerHeaders:
	def_trainers
MewtwoTrainerHeader:
	trainer EVENT_BEAT_MEWTWO, 0, MewtwoBattleText, MewtwoBattleText, MewtwoBattleText
	db -1 ; end

MewtwoText:
	text_asm
	ld hl, MewtwoTrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

MewtwoBattleText:
	text_far _MewtwoBattleText
	text_asm
	ld a, MEWTWO
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

CeruleanFossilText:
	text_asm
	CheckEvent EVENT_GOT_HELIX_FOSSIL
	jr z, .getHelix
	lb bc, DOME_FOSSIL, 1
	call GiveItem
	jp nc, BagFullScript
	call FossilObtainedScript
	ld a, HS_CERULEAN_CAVE_B1F_FOSSIL
	ld [wMissableObjectIndex], a
	predef HideObject
	jr .gotFossil
.getHelix
	lb bc, HELIX_FOSSIL, 1
	call GiveItem
	jp nc, BagFullScript
	call FossilObtainedScript
	ld a, HS_CERULEAN_CAVE_B1F_FOSSIL
	ld [wMissableObjectIndex], a
	predef HideObject
.gotFossil
	jp TextScriptEnd
	
BagFullScript:
	ld hl, BagFullMessage
	call PrintText
	jp TextScriptEnd
	
FossilObtainedScript:
	ld hl, FossilObtained
	jp PrintText
	
BagFullMessage:
	text_far _BagFullText
	text_waitbutton
	text_end
	
FossilObtained:
	text_far _FossilObtainedText
	sound_get_key_item
	text_waitbutton
	text_end