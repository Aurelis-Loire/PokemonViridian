	db DEX_WAILORD ; pokedex id

	db  170,  90,  45,  60,  90
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 60 ; catch rate
	db 206 ; base exp

	INCBIN "gfx/pokemon/front/wailord.pic", 0, 1 ; sprite dimensions
	dw WailordPicFront, WailordPicBack

	db MIST, BODY_SLAM, REST, AMNESIA ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   POWDER_SNOW,  EARTHQUAKE,   \
	     FISSURE,      MIMIC,        DOUBLE_TEAM,  SELFDESTRUCT, REST,         \
	     SUBSTITUTE,   SURF,         STRENGTH
	; end

	db 0 ; padding
