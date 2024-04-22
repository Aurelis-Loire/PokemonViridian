	db DEX_STARMIE ; pokedex id

	db  60,  75,  85, 115, 100
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 207 ; base exp

	INCBIN "gfx/pokemon/front/starmie.pic", 0, 1 ; sprite dimensions
	dw StarmiePicFront, StarmiePicBack

	db TACKLE, WATER_GUN, HARDEN, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   POWDER_SNOW,  THUNDERBOLT,  \
	     THUNDER,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     SWIFT,        SKULL_BASH,   REST,         PSYWAVE,      TRI_ATTACK,   \
	     SUBSTITUTE,   SURF,         THUNDER_WAVE
	; end

	db BANK(StarmiePicFront)
	assert BANK(StarmiePicFront) == BANK(StarmiePicBack)
