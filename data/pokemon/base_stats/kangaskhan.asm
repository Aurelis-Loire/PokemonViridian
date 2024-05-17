	db DEX_KANGASKHAN ; pokedex id

	db 105,  95,  80,  90,  40
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 175 ; base exp

	INCBIN "gfx/pokemon/front/kangaskhan.pic", 0, 1 ; sprite dimensions
	dw KangaskhanPicFront, KangaskhanPicBack

	db COMET_PUNCH, RAGE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SHADOW_BALL,  MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   ICE_PUNCH,    SUBMISSION,   COUNTER,      \
	     SEISMIC_TOSS, POWDER_SNOW,  THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     OUTRAGE,      MIMIC,        DOUBLE_TEAM,  THUNDERPUNCH, ROCK_SMASH,   \
	     FIRE_PUNCH,   FIRE_BLAST,   SKULL_BASH,   HEADBUTT,     MUD_SLAP,     \
		 REST,         FLAMETHROWER, ROCK_SLIDE,   SUBSTITUTE,   SURF,         \
		 STRENGTH
	; end

	db BANK(KangaskhanPicFront)
	assert BANK(KangaskhanPicFront) == BANK(KangaskhanPicBack)
