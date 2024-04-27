	db DEX_SIGILYPH ; pokedex id

	db  72,  58,  80,  97, 103
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, FLYING ; type
	db 45 ; catch rate
	db 172 ; base exp

	INCBIN "gfx/pokemon/front/sigilyph.pic", 0, 1 ; sprite dimensions
	dw SigilyphPicFront, SigilyphPicBack

	db GUST, HYPNOSIS, PSYWAVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SHADOW_BALL,  TOXIC,        ICE_BEAM,     HYPER_BEAM,   POWDER_SNOW,  \
	     SOLARBEAM,    PSYCHIC_M,    DOUBLE_TEAM,  REFLECT,      SWIFT,        \
	     SKY_ATTACK,   REST,         PSYWAVE,      SUBSTITUTE,   FLY,          \
	     THUNDER_WAVE
	; end

	db BANK(SigilyphPicFront)
	assert BANK(SigilyphPicFront) == BANK(SigilyphPicBack)
