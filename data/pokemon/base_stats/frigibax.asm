	db DEX_FRIGIBAX ; pokedex id

	db  65,  75,  45,  55,  45
	;   hp  atk  def  spd  spc

	db DRAGON, ICE ; type
	db 45 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/front/frigibax.pic", 0, 1 ; sprite dimensions
	dw FrigibaxPicFront, FrigibaxPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     POWDER_SNOW,  DRAGON_RAGE,  \
	     DRAGON_TAIL,  DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(FrigibaxPicFront)
	assert BANK(FrigibaxPicFront) == BANK(FrigibaxPicBack)
