	db DEX_LUCARIO ; pokedex id

	db  70, 110,  70,  90, 115
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 204 ; base exp

	INCBIN "gfx/pokemon/front/lucario.pic", 0, 1 ; sprite dimensions
	dw LucarioPicFront, LucarioPicBack

	db QUICK_ATTACK, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, SHADOW_BALL,  MEGA_KICK,    TOXIC,        \
	     TAKE_DOWN,    HYPER_BEAM,   ICE_PUNCH,    COUNTER,      EARTHQUAKE,   \
	     DIG,          PSYCHIC_M,    DOUBLE_TEAM,  THUNDERPUNCH, SWIFT,        \
	     HEADBUTT,     MUD_SLAP,     REST,         ROCK_SLIDE,   SUBSTITUTE,   \
		 STRENGTH
	; end

	db BANK(LucarioPicFront)
	assert BANK(LucarioPicFront) == BANK(LucarioPicBack)
