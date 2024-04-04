	db DEX_KADABRA ; pokedex id

	db  40,  35,  30, 105, 120
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 100 ; catch rate
	db 145 ; base exp

	INCBIN "gfx/pokemon/front/kadabra.pic", 0, 1 ; sprite dimensions
	dw KadabraPicFront, KadabraPicBack

	db TELEPORT, CONFUSION, DISABLE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SHADOW_BALL,  MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  ICE_PUNCH,    SUBMISSION,   COUNTER,      \
	     SEISMIC_TOSS, DIG,          PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      THUNDERPUNCH, METRONOME,    FIRE_PUNCH,   SKULL_BASH,   \
	     HEADBUTT,     REST,         THUNDER_WAVE, PSYWAVE,      TRI_ATTACK,   \
		 SUBSTITUTE,   FLASH
	; end

	db BANK(KadabraPicFront)
	assert BANK(KadabraPicFront) == BANK(KadabraPicBack)
