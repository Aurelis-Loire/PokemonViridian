	db DEX_LOPUNNY ; pokedex id

	db  65,  76,  84, 105,  96
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 60 ; catch rate
	db 178 ; base exp

	INCBIN "gfx/pokemon/front/lopunny.pic", 0, 1 ; sprite dimensions
	dw LopunnyPicFront, LopunnyPicBack

	db SPLASH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SHADOW_BALL,  MEGA_KICK,    TOXIC,        ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   ICE_PUNCH,    POWDER_SNOW,  SOLARBEAM,    \
	     THUNDERBOLT,  THUNDER,      DIG,          DOUBLE_TEAM,  THUNDERPUNCH, \
	     FIRE_PUNCH,   SWIFT,        HEADBUTT,     REST,         THUNDER_WAVE, \
		 SUBSTITUTE,   CUT,          STRENGTH
	; end

	db BANK(LopunnyPicFront)
	assert BANK(LopunnyPicFront) == BANK(LopunnyPicBack)
