	db DEX_QUAGSIRE ; pokedex id

	db  95,  85,  85,  35, 65
	;   hp  atk  def  spd  spc

	db WATER, GROUND ; type
	db 90 ; catch rate
	db 137 ; base exp

	INCBIN "gfx/pokemon/front/quagsire.pic", 0, 1 ; sprite dimensions
	dw QuagsirePicFront, QuagsirePicBack

	db WATER_GUN, TAIL_WHIP, SLAM, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  WATER_GUN,    \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   POWDER_SNOW,  EARTHQUAKE,   \
	     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         REST,         \
		 ROCK_SLIDE,   SUBSTITUTE,   SURF,         STRENGTH,     FLASH
	; end

	db 0 ; padding
