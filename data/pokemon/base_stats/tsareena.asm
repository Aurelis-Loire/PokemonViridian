	db DEX_TSAREENA ; pokedex id

	db  72, 120,  98,  72,  98
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 230 ; base exp

	INCBIN "gfx/pokemon/front/tsareena.pic", 0, 1 ; sprite dimensions
	dw TsareenaPicFront, TsareenaPicBack

	db SPLASH, GROWL, TACKLE, RAZOR_LEAF ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_KICK,    TOXIC,        TAKE_DOWN,    MEGA_DRAIN,   SOLARBEAM,    \
	     DOUBLE_TEAM,  REFLECT,      SWIFT,        REST,         SUBSTITUTE
	; end

	db BANK(TsareenaPicFront)
	assert BANK(TsareenaPicFront) == BANK(TsareenaPicBack)
