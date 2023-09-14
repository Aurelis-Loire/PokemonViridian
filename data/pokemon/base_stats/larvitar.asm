	db DEX_LARVITAR ; pokedex id

	db  50, 64,  50,  41,  50
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 67 ; base exp

	INCBIN "gfx/pokemon/front/larvitar.pic", 0, 1 ; sprite dimensions
	dw LarvitarPicFront, LarvitarPicBack

	db TACKLE, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     EARTHQUAKE,   DIG,          MIMIC,        DOUBLE_TEAM,  REST,         \
	     ROCK_SLIDE,   SUBSTITUTE
	; end

	db 0 ; padding
