	db DEX_MAROWAK ; pokedex id

	db  60,  80, 110,  45,  55
	;   hp  atk  def  spd  spc

	db FIRE, GHOST ; type
	db 75 ; catch rate
	db 124 ; base exp

	INCBIN "gfx/pokemon/front/marowak.pic", 0, 1 ; sprite dimensions
	dw MarowakPicFront, MarowakPicBack

	db TAIL_WHIP, BONE_CLUB, HEADBUTT, LEER ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SHADOW_BALL,  MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     POWDER_SNOW,  THUNDERBOLT,  THUNDER,      EARTHQUAKE,   FISSURE,      \
	     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         FIRE_BLAST,   \
	     SKULL_BASH,   DREAM_EATER,  REST,         SUBSTITUTE,   STRENGTH
	; end

	db BANK(MarowakPicFront)
	assert BANK(MarowakPicFront) == BANK(MarowakPicBack)
