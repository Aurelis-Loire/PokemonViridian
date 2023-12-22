	db DEX_LANDORUS ; pokedex id

	db  89, 125,  90, 101, 115
	;   hp  atk  def  spd  spc

	db GROUND, FLYING ; type
	db 3 ; catch rate
	db 255 ; base exp

	INCBIN "gfx/pokemon/front/landorus.pic", 0, 1 ; sprite dimensions
	dw LandorusPicFront, LandorusPicBack

	db ROCK_THROW, SWORDS_DANCE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        SLUDGE_BOMB,  BODY_SLAM,    HYPER_BEAM,   \
	     EARTHQUAKE,   FISSURE,      DIG,          PSYCHIC_M,    DOUBLE_TEAM,  \
	     SELFDESTRUCT, REST,         EXPLOSION,    ROCK_SLIDE,   SUBSTITUTE,   \
	     FLY,          STRENGTH
	; end

	db BANK(LandorusPicFront)
	assert BANK(LandorusPicFront) == BANK(LandorusPicBack)
