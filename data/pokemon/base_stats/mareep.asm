	db DEX_MAREEP ; pokedex id

	db  55,  40,  40,  35,  65
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 235 ; catch rate
	db 59 ; base exp

	INCBIN "gfx/pokemon/front/mareep.pic", 0, 1 ; sprite dimensions
	dw MareepPicFront, MareepPicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  THUNDERBOLT,  \
	     THUNDER,      MIMIC,        DOUBLE_TEAM,  SWIFT,        REST,         \
	     THUNDER_WAVE, SUBSTITUTE,   FLASH
	; end

	db BANK(MareepPicFront)
	assert BANK(MareepPicFront) == BANK(MareepPicBack)
