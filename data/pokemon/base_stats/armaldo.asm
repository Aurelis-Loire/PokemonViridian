	db DEX_ARMALDO ; pokedex id

	db  75, 125, 100,  45,  80
	;   hp  atk  def  spd  spc

	db ROCK, BUG ; type
	db 45 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/front/armaldo.pic", 0, 1 ; sprite dimensions
	dw ArmaldoPicFront, ArmaldoPicBack

	db SCRATCH, HARDEN, WATER_GUN, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  WATER_GUN,    \
	     HYPER_BEAM,   SEISMIC_TOSS, EARTHQUAKE,   DIG,          MIMIC,        \
	     DOUBLE_TEAM,  HEADBUTT,     MUD_SLAP,     REST,         ROCK_SLIDE,   \
		 SUBSTITUTE,   CUT,          STRENGTH
	; end

	db BANK(ArmaldoPicFront)
	assert BANK(ArmaldoPicFront) == BANK(ArmaldoPicBack)
