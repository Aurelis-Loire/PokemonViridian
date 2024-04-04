	db DEX_TYRANITAR ; pokedex id

	db  100, 134, 110, 61, 100
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/tyranitar.pic", 0, 1 ; sprite dimensions
	dw TyranitarPicFront, TyranitarPicBack

	db LEER, FOCUS_ENERGY, BITE, SCREECH ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  ICE_BEAM,     HYPER_BEAM,   COUNTER,      SEISMIC_TOSS, \
	     THUNDERBOLT,  THUNDER,      EARTHQUAKE,   DRAGONBREATH, DIG,          \
		 MIMIC,        DOUBLE_TEAM,  FIRE_PUNCH,   FIRE_BLAST,   HEADBUTT,     \
		 REST,         THUNDER_WAVE, ROCK_SLIDE,   SUBSTITUTE,   CUT,          \
		 SURF,         STRENGTH
	; end

	db BANK(TyranitarPicFront)
	assert BANK(TyranitarPicFront) == BANK(TyranitarPicBack)
