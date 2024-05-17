	db DEX_CLEFAIRY ; pokedex id

	db  70,  45,  48,  35,  65
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 150 ; catch rate
	db 68 ; base exp

	INCBIN "gfx/pokemon/front/clefairy.pic", 0, 1 ; sprite dimensions
	dw ClefairyPicFront, ClefairyPicBack

	db POUND, GROWL, CHARM, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SHADOW_BALL,  MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     \
	     BLIZZARD,     ICE_PUNCH,    SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     POWDER_SNOW,  SOLARBEAM,    THUNDERBOLT,  THUNDER,      PSYCHIC_M,    \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      THUNDERPUNCH, FIRE_PUNCH,   \
	     FIRE_BLAST,   SKULL_BASH,   HEADBUTT,     MUD_SLAP,     REST,         \
	     FLAMETHROWER, PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   STRENGTH,     \
		 THUNDER_WAVE
	; end

	db BANK(ClefairyPicFront)
	assert BANK(ClefairyPicFront) == BANK(ClefairyPicBack)
