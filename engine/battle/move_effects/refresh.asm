RefreshEffect_:
	ld a, $7
; store 7 on every stat mod
	ld hl, wPlayerMonAttackMod
	call ResetStatMods
; copy unmodified stats to battle stats
	ld hl, wPlayerMonUnmodifiedAttack
	ld de, wBattleMonAttack
	call ResetStats
; cure non-volatile status, but only for the target
	xor a
	ld hl, wBattleMonStatus
	dec de
	ld [wPlayerToxicCounter], a
	ld [hl], a
	ld hl, StatusChangesEliminatedText
	jp PrintText