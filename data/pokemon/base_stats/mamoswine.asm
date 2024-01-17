	db DEX_MAMOSWINE ; pokedex id

	db  110, 130, 80,  80,  70
	;   hp  atk  def  spd  spc

	db ICE, GROUND ; type
	db 50 ; catch rate
	db 207 ; base exp

	INCBIN "gfx/pokemon/front/mamoswine.pic", 0, 1 ; sprite dimensions
	dw MamoswinePicFront, MamoswinePicBack

	db TACKLE, POWDER_SNOW, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   POWDER_SNOW,  EARTHQUAKE,   FISSURE,      \
	     DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      HEADBUTT,     \
	     REST,         ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db BANK(MamoswinePicFront)
	assert BANK(MamoswinePicFront) == BANK(MamoswinePicBack)
