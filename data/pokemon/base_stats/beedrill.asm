	db DEX_BEEDRILL ; pokedex id

	db  65,  80,  40,  75,  80
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 45 ; catch rate
	db 159 ; base exp

	INCBIN "gfx/pokemon/front/beedrill.pic", 0, 1 ; sprite dimensions
	dw BeedrillPicFront, BeedrillPicBack

	db POISON_STING, STRING_SHOT, HARDEN, FURY_ATTACK ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        SLUDGE_BOMB,  TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   MEGA_DRAIN,   PIN_MISSILE,  MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \
		 CUT
	; end

	db BANK(BeedrillPicFront)
	assert BANK(BeedrillPicFront) == BANK(BeedrillPicBack)
