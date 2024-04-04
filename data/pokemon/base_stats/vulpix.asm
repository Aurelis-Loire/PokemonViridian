	db DEX_VULPIX ; pokedex id

	db  38,  41,  40,  65,  65
	;   hp  atk  def  spd  spc

	db ICE, ICE ; type
	db 190 ; catch rate
	db 63 ; base exp

	INCBIN "gfx/pokemon/front/vulpix.pic", 0, 1 ; sprite dimensions
	dw VulpixPicFront, VulpixPicBack

	db POWDER_SNOW, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  ICE_BEAM,     \
	     BLIZZARD,     POWDER_SNOW,  DIG,          MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      SWIFT,        SKULL_BASH,   HEADBUTT,     REST,         \
		 SUBSTITUTE
	; end

	db BANK(VulpixPicFront)
	assert BANK(VulpixPicFront) == BANK(VulpixPicBack)
