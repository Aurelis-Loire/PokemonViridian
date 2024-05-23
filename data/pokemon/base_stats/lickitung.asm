	db DEX_LICKITUNG ; pokedex id

	db  90,  55,  75,  30,  60
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 127 ; base exp

	INCBIN "gfx/pokemon/front/lickitung.pic", 0, 1 ; sprite dimensions
	dw LickitungPicFront, LickitungPicBack

	db WRAP, SUPERSONIC, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, SHADOW_BALL,  MEGA_KICK,    TOXIC,        \
	     BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   ICE_PUNCH,    SUBMISSION,   \
	     DYNAMICPUNCH, SEISMIC_TOSS, POWDER_SNOW,  THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   MIMIC,        DOUBLE_TEAM,  THUNDERPUNCH, ROCK_SMASH,   \
	     FIRE_PUNCH,   FIRE_BLAST,   SKULL_BASH,   HEADBUTT,     MUD_SLAP,     \
		 REST,         FLAMETHROWER, SUBSTITUTE,   CUT,          SURF,         \
		 STRENGTH
	; end

	db BANK(LickitungPicFront)
	assert BANK(LickitungPicFront) == BANK(LickitungPicBack)
