	db DEX_GOLURK ; pokedex id

	db  89, 124,  80,  55,  80
	;   hp  atk  def  spd  spc

	db GHOST, GROUND ; type
	db 90 ; catch rate
	db 169 ; base exp

	INCBIN "gfx/pokemon/front/golurk.pic", 0, 1 ; sprite dimensions
	dw GolurkPicFront, GolurkPicBack

	db ROCK_THROW, MEGA_PUNCH, NIGHT_SHADE, EARTHQUAKE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SHADOW_BALL,  MEGA_KICK,    TOXIC,        ICE_BEAM,     \
	     HYPER_BEAM,   ICE_PUNCH,    POWDER_SNOW,  SOLARBEAM,    THUNDERBOLT,  \
	     EARTHQUAKE,   PSYCHIC_M,    DOUBLE_TEAM,  SELFDESTRUCT, FIRE_PUNCH,   \
		 REST,         ROCK_SLIDE,   SUBSTITUTE,   FLY,          STRENGTH,     \
		 FLASH
	; end

	db BANK(GolurkPicFront)
	assert BANK(GolurkPicFront) == BANK(GolurkPicBack)
