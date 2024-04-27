	db DEX_NIDORAN ; pokedex id

	db  46,  57,  40,  50,  40
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 235 ; catch rate
	db 60 ; base exp

	INCBIN "gfx/pokemon/front/nidoran.pic", 0, 1 ; sprite dimensions
	dw NidoranPicFront, NidoranPicBack

	db LEER, TACKLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BLIZZARD,     \
	     COUNTER,      POWDER_SNOW,  THUNDERBOLT,  THUNDER,      MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      SKULL_BASH,   HEADBUTT,     MUD_SLAP,     \
		 REST,         SUBSTITUTE
	; end

	db BANK(NidoranPicFront)
	assert BANK(NidoranPicFront) == BANK(NidoranPicBack)
