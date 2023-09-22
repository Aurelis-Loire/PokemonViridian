	db DEX_CROAGUNK ; pokedex id

	db  48,  61,  40,  50,  61
	;   hp  atk  def  spd  spc

	db POISON, FIGHTING ; type
	db 140 ; catch rate
	db 83 ; base exp

	INCBIN "gfx/pokemon/front/croagunk.pic", 0, 1 ; sprite dimensions
	dw CroagunkPicFront, CroagunkPicBack

	db ASTONISH, DIG, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        TAKE_DOWN,    COUNTER,      \
	     EARTHQUAKE,   DIG,          DOUBLE_TEAM,  REST,         ROCK_SLIDE,   \
	     SUBSTITUTE,   STRENGTH
	; end

	db 0 ; padding
