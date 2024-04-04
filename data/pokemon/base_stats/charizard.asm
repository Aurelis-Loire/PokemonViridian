	db DEX_CHARIZARD ; pokedex id

	db  78,  84,  78, 100, 106
	;   hp  atk  def  spd  spc

	db FIRE, FLYING ; type
	db 45 ; catch rate
	db 209 ; base exp

	INCBIN "gfx/pokemon/front/charizard.pic", 0, 1 ; sprite dimensions
	dw CharizardPicFront, CharizardPicBack

	db RAGE, SCARY_FACE, FLAMETHROWER, WING_ATTACK ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   COUNTER,      \
	     SEISMIC_TOSS, DRAGON_RAGE,  EARTHQUAKE,   DRAGONBREATH, DIG,          \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      FIRE_PUNCH,   FIRE_BLAST,   \
	     SWIFT,        SKULL_BASH,   HEADBUTT,     REST,         ROCK_SLIDE,   \
	     SUBSTITUTE,   CUT,          FLY,          STRENGTH
	; end

	db BANK(CharizardPicFront)
	assert BANK(CharizardPicFront) == BANK(CharizardPicBack)
