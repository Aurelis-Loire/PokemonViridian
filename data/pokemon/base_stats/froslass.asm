	db DEX_FROSLASS ; pokedex id

	db  70,  80,  70, 110,  80
	;   hp  atk  def  spd  spc

	db ICE, GHOST ; type
	db 75 ; catch rate
	db 187 ; base exp

	INCBIN "gfx/pokemon/front/froslass.pic", 0, 1 ; sprite dimensions
	dw FroslassPicFront, FroslassPicBack

	db POWDER_SNOW, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SHADOW_BALL,  TOXIC,        BODY_SLAM,    TAKE_DOWN,    ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   ICE_PUNCH,    POWDER_SNOW,  THUNDERBOLT,  \
	     THUNDER,      PSYCHIC_M,    DOUBLE_TEAM,  BIDE,         HEADBUTT,     \
	     DREAM_EATER,  REST,         THUNDER_WAVE, SUBSTITUTE,   FLASH
	; end

	db BANK(FroslassPicFront)
	assert BANK(FroslassPicFront) == BANK(FroslassPicBack)
