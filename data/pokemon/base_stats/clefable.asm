	db DEX_CLEFABLE ; pokedex id

	db  95,  70,  73,  60,  85
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 129 ; base exp

	INCBIN "gfx/pokemon/front/clefable.pic", 0, 1 ; sprite dimensions
	dw ClefablePicFront, ClefablePicBack

	db POUND, GROWL, CHARM, SING ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SHADOW_BALL,  MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   ICE_PUNCH,    SUBMISSION,   COUNTER,      \
	     SEISMIC_TOSS, POWDER_SNOW,  SOLARBEAM,    THUNDERBOLT,  THUNDER,      \
	     PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  REFLECT,      THUNDERPUNCH, \
	     METRONOME,    FIRE_PUNCH,   FIRE_BLAST,   SKULL_BASH,   HEADBUTT,     \
	     REST,         FLAMETHROWER, PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   \
		 STRENGTH,     THUNDER_WAVE
	; end

	db BANK(ClefablePicFront)
	assert BANK(ClefablePicFront) == BANK(ClefablePicBack)
