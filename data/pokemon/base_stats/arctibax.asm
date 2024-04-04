	db DEX_ARCTIBAX ; pokedex id

	db  90,  95,  66,  62,  65
	;   hp  atk  def  spd  spc

	db DRAGON, ICE ; type
	db 25 ; catch rate
	db 148 ; base exp

	INCBIN "gfx/pokemon/front/arctibax.pic", 0, 1 ; sprite dimensions
	dw ArctibaxPicFront, ArctibaxPicBack

	db TACKLE, LEER, DRAGON_TAIL, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     POWDER_SNOW,  DRAGON_RAGE,  \
	     DRAGONBREATH, DIG,          MIMIC,        DOUBLE_TEAM,  SKULL_BASH,   \
	     REST,         SUBSTITUTE
	; end

	db BANK(ArctibaxPicFront)
	assert BANK(ArctibaxPicFront) == BANK(ArctibaxPicBack)
