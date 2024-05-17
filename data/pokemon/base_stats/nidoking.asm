	db DEX_NIDOKING ; pokedex id

	db  81,  92,  77,  85,  85
	;   hp  atk  def  spd  spc

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 195 ; base exp

	INCBIN "gfx/pokemon/front/nidoking.pic", 0, 1 ; sprite dimensions
	dw NidokingPicFront, NidokingPicBack

	db LEER, TACKLE, HORN_ATTACK, DOUBLE_KICK ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SHADOW_BALL,  MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   ICE_PUNCH,    SUBMISSION,   COUNTER,      \
	     SEISMIC_TOSS, POWDER_SNOW,  THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     OUTRAGE,      MIMIC,        DOUBLE_TEAM,  REFLECT,      THUNDERPUNCH, \
	     ROCK_SMASH,   FIRE_PUNCH,   FIRE_BLAST,   SKULL_BASH,   HEADBUTT,     \
	     MUD_SLAP,     REST,         FLAMETHROWER, ROCK_SLIDE,   SUBSTITUTE,   \
		 SURF,         STRENGTH
	; end

	db BANK(NidokingPicFront)
	assert BANK(NidokingPicFront) == BANK(NidokingPicBack)
