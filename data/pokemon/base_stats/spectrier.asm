	db DEX_SPECTRIER ; pokedex id

	db  100, 65, 60,  130, 145
	;   hp  atk  def  spd  spc

	db GHOST, GHOST ; type
	db 3 ; catch rate
	db 255 ; base exp

	INCBIN "gfx/pokemon/front/spectrier.pic", 0, 1 ; sprite dimensions
	dw SpectrierPicFront, SpectrierPicBack

	db TACKLE, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SHADOW_BALL,  BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     PSYCHIC_M,    SWIFT,        REST,         SUBSTITUTE
	; end

	db BANK(SpectrierPicFront)
	assert BANK(SpectrierPicFront) == BANK(SpectrierPicBack)
