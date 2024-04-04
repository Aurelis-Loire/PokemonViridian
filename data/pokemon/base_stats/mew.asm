	db DEX_MEW ; pokedex id

	db 100, 100, 100, 100, 100
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/front/mew.pic", 0, 1 ; sprite dimensions
	dw MewPicFront, MewPicBack

	db POUND, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   RAZOR_WIND,   SWORDS_DANCE, SHADOW_BALL,  MEGA_KICK,    \
	     TOXIC,        SLUDGE_BOMB,  BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     ICE_PUNCH,    SUBMISSION,   COUNTER,      SEISMIC_TOSS, POWDER_SNOW,  \
	     MEGA_DRAIN,   SOLARBEAM,    DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   DRAGONBREATH, DIG,          PSYCHIC_M,    PIN_MISSILE,  \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      THUNDERPUNCH, METRONOME,    \
	     SELFDESTRUCT, FIRE_PUNCH,   FIRE_BLAST,   SWIFT,        SKULL_BASH,   \
	     HEADBUTT,     DREAM_EATER,  SKY_ATTACK,   REST,         THUNDER_WAVE, \
	     PSYWAVE,      EXPLOSION,    ROCK_SLIDE,   TRI_ATTACK,   SUBSTITUTE,   \
	     CUT,          FLY,          SURF,         STRENGTH,     FLASH,        \
	     UNUSED
	; end

	db BANK(MewPicFront)
	assert BANK(MewPicFront) == BANK(MewPicBack)
