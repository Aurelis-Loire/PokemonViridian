	db DEX_SLOWBRO ; pokedex id

	db  95,  75, 110,  30, 100
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 164 ; base exp

	INCBIN "gfx/pokemon/front/slowbro.pic", 0, 1 ; sprite dimensions
	dw SlowbroPicFront, SlowbroPicBack

	db CONFUSION, DISABLE, HEADBUTT, WITHDRAW, ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SHADOW_BALL,  MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   ICE_PUNCH,    SUBMISSION,   DYNAMICPUNCH, \
	     SEISMIC_TOSS, POWDER_SNOW,  EARTHQUAKE,   DIG,          PSYCHIC_M,    \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      ROCK_SMASH,   FIRE_BLAST,   \
	     SWIFT,        SKULL_BASH,   HEADBUTT,     MUD_SLAP,     REST,         \
	     FLAMETHROWER, PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   SURF,         \
		 STRENGTH,     THUNDER_WAVE
	; end

	db BANK(SlowbroPicFront)
	assert BANK(SlowbroPicFront) == BANK(SlowbroPicBack)
