	db DEX_SKWOVET ; pokedex id

	db  70,  55,  55,  25,  35
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 55 ; base exp

	INCBIN "gfx/pokemon/front/skwovet.pic", 0, 1 ; sprite dimensions
	dw SkwovetPicFront, SkwovetPicBack

	db TACKLE, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    \
	     DIG,          MIMIC,        DOUBLE_TEAM,  SKULL_BASH,   MUD_SLAP,     \
	     REST,         SUBSTITUTE
	; end

	db BANK(SkwovetPicFront)
	assert BANK(SkwovetPicFront) == BANK(SkwovetPicBack)
