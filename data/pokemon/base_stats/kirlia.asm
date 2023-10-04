	db DEX_KIRLIA ; pokedex id

	db  38,  35,  35,  50, 65
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 120 ; catch rate
	db 140 ; base exp

	INCBIN "gfx/pokemon/front/kirlia.pic", 0, 1 ; sprite dimensions
	dw KirliaPicFront, KirliaPicBack

	db CONFUSION, DOUBLE_TEAM, TELEPORT, PSYBEAM ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SHADOW_BALL,  TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  THUNDERBOLT,  \
	     PSYCHIC_M,    TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     DREAM_EATER,  REST,         THUNDER_WAVE, SUBSTITUTE,   FLASH
	; end

	db 0 ; padding
