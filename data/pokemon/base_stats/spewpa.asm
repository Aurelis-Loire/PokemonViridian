	db DEX_SPEWPA ; pokedex id

	db  45,  22,  60,  29,  30
	;   hp  atk  def  spd  spc

	db BUG, BUG ; type
	db 120 ; catch rate
	db 75 ; base exp

	INCBIN "gfx/pokemon/front/spewpa.pic", 0, 1 ; sprite dimensions
	dw SpewpaPicFront, SpewpaPicBack

	db TACKLE, STRING_SHOT, STUN_SPORE, HARDEN ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db 0 ; padding
