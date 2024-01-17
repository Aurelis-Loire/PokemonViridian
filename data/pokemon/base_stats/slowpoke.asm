	db DEX_SLOWPOKE ; pokedex id

	db  90,  65,  65,  15,  40
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 99 ; base exp

	INCBIN "gfx/pokemon/front/slowpoke.pic", 0, 1 ; sprite dimensions
	dw SlowpokePicFront, SlowpokePicBack

	db MEDITATE, TACKLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SHADOW_BALL,  TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     PAY_DAY,      \
	     POWDER_SNOW,  EARTHQUAKE,   FISSURE,      DIG,          PSYCHIC_M,    \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         FIRE_BLAST,   \
	     SWIFT,        SKULL_BASH,   HEADBUTT,     REST,         THUNDER_WAVE, \
	     PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   SURF,         STRENGTH,     \
		 FLASH
	; end

	db BANK(SlowpokePicFront)
	assert BANK(SlowpokePicFront) == BANK(SlowpokePicBack)
