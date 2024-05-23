	db DEX_MANKEY ; pokedex id

	db  40,  80,  35,  70,  35
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 190 ; catch rate
	db 74 ; base exp

	INCBIN "gfx/pokemon/front/mankey.pic", 0, 1 ; sprite dimensions
	dw MankeyPicFront, MankeyPicBack

	db SCRATCH, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  ICE_PUNCH,    SUBMISSION,   DYNAMICPUNCH, SEISMIC_TOSS, \
	     THUNDERBOLT,  THUNDER,      OUTRAGE,      DIG,          MIMIC,        \
	     DOUBLE_TEAM,  THUNDERPUNCH, ROCK_SMASH,   FIRE_PUNCH,   SWIFT,        \
	     SKULL_BASH,   HEADBUTT,     MUD_SLAP,     REST,         ROCK_SLIDE,   \
		 SUBSTITUTE,   STRENGTH
	; end

	db BANK(MankeyPicFront)
	assert BANK(MankeyPicFront) == BANK(MankeyPicBack)
