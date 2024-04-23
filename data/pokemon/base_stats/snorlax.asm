	db DEX_SNORLAX ; pokedex id

	db 160, 110,  65,  30,  65
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 154 ; base exp

	INCBIN "gfx/pokemon/front/snorlax.pic", 0, 1 ; sprite dimensions
	dw SnorlaxPicFront, SnorlaxPicBack

	db HEADBUTT, AMNESIA, REST, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SHADOW_BALL,  MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   ICE_PUNCH,    SUBMISSION,   COUNTER,      \
	     SEISMIC_TOSS, POWDER_SNOW,  SOLARBEAM,    THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   OUTRAGE,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      THUNDERPUNCH, METRONOME,    SELFDESTRUCT, FIRE_PUNCH,   \
	     FIRE_BLAST,   SKULL_BASH,   HEADBUTT,     REST,         FLAMETHROWER, \
	     PSYWAVE,      ROCK_SLIDE,   SUBSTITUTE,   SURF,         STRENGTH
	; end

	db BANK(SnorlaxPicFront)
	assert BANK(SnorlaxPicFront) == BANK(SnorlaxPicBack)
