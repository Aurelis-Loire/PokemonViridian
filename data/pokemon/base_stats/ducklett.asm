	db DEX_DUCKLETT ; pokedex id

	db  62,  44,  50,  55,  50
	;   hp  atk  def  spd  spc

	db WATER, FLYING ; type
	db 190 ; catch rate
	db 61 ; base exp

	INCBIN "gfx/pokemon/front/ducklett.pic", 0, 1 ; sprite dimensions
	dw DucklettPicFront, DucklettPicBack

	db WATER_GUN, HAZE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     POWDER_SNOW,  \
	     DOUBLE_TEAM,  REST,         SUBSTITUTE,   FLY,          SURF
	; end

	db 0 ; padding
