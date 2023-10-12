	db DEX_DRIFBLIM ; pokedex id

	db  150, 80,  44,  80,  90
	;   hp  atk  def  spd  spc

	db GHOST, FLYING ; type
	db 60 ; catch rate
	db 204 ; base exp

	INCBIN "gfx/pokemon/front/drifblim.pic", 0, 1 ; sprite dimensions
	dw DrifblimPicFront, DrifblimPicBack

	db CONSTRICT, MINIMIZE, ASTONISH, GUST ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SHADOW_BALL,  TOXIC,        BODY_SLAM,    HYPER_BEAM,   THUNDERBOLT,  \
	     THUNDER,      PSYCHIC_M,    DOUBLE_TEAM,  SELFDESTRUCT, SWIFT,        \
	     DREAM_EATER,  REST,         THUNDER_WAVE, EXPLOSION,    SUBSTITUTE,   \
		 CUT,          FLY,          FLASH
	; end

	db 0 ; padding
