	db DEX_PRIMEAPE ; pokedex id

	db  65, 105,  60,  95,  60
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 149 ; base exp

	INCBIN "gfx/pokemon/front/primeape.pic", 0, 1 ; sprite dimensions
	dw PrimeapePicFront, PrimeapePicBack

	db SCRATCH, LEER, KARATE_CHOP, FURY_SWIPES ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   ICE_PUNCH,    SUBMISSION,   DYNAMICPUNCH, \
	     SEISMIC_TOSS, THUNDERBOLT,  THUNDER,      OUTRAGE,      DIG,          \
	     MIMIC,        DOUBLE_TEAM,  THUNDERPUNCH, ROCK_SMASH,   FIRE_PUNCH,   \
	     SWIFT,        SKULL_BASH,   HEADBUTT,     MUD_SLAP,     REST,         \
		 ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db BANK(PrimeapePicFront)
	assert BANK(PrimeapePicFront) == BANK(PrimeapePicBack)
