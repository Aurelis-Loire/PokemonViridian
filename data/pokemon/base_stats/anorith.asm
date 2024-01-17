	db DEX_ANORITH ; pokedex id

	db  45,  95,  50,  75,  50
	;   hp  atk  def  spd  spc

	db ROCK, BUG ; type
	db 45 ; catch rate
	db 119 ; base exp

	INCBIN "gfx/pokemon/front/anorith.pic", 0, 1 ; sprite dimensions
	dw AnorithPicFront, AnorithPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  WATER_GUN,    \
	     DIG,          MIMIC,        DOUBLE_TEAM,  HEADBUTT,     REST,         \
	     ROCK_SLIDE,   SUBSTITUTE,   CUT
	; end

	db BANK(AnorithPicFront)
	assert BANK(AnorithPicFront) == BANK(AnorithPicBack)
