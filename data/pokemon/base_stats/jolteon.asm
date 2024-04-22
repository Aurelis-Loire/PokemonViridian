	db DEX_JOLTEON ; pokedex id

	db  65,  65,  60, 130, 110
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 197 ; base exp

	INCBIN "gfx/pokemon/front/jolteon.pic", 0, 1 ; sprite dimensions
	dw JolteonPicFront, JolteonPicBack

	db TACKLE, TAIL_WHIP, QUICK_ATTACK, THUNDERSHOCK ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SHADOW_BALL,  TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   THUNDERBOLT,  THUNDER,      PIN_MISSILE,  MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      SWIFT,        SKULL_BASH,   HEADBUTT,     \
	     REST,         SUBSTITUTE,   THUNDER_WAVE
	; end

	db BANK(JolteonPicFront)
	assert BANK(JolteonPicFront) == BANK(JolteonPicBack)
