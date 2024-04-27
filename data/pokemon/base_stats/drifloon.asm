	db DEX_DRIFLOON ; pokedex id

	db  90,  50,  34,  70,  60
	;   hp  atk  def  spd  spc

	db GHOST, FLYING ; type
	db 125 ; catch rate
	db 127 ; base exp

	INCBIN "gfx/pokemon/front/drifloon.pic", 0, 1 ; sprite dimensions
	dw DrifloonPicFront, DrifloonPicBack

	db CONSTRICT, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SHADOW_BALL,  TOXIC,        BODY_SLAM,    THUNDERBOLT,  THUNDER,      \
	     PSYCHIC_M,    DOUBLE_TEAM,  SELFDESTRUCT, SWIFT,        MUD_SLAP,     \
	     REST,         EXPLOSION,    SUBSTITUTE,   CUT,          THUNDER_WAVE
	; end

	db BANK(DrifloonPicFront)
	assert BANK(DrifloonPicFront) == BANK(DrifloonPicBack)
