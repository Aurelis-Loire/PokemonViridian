	db DEX_MILOTIC ; pokedex id

	db  95,  60,  79,  81, 125
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 60 ; catch rate
	db 213 ; base exp

	INCBIN "gfx/pokemon/front/milotic.pic", 0, 1 ; sprite dimensions
	dw MiloticPicFront, MiloticPicBack

	db WATER_GUN, WRAP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  WATER_GUN,    ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   POWDER_SNOW,  DRAGON_TAIL,  MIMIC,        \
	     DOUBLE_TEAM,  SWIFT,        SUBSTITUTE,   SURF
	; end

	db BANK(MiloticPicFront)
	assert BANK(MiloticPicFront) == BANK(MiloticPicBack)
