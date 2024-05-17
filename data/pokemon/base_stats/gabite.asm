	db DEX_GABITE ; pokedex id

	db  68, 90,  65,  82,  55
	;   hp  atk  def  spd  spc

	db DRAGON, GROUND ; type
	db 45 ; catch rate
	db 144 ; base exp

	INCBIN "gfx/pokemon/front/gabite.pic", 0, 1 ; sprite dimensions
	dw GabitePicFront, GabitePicBack

	db TACKLE, SAND_ATTACK, DRAGONBREATH, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  DRAGON_RAGE,  \
	     EARTHQUAKE,   OUTRAGE,      DIG,          DOUBLE_TEAM,  ROCK_SMASH,   \
	     FIRE_BLAST,   SWIFT,        HEADBUTT,     MUD_SLAP,     REST,         \
		 FLAMETHROWER, ROCK_SLIDE,   SUBSTITUTE,   CUT,          STRENGTH
	; end

	db BANK(GabitePicFront)
	assert BANK(GabitePicFront) == BANK(GabitePicBack)
