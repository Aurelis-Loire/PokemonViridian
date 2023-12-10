	db DEX_LEAFEON ; pokedex id

	db  65, 110, 130,  95, 65
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 196 ; base exp

	INCBIN "gfx/pokemon/front/leafeon.pic", 0, 1 ; sprite dimensions
	dw LeafeonPicFront, LeafeonPicBack

	db TACKLE, TAIL_WHIP, QUICK_ATTACK, RAZOR_LEAF ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, SHADOW_BALL,  TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   SOLARBEAM,    DIG,          MIMIC,        \
	     DOUBLE_TEAM,  SWIFT,        HEADBUTT,     REST,         SUBSTITUTE,   \
		 STRENGTH,     FLASH
	; end

	db BANK(LeafeonPicFront)
	assert BANK(LeafeonPicFront) == BANK(LeafeonPicBack)
