	db DEX_WOOPER ; pokedex id

	db  55,  45,  45,  15,  25
	;   hp  atk  def  spd  spc

	db WATER, GROUND ; type
	db 255 ; catch rate
	db 52 ; base exp

	INCBIN "gfx/pokemon/front/wooper.pic", 0, 1 ; sprite dimensions
	dw WooperPicFront, WooperPicBack

	db WATER_GUN, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        SLUDGE_BOMB,  BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     POWDER_SNOW,  EARTHQUAKE,   \
	     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         REST,         \
		 ROCK_SLIDE,   SUBSTITUTE,   SURF,         FLASH
	; end

	db BANK(WooperPicFront)
	assert BANK(WooperPicFront) == BANK(WooperPicBack)
