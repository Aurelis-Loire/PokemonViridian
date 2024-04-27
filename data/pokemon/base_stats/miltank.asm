	db DEX_MILTANK ; pokedex id

	db  95,  80, 105, 100,  70
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/front/miltank.pic", 0, 1 ; sprite dimensions
	dw MiltankPicFront, MiltankPicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SHADOW_BALL,  MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     DOUBLE_EDGE,  ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   ICE_PUNCH,    \
	     COUNTER,      SEISMIC_TOSS, POWDER_SNOW,  THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   MIMIC,        DOUBLE_TEAM,  THUNDERPUNCH, METRONOME,    \
	     FIRE_PUNCH,   HEADBUTT,     MUD_SLAP,     REST,         ROCK_SLIDE,   \
		 SUBSTITUTE,   SURF,         STRENGTH,     THUNDER_WAVE
	; end

	db BANK(MiltankPicFront)
	assert BANK(MiltankPicFront) == BANK(MiltankPicBack)
