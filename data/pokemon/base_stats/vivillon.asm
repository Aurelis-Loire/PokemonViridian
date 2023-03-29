	db DEX_VIVILLON ; pokedex id

	db  80,  52,  50,  89,  90
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 185 ; base exp

	INCBIN "gfx/pokemon/front/vivillon.pic", 0, 1 ; sprite dimensions
	dw VivillonPicFront, VivillonPicBack

	db TACKLE, STUN_SPORE, HARDEN, POISONPOWDER ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    PSYCHIC_M,    TELEPORT,     \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        DREAM_EATER,  \
	     REST,         PSYWAVE,      SUBSTITUTE,   FLASH
	; end

	db 0 ; padding
