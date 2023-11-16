	db DEX_GIBLE ; pokedex id

	db  58,  70,  45,  42,  45
	;   hp  atk  def  spd  spc

	db DRAGON, GROUND ; type
	db 45 ; catch rate
	db 67 ; base exp

	INCBIN "gfx/pokemon/front/gible.pic", 0, 1 ; sprite dimensions
	dw GiblePicFront, GiblePicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  DRAGON_RAGE,  \
	     EARTHQUAKE,   DIG,          DOUBLE_TEAM,  FIRE_BLAST,   SWIFT,        \
	     REST,         ROCK_SLIDE,   SUBSTITUTE,   CUT,          STRENGTH
	; end

	db BANK(GiblePicFront)
	assert BANK(GiblePicFront) == BANK(GiblePicBack)
