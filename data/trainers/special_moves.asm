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
	
	db COOLTRAINER_F, 2
	db 1, 4, WATER_GUN
	db 2, 1, EMBER
	db 3, 3, PECK
	db 0
	
	db COOLTRAINER_F, 3
	db 1, 4, WATER_GUN
	db 2, 2, EARTHQUAKE
	db 3, 1, POISON_STING
	db 0
	
	db COOLTRAINER_F, 5
	db 1, 4, THUNDER_WAVE
	db 2, 1, SLEEP_POWDER
	db 2, 4, SUPERSONIC
	db 0
	
	db COOLTRAINER_M, 1 ;Viridian Gym - Gabite/Dragonair
	db 1, 2, DRAGONBREATH
	db 2, 4, WRAP
	db 0
	
	db COOLTRAINER_M, 2
	db 1, 1, GROWL
	db 2, 2, HYPNOSIS
	db 2, 3, LEECH_SEED
	db 2, 4, PSYCHIC_M
	db 3, 1, LEECH_LIFE
	db 0
	
	db COOLTRAINER_M, 3
	db 3, 4, BITE
	db 0
	
	db COOLTRAINER_M, 5
	db 1, 2, HYPNOSIS
	db 1, 3, LEECH_SEED
	db 2, 3, SCREECH
	db 3, 3, WATER_GUN
	db 4, 2, BONE_CLUB
	db 0
	
	db COOLTRAINER_M, 9
	db 1, 1, TACKLE
	db 2, 3, SCRATCH
	db 0
	
	db COOLTRAINER_M, 10 ;Viridian Gym - Gyarados
	db 1, 2, BITE
	db 1, 3, THRASH
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
	db 2, 1, BUBBLEBEAM
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
	db 2, 2, BITE
	db 4, 1, TACKLE
	db 0
	
	db RIVAL2, 8
	db 1, 2, CONFUSION
	db 3, 2, BITE
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
	db 3, 1, EMBER
	db 3, 4, BITE
	db 4, 1, RAZOR_LEAF
	db 5, 1, DRAGONBREATH
	db 5, 2, DRAGON_RAGE
	db 6, 1, WITHDRAW
	db 6, 4, WATER_GUN
	db 0
	
	db RIVAL2, 11
	db 1, 1, DOUBLE_TEAM
	db 3, 1, WRAP
	db 4, 1, EMBER
	db 4, 4, BITE
	db 5, 1, DRAGONBREATH
	db 5, 2, DRAGON_RAGE
	db 6, 2, LEECH_SEED
	db 6, 4, SLEEP_POWDER
	db 0
	
	db RIVAL2, 12
	db 1, 1, DOUBLE_TEAM
	db 3, 2, RAZOR_LEAF
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
	db 4, 2, OUTRAGE
	db 4, 3, HYPER_BEAM
	db 4, 4, THUNDER
	db 5, 1, OUTRAGE
	db 5, 2, HYPER_BEAM
	db 5, 3, EARTHQUAKE
	db 5, 4, SWORDS_DANCE
	db 0

	db LORELEI, 1
	db 1, 1, FIRE_BLAST
	db 1, 2, SUBSTITUTE
	db 1, 3, DIG
	db 1, 4, SWIFT
	db 2, 1, FLAMETHROWER
	db 2, 2, BONEMERANG
	db 2, 3, SHADOW_BALL
	db 2, 4, TOXIC
	db 3, 1, FLAMETHROWER
	db 3, 2, TOXIC
	db 3, 3, DOUBLE_TEAM
	db 3, 4, SLUDGE_BOMB
	db 4, 1, FIRE_SPIN
	db 4, 2, DOUBLE_TEAM
	db 4, 3, TOXIC
	db 4, 4, REFLECT
	db 5, 1, FIRE_BLAST
	db 5, 2, SEISMIC_TOSS
	db 5, 3, TOXIC
	db 5, 4, EARTHQUAKE
	db 0

	db BRUNO, 1
	db 1, 3, LEER
	db 2, 4, SCARY_FACE
	db 3, 1, LEER
	db 3, 3, BITE
	db 4, 1, BLIZZARD
	db 4, 2, BODY_SLAM
	db 4, 3, THUNDERBOLT
	db 4, 4, ICE_BEAM
	db 5, 1, REFLECT
	db 5, 2, SKY_ATTACK
	db 5, 3, HYPER_BEAM
	db 5, 4, DOUBLE_EDGE
	db 0

	db AGATHA, 1
	db 1, 2, TAKE_DOWN
	db 1, 4, POWDER_SNOW
	db 2, 3, ASTONISH
	db 3, 2, DOUBLE_KICK
	db 3, 3, HORN_ATTACK
	db 4, 1, SUBSTITUTE
	db 4, 2, EARTHQUAKE
	db 5, 1, ROCK_SLIDE
	db 5, 2, SUBSTITUTE
	db 5, 4, DOUBLE_EDGE
	db 0

	db LANCE, 1
	db 1, 1, RAZOR_LEAF
	db 1, 2, SYNTHESIS
	db 2, 1, SLEEP_POWDER
	db 2, 4, SUPERSONIC
	db 3, 1, REFLECT
	db 3, 2, LEECH_SEED
	db 3, 3, STOMP
	db 4, 1, RAZOR_LEAF
	db 5, 2, SLEEP_POWDER
	db 5, 3, HYPER_BEAM
	db 5, 4, SWORDS_DANCE
	db 0

	db RIVAL3, 1
	db 1, 4, DOUBLE_TEAM
	db 2, 3, GROWL
	db 3, 1, SWORDS_DANCE
	db 3, 4, DRAGON_RAGE
	db 4, 2, BITE
	db 5, 1, RAZOR_LEAF
	db 6, 1, WATER_GUN
	db 6, 3, SURF
	db 0

	db RIVAL3, 2
	db 1, 4, DOUBLE_TEAM
	db 2, 3, GROWL
	db 3, 1, SWORDS_DANCE
	db 3, 4, DRAGON_RAGE
	db 4, 1, WRAP
	db 5, 2, BITE
	db 6, 1, FLAMETHROWER
	db 6, 4, SWORDS_DANCE
	db 0

	db RIVAL3, 3
	db 1, 4, DOUBLE_TEAM
	db 2, 3, GROWL
	db 3, 1, SWORDS_DANCE
	db 3, 4, DRAGON_RAGE
	db 4, 1, RAZOR_LEAF
	db 5, 1, WRAP
	db 6, 1, SLEEP_POWDER
	db 6, 2, RAZOR_LEAF
	db 6, 4, HYPER_BEAM
	db 0

	db -1 ; end
