	db DEX_WAILMER ; pokedex id

	db  130,  70,  35,  60,  70
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 125 ; catch rate
	db 137 ; base exp

	INCBIN "gfx/pokemon/front/wailmer.pic", 0, 1 ; sprite dimensions
	dw WailmerPicFront, WailmerPicBack

	db SPLASH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    \
	     ICE_BEAM,     BLIZZARD,     POWDER_SNOW,  EARTHQUAKE,   FISSURE,      \
	     MIMIC,        DOUBLE_TEAM,  SELFDESTRUCT, REST,         SUBSTITUTE,   \
	     SURF,         STRENGTH
	; end

	db 0 ; padding
