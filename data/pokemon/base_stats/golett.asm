	db DEX_GOLETT ; pokedex id

	db  59,  74,  50,  35,  50
	;   hp  atk  def  spd  spc

	db GHOST, GROUND ; type
	db 190 ; catch rate
	db 61 ; base exp

	INCBIN "gfx/pokemon/front/golett.pic", 0, 1 ; sprite dimensions
	dw GolettPicFront, GolettPicBack

	db POUND, ASTONISH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SHADOW_BALL,  MEGA_KICK,    TOXIC,        ICE_BEAM,     \
	     ICE_PUNCH,    DYNAMICPUNCH, POWDER_SNOW,  EARTHQUAKE,   PSYCHIC_M,    \
	     DOUBLE_TEAM,  THUNDERPUNCH, ROCK_SMASH,   SELFDESTRUCT, FIRE_PUNCH,   \
		 MUD_SLAP,     REST,         ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db BANK(GolettPicFront)
	assert BANK(GolettPicFront) == BANK(GolettPicBack)
