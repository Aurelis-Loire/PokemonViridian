	db DEX_BLASTOISE ; pokedex id

	db  79,  83, 100,  78, 105
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/blastoise.pic", 0, 1 ; sprite dimensions
	dw BlastoisePicFront, BlastoisePicBack

	db WATER_GUN, BITE, STOMP, HAZE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   ICE_PUNCH,    SUBMISSION,   DYNAMICPUNCH, SEISMIC_TOSS, \
	     POWDER_SNOW,  EARTHQUAKE,   OUTRAGE,      DIG,          MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      ROCK_SMASH,   SKULL_BASH,   HEADBUTT,     \
	     MUD_SLAP,     REST,         SUBSTITUTE,   SURF,         STRENGTH
	; end

	db BANK(BlastoisePicFront)
	assert BANK(BlastoisePicFront) == BANK(BlastoisePicBack)
