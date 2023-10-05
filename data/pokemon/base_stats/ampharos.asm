	db DEX_AMPHAROS ; pokedex id

	db  90,  75,  75,  55, 115
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 194 ; base exp

	INCBIN "gfx/pokemon/front/ampharos.pic", 0, 1 ; sprite dimensions
	dw AmpharosPicFront, AmpharosPicBack

	db THUNDER_WAVE, TAKE_DOWN, CONFUSE_RAY, THUNDERPUNCH ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   COUNTER,      SEISMIC_TOSS, THUNDERBOLT,  \
	     THUNDER,      MIMIC,        DOUBLE_TEAM,  REFLECT,      SWIFT,        \
	     REST,         THUNDER_WAVE, SUBSTITUTE,   STRENGTH,     FLASH
	; end

	db 0 ; padding
