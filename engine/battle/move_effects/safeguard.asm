SafeguardEffect_:
	ld hl, wPlayerBattleStatus2
	ldh a, [hWhoseTurn]
	and a
	jr z, .safeguardEffect
	ld hl, wEnemyBattleStatus2
.safeguardEffect
	bit HAS_SAFEGUARD, [hl] ; is mon protected by mist?
	jr nz, .safeguardAlreadyInUse
	set HAS_SAFEGUARD, [hl] ; mon is now protected by mist
	callfar PlayCurrentMoveAnimation
	ld hl, SafeguardText
	jp PrintText
.safeguardAlreadyInUse
	jpfar PrintButItFailedText_

SafeguardText:
	text_far _SafeguardText
	text_end
