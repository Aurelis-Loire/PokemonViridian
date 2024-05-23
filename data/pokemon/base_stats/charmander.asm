	db DEX_CHARMANDER ; pokedex id

	db  39,  52,  43,  65,  60
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 65 ; base exp

	INCBIN "gfx/pokemon/front/charmander.pic", 0, 1 ; sprite dimensions
	dw CharmanderPicFront, CharmanderPicBack

	db SCRATCH, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  SUBMISSION,   DYNAMICPUNCH, SEISMIC_TOSS, \
	     DRAGON_RAGE,  DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     ROCK_SMASH,   FIRE_PUNCH,   FIRE_BLAST,   SWIFT,        SKULL_BASH,   \
	     HEADBUTT,     MUD_SLAP,     REST,         FLAMETHROWER, ROCK_SLIDE,   \
		 SUBSTITUTE,   CUT,          STRENGTH
	; end

	db BANK(CharmanderPicFront)
	assert BANK(CharmanderPicFront) == BANK(CharmanderPicBack)
