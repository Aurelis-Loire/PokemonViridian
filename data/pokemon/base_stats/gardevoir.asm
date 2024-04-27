	db DEX_GARDEVOIR ; pokedex id

	db  68,  65,  65,  80, 125
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 208 ; base exp

	INCBIN "gfx/pokemon/front/gardevoir.pic", 0, 1 ; sprite dimensions
	dw GardevoirPicFront, GardevoirPicBack

	db DOUBLE_TEAM, TELEPORT, PSYBEAM, GROWTH ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SHADOW_BALL,  MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   ICE_PUNCH,    THUNDERBOLT,  PSYCHIC_M,    \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      THUNDERPUNCH, FIRE_PUNCH,   \
	     HEADBUTT,     MUD_SLAP,     REST,         SUBSTITUTE,   THUNDER_WAVE
	; end

	db BANK(GardevoirPicFront)
	assert BANK(GardevoirPicFront) == BANK(GardevoirPicBack)
