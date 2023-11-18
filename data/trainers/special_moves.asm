; Yellow entry format:
;	db trainerclass, trainerid
;	repeat { db partymon location, partymon move, move id }
;	db 0

SpecialTrainerMoves:
	db BUG_CATCHER, 15
	db 2, 2, TACKLE
	db 2, 3, STRING_SHOT
	db 0

	db YOUNGSTER, 14
	db 1, 4, FISSURE
	db 0
	
	db LASS, 18
	db 1, 4, LEECH_LIFE
	db 0
	
	db COOLTRAINER_F, 1
	db 2, 2, TWINEEDLE
	db 3, 1, TACKLE
	db 0

	db BROCK, 1
	db 2, 2, POWDER_SNOW
	db 0

	db MISTY, 1
	db 1, 1, TACKLE
	db 2, 1, TACKLE
	db 2, 2, BITE
	db 2, 3, BUBBLEBEAM
	db 0

	db LT_SURGE, 1
	db 1, 1, TACKLE
	db 2, 1, TAIL_WHIP
	db 3, 1, THUNDER_WAVE
	db 3, 2, DOUBLE_TEAM
	db 3, 3, SLAM
	db 3, 4, THUNDERBOLT
	db 0

	db RIVAL2, 4
	db 1, 3, GROWL
	db 4, 1, TACKLE
	db 5, 2, TACKLE
	db 0

	db RIVAL2, 5
	db 1, 3, GROWL
	db 4, 1, TACKLE
	db 5, 1, TACKLE
	db 0

	db RIVAL2, 6
	db 1, 3, GROWL
	db 4, 1, TACKLE
	db 5, 4, SCRATCH
	db 0
	
	db RIVAL2, 7
	db 1, 2, CONFUSION
	db 5, 1, TAIL_WHIP
	db 0
	
	db RIVAL2, 8
	db 1, 2, CONFUSION
	db 5, 4, LEECH_SEED
	db 0
	
	db RIVAL2, 9
	db 1, 2, CONFUSION
	db 2, 2, RAZOR_LEAF
	db 0
	
	db ERIKA, 1
	db 1, 1, DISABLE
	db 3, 4, PIN_MISSILE
	db 0

	db KOGA, 1
	db 1, 4, EMBER
	db 3, 4, POWDER_SNOW
	db 4, 1, BONE_CLUB
	db 4, 4, SHADOW_BALL
	db 0

	db BLAINE, 1
	db 1, 1, FLAMETHROWER
	db 1, 4, CONFUSE_RAY
	db 3, 1, FLAMETHROWER
	db 3, 2, FIRE_BLAST
	db 3, 3, REFLECT
	db 0

	db SABRINA, 1
	db 1, 1, FLASH
	db 2, 1, KINESIS
	db 2, 4, PSYWAVE
	db 3, 1, PSYWAVE
	db 0

	db GIOVANNI, 1
	db 1, 1, GROWL
	db 0
	
	db GIOVANNI, 2
	db 1, 1, WRAP
	db 0
	
	db GIOVANNI, 3
	db 1, 3, FISSURE
	db 2, 2, DOUBLE_TEAM
	db 3, 1, EARTHQUAKE
	db 3, 3, THUNDER
	db 4, 1, EARTHQUAKE
	db 4, 2, LEER
	db 4, 3, THUNDER
	db 5, 1, ROCK_SLIDE
	db 5, 4, EARTHQUAKE
	db 0

	db LORELEI, 1
	db 1, 1, BUBBLEBEAM
	db 2, 3, ICE_BEAM
	db 3, 1, PSYCHIC_M
	db 3, 2, SURF
	db 4, 3, POWDER_SNOW
	db 5, 3, BLIZZARD
	db 0

	db BRUNO, 1
	db 1, 1, ROCK_SLIDE
	db 1, 2, SCREECH
	db 1, 4, DIG
	db 2, 3, FIRE_PUNCH
	db 2, 4, DOUBLE_TEAM
	db 3, 1, DOUBLE_KICK
	db 3, 2, MEGA_KICK
	db 3, 4, DOUBLE_TEAM
	db 4, 1, ROCK_SLIDE
	db 4, 2, SCREECH
	db 4, 4, EARTHQUAKE
	db 5, 2, KARATE_CHOP
	db 5, 3, STRENGTH
	db 0

	db AGATHA, 1
	db 1, 2, SUBSTITUTE
	db 1, 3, LICK
	db 1, 4, MEGA_DRAIN
	db 2, 2, TOXIC
	db 2, 4, LEECH_LIFE
	db 3, 2, LICK
	db 4, 1, WRAP
	db 5, 2, PSYCHIC_M
	db 0

	db LANCE, 1
	db 1, 1, DRAGON_RAGE
	db 2, 1, THUNDER_WAVE
	db 2, 3, THUNDERBOLT
	db 3, 1, BUBBLEBEAM
	db 3, 2, WRAP
	db 3, 3, ICE_BEAM
	db 4, 1, WING_ATTACK
	db 4, 2, SWIFT
	db 4, 3, FLY
	db 5, 1, BLIZZARD
	db 5, 2, FIRE_BLAST
	db 5, 3, THUNDER
	db 0

	db RIVAL3, 1
	db 1, 3, EARTHQUAKE
	db 2, 4, KINESIS
	db 3, 4, LEECH_SEED
	db 4, 1, ICE_BEAM
	db 5, 1, CONFUSE_RAY
	db 5, 4, FIRE_SPIN
	db 6, 3, QUICK_ATTACK
	db 0

	db RIVAL3, 2
	db 1, 3, EARTHQUAKE
	db 2, 4, KINESIS
	db 3, 4, LEECH_SEED
	db 4, 1, THUNDERBOLT
	db 5, 1, ICE_BEAM
	db 6, 2, REFLECT
	db 6, 3, QUICK_ATTACK
	db 0

	db RIVAL3, 3
	db 1, 3, EARTHQUAKE
	db 2, 4, KINESIS
	db 3, 4, LEECH_SEED
	db 4, 1, CONFUSE_RAY
	db 4, 4, FIRE_SPIN
	db 5, 1, THUNDERBOLT
	db 6, 1, AURORA_BEAM
	db 6, 3, QUICK_ATTACK
	db 0

	db -1 ; end
