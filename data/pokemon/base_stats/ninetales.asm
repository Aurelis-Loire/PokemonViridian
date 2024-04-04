	db DEX_NINETALES ; pokedex id

	db  73,  67,  75, 109, 100
	;   hp  atk  def  spd  spc

	db ICE, ICE ; type
	db 75 ; catch rate
	db 178 ; base exp

	INCBIN "gfx/pokemon/front/ninetales.pic", 0, 1 ; sprite dimensions
	dw NinetalesPicFront, NinetalesPicBack

	db POWDER_SNOW, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   POWDER_SNOW,  DIG,          MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      SWIFT,        SKULL_BASH,   HEADBUTT,     \
	     REST,         SUBSTITUTE
	; end

	db BANK(NinetalesPicFront)
	assert BANK(NinetalesPicFront) == BANK(NinetalesPicBack)
