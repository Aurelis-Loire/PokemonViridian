	db DEX_BAXCALIBUR ; pokedex id

	db  115, 145, 92,  87,  86
	;   hp  atk  def  spd  spc

	db DRAGON, ICE ; type
	db 10 ; catch rate
	db 255 ; base exp

	INCBIN "gfx/pokemon/front/baxcalibur.pic", 0, 1 ; sprite dimensions
	dw BaxcaliburPicFront, BaxcaliburPicBack

	db FOCUS_ENERGY, BITE, TAKE_DOWN, ICE_BEAM ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   POWDER_SNOW,  \
	     DRAGON_RAGE,  EARTHQUAKE,   DIG,          MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(BaxcaliburPicFront)
	assert BANK(BaxcaliburPicFront) == BANK(BaxcaliburPicBack)
