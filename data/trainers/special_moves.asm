; Yellow entry format:
;	db trainerclass, trainerid
;	repeat { db partymon location, partymon move, move id }
;	db 0

SpecialTrainerMoves:
	db LASS, 18
	db 1, 4, LEECH_LIFE
	db 0

	db COOLTRAINER_F, 1
	db 2, 2, TWINEEDLE
	db 3, 1, TACKLE
	db 0
	
	db COOLTRAINER_M, 1
	db 1, 2, DRAGONBREATH
	db 2, 4, THUNDER_WAVE
	db 0
	
	db COOLTRAINER_M, 9
	db 1, 1, TACKLE
	db 2, 3, SCRATCH
	db 0
	
	db COOLTRAINER_M, 10
	db 1, 3, TACKLE
	db 0
	
	db RIVAL1, 7
	db 4, 1, TACKLE
	db 0
	
	db RIVAL1, 8
	db 4, 3, TACKLE
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
	db 2, 1, TAIL_WHIP
	db 3, 1, THUNDER_WAVE
	db 3, 2, DOUBLE_TEAM
	db 3, 3, SLAM
	db 3, 4, THUNDERBOLT
	db 0

	db RIVAL2, 1
	db 4, 2, TACKLE
	db 0
	
	db RIVAL2, 2
	db 4, 3, TACKLE
	db 0
	
	db RIVAL2, 3
	db 4, 1, SCRATCH
	db 0
	
	db RIVAL2, 4
	db 1, 3, GROWL
	db 4, 1, TACKLE
	db 5, 1, TACKLE
	db 0

	db RIVAL2, 5
	db 1, 3, GROWL
	db 4, 1, TACKLE
	db 5, 2, LEECH_SEED
	db 0

	db RIVAL2, 6
	db 1, 3, GROWL
	db 4, 1, TACKLE
	db 5, 1, SCRATCH
	db 0
	
	db RIVAL2, 7
	db 1, 2, CONFUSION
	db 4, 1, TACKLE
	db 0
	
	db RIVAL2, 8
	db 1, 2, CONFUSION
	db 4, 1, TACKLE
	db 5, 1, LEECH_SEED
	db 5, 4, VINE_WHIP
	db 0
	
	db RIVAL2, 9
	db 1, 2, CONFUSION
	db 2, 2, RAZOR_LEAF
	db 4, 1, TACKLE
	db 5, 1, SCRATCH
	db 5, 2, SMOKESCREEN
	db 0
	
	db RIVAL2, 10
	db 1, 1, DOUBLE_TEAM
	db 3, 4, BITE
	db 4, 1, RAZOR_LEAF
	db 4, 4, SWEET_SCENT
	db 5, 1, DRAGONBREATH
	db 5, 2, DRAGON_RAGE
	db 6, 1, WITHDRAW
	db 6, 4, WATER_GUN
	db 0
	
	db RIVAL2, 11
	db 1, 1, DOUBLE_TEAM
	db 3, 1, WRAP
	db 4, 4, BITE
	db 5, 1, DRAGONBREATH
	db 5, 2, DRAGON_RAGE
	db 6, 2, LEECH_SEED
	db 6, 4, SLEEP_POWDER
	db 0
	
	db RIVAL2, 12
	db 1, 1, DOUBLE_TEAM
	db 3, 2, RAZOR_LEAF
	db 3, 4, SWEET_SCENT
	db 4, 1, WRAP
	db 5, 1, DRAGONBREATH
	db 5, 2, DRAGON_RAGE
	db 6, 3, SMOKESCREEN
	db 0
	
	db ERIKA, 1
	db 1, 1, DISABLE
	db 3, 1, PIN_MISSILE
	db 0

	db KOGA, 1
	db 1, 4, EMBER
	db 3, 4, POWDER_SNOW
	db 4, 1, BONE_CLUB
	db 4, 4, SHADOW_BALL
	db 0

	db BLAINE, 1
	db 1, 2, PSYCHIC_M
	db 1, 3, BLIZZARD
	db 1, 4, THUNDER_WAVE
	db 2, 3, PSYCHIC_M
	db 2, 4, THUNDERBOLT
	db 3, 1, FIRE_PUNCH
	db 3, 4, BODY_SLAM
	db 4, 1, PSYCHIC_M
	db 4, 2, THUNDER_WAVE
	db 4, 3, BLIZZARD
	db 0

	db SABRINA, 1
	db 1, 2, EARTHQUAKE
	db 1, 3, SHADOW_BALL
	db 1, 4, THUNDERBOLT
	db 2, 1, SHADOW_BALL
	db 2, 4, FIRE_BLAST
	db 3, 1, FIRE_BLAST
	db 3, 2, SLUDGE_BOMB
	db 3, 3, THUNDER_WAVE
	db 4, 1, DOUBLE_TEAM
	db 4, 2, ROCK_SLIDE
	db 4, 4, SLUDGE_BOMB
	db 0

	db GIOVANNI, 1
	db 1, 1, GROWL
	db 3, 3, TACKLE
	db 0
	
	db GIOVANNI, 2
	db 2, 3, SCRATCH
	db 3, 2, DRAGONBREATH
	db 0
	
	db GIOVANNI, 3
	db 1, 1, REST
	db 1, 3, BLIZZARD
	db 1, 4, HYPER_BEAM
	db 2, 2, HYDRO_PUMP
	db 2, 3, BLIZZARD
	db 3, 1, EARTHQUAKE
	db 3, 2, FIRE_BLAST
	db 3, 3, FLY
	db 3, 4, SWORDS_DANCE
	db 4, 1, BLIZZARD
	db 4, 2, DRAGONBREATH
	db 4, 3, HYPER_BEAM
	db 4, 4, THUNDER
	db 5, 1, DRAGONBREATH
	db 5, 2, HYPER_BEAM
	db 5, 3, EARTHQUAKE
	db 5, 4, SWORDS_DANCE
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
