	db DEX_JOLTIK ; pokedex id

	db  50,  47,  50,  65,  57
	;   hp  atk  def  spd  spc

	db BUG, ELECTRIC ; type
	db 190 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/front/joltik.pic", 0, 1 ; sprite dimensions
	dw JoltikPicFront, JoltikPicBack

	db STRING_SHOT, LEECH_LIFE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        THUNDERBOLT,  PIN_MISSILE,  DOUBLE_TEAM,  SWIFT,        \
	     REST,         THUNDER_WAVE, SUBSTITUTE,   CUT
	; end

	db 0 ; padding
	