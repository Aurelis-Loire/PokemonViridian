	db DEX_STEENEE ; pokedex id

	db  52,  40,  48,  62,  48
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 120 ; catch rate
	db 102 ; base exp

	INCBIN "gfx/pokemon/front/steenee.pic", 0, 1 ; sprite dimensions
	dw SteeneePicFront, SteeneePicBack

	db GROWL, TACKLE, RAZOR_LEAF, SWEET_SCENT ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    MEGA_DRAIN,   SOLARBEAM,    DOUBLE_TEAM,  \
	     REFLECT,      SWIFT,        REST,         SUBSTITUTE
	; end

	db 0 ; padding
