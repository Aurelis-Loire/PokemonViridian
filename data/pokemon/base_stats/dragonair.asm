	db DEX_DRAGONAIR ; pokedex id

	db  61,  84,  65,  70,  70
	;   hp  atk  def  spd  spc

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 144 ; base exp

	INCBIN "gfx/pokemon/front/dragonair.pic", 0, 1 ; sprite dimensions
	dw DragonairPicFront, DragonairPicBack

	db WRAP, LEER, THUNDER_WAVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     POWDER_SNOW,  DRAGON_RAGE,  \
	     THUNDERBOLT,  THUNDER,      DRAGONBREATH, MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      FIRE_BLAST,   SWIFT,        SKULL_BASH,   HEADBUTT,     \
	     REST,         FLAMETHROWER, SUBSTITUTE,   SURF,         THUNDER_WAVE
	; end

	db BANK(DragonairPicFront)
	assert BANK(DragonairPicFront) == BANK(DragonairPicBack)
