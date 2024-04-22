	db DEX_CHANDELURE ; pokedex id

	db  60,  55,  90,  80, 145
	;   hp  atk  def  spd  spc

	db GHOST, FIRE ; type
	db 45 ; catch rate
	db 234 ; base exp

	INCBIN "gfx/pokemon/front/chandelure.pic", 0, 1 ; sprite dimensions
	dw ChandelurePicFront, ChandelurePicBack

	db EMBER, ASTONISH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SHADOW_BALL,  TOXIC,        HYPER_BEAM,   SOLARBEAM,    PSYCHIC_M,    \
	     DOUBLE_TEAM,  FIRE_BLAST,   DREAM_EATER,  REST,         FLAMETHROWER,   \
		 SUBSTITUTE
	; end

	db BANK(ChandelurePicFront)
	assert BANK(ChandelurePicFront) == BANK(ChandelurePicBack)
