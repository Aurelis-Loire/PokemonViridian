	db DEX_GARCHOMP ; pokedex id

	db  108, 130, 95, 102,  85
	;   hp  atk  def  spd  spc

	db DRAGON, GROUND ; type
	db 45 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/garchomp.pic", 0, 1 ; sprite dimensions
	dw GarchompPicFront, GarchompPicBack

	db TACKLE, SAND_ATTACK, DRAGONBREATH, DRAGON_RAGE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   DRAGON_RAGE,  EARTHQUAKE,   DRAGONBREATH, DIG,          \
	     DOUBLE_TEAM,  FIRE_BLAST,   SWIFT,        HEADBUTT,     REST,         \
		 ROCK_SLIDE,   SUBSTITUTE,   CUT,          SURF,         STRENGTH
	; end

	db BANK(GarchompPicFront)
	assert BANK(GarchompPicFront) == BANK(GarchompPicBack)
