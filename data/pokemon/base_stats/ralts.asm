	db DEX_RALTS ; pokedex id

	db  28,  25,  25,  40, 45
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 235 ; catch rate
	db 70 ; base exp

	INCBIN "gfx/pokemon/front/ralts.pic", 0, 1 ; sprite dimensions
	dw RaltsPicFront, RaltsPicBack

	db GROWL, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SHADOW_BALL,  TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  THUNDERBOLT,  \
	     PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  REFLECT,      DREAM_EATER,  \
	     REST,         THUNDER_WAVE, SUBSTITUTE,   FLASH
	; end

	db 0 ; padding
