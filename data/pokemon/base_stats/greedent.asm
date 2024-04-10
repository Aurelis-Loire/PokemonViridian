	db DEX_GREEDENT ; pokedex id

	db  120, 95,  95,  20,  75
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 161 ; base exp

	INCBIN "gfx/pokemon/front/greedent.pic", 0, 1 ; sprite dimensions
	dw GreedentPicFront, GreedentPicBack

	db TACKLE, TAIL_WHIP, BITE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    HYPER_BEAM,   COUNTER,      EARTHQUAKE,   DIG,          \
	     MIMIC,        DOUBLE_TEAM,  SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(GreedentPicFront)
	assert BANK(GreedentPicFront) == BANK(GreedentPicBack)
