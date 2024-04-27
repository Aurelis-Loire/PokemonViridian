	db DEX_PUPITAR ; pokedex id

	db  70, 84,  70,  51,  70
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 144 ; base exp

	INCBIN "gfx/pokemon/front/pupitar.pic", 0, 1 ; sprite dimensions
	dw PupitarPicFront, PupitarPicBack

	db BITE, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     EARTHQUAKE,   DIG,          MIMIC,        DOUBLE_TEAM,  HEADBUTT,     \
	     MUD_SLAP,     REST,         ROCK_SLIDE,   SUBSTITUTE
	; end

	db BANK(PupitarPicFront)
	assert BANK(PupitarPicFront) == BANK(PupitarPicBack)
