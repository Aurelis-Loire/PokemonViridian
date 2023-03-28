	db DEX_SCATTERBUG ; pokedex id

	db  38,  35,  40,  35,  27
	;   hp  atk  def  spd  spc

	db BUG, BUG ; type
	db 255 ; catch rate
	db 40 ; base exp

	INCBIN "gfx/pokemon/front/scatterbug.pic", 0, 1 ; sprite dimensions
	dw ScatterbugPicFront, ScatterbugPicBack

	db TACKLE, STRING_SHOT, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db 0 ; padding
