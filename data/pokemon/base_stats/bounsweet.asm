	db DEX_BOUNSWEET ; pokedex id

	db  42,  30,  38,  32,  38
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 235 ; catch rate
	db 42 ; base exp

	INCBIN "gfx/pokemon/front/bounsweet.pic", 0, 1 ; sprite dimensions
	dw BounsweetPicFront, BounsweetPicBack

	db SPLASH, TACKLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    MEGA_DRAIN,   SOLARBEAM,    DOUBLE_TEAM,  \
	     REFLECT,      REST,         SUBSTITUTE
	; end

	db BANK(BounsweetPicFront)
	assert BANK(BounsweetPicFront) == BANK(BounsweetPicBack)
