; Yellow entry format:
;	db trainerclass, trainerid
;	repeat { db partymon location, partymon move, move id }
;	db 0

SpecialTrainerMoves:
	db LASS, 18 ;Celadon Gym - Salandit
	db 1, 4, LEECH_LIFE
	db 0

	db COOLTRAINER_F, 1 ;Celadon Gym - Scyther/Shellder/Venonat
	db 1, 4, QUICK_ATTACK
	db 2, 2, TWINEEDLE
	db 3, 1, TACKLE
	db 0
	
	db COOLTRAINER_F, 2 ;Victory Road - Starmie/Rapidash/Seaking
	db 1, 4, WATER_GUN
	db 2, 1, EMBER
	db 3, 3, PECK
	db 0
	
	db COOLTRAINER_F, 3 ;Victory Road - Quagsire/Marowak/Toxicroak
	db 1, 3, SLAM
	db 1, 4, WATER_GUN
	db 2, 1, HEADBUTT
	db 2, 2, EARTHQUAKE
	db 3, 1, POISON_STING
	db 0
	
	db COOLTRAINER_F, 5 ;Victory Road - Dragonair/Butterfree
	db 1, 4, THUNDER_WAVE
	db 2, 1, SLEEP_POWDER
	db 2, 4, SUPERSONIC
	db 0
	
	db COOLTRAINER_M, 1 ;Viridian Gym - Gabite/Dragonair
	db 1, 2, DRAGONBREATH
	db 2, 4, WRAP
	db 0
	
	db COOLTRAINER_M, 2 ;Victory Road - Miltank/Exeggutor/Galvantula
	db 1, 1, GROWL
	db 2, 1, LEECH_SEED
	db 2, 2, PSYCHIC_M
	db 3, 1, LEECH_LIFE
	db 0
	
	db COOLTRAINER_M, 3 ;Victory Road - Dragonair/Swanna/Arcanine
	db 1, 1, WRAP
	db 1, 2, TWISTER
	db 3, 1, EMBER
	db 3, 4, BITE
	db 0
	
	db COOLTRAINER_M, 5 ;Victory Road - Exeggutor/Onix/Blastoise/Marowak
	db 1, 1, LEECH_SEED
	db 1, 2, CONFUSION
	db 2, 3, SCREECH
	db 3, 3, WATER_GUN
	db 4, 1, HEADBUTT
	db 0
	
	db COOLTRAINER_M, 9 ;Viridian Gym - Arctibax/Salazzle
	db 1, 1, TACKLE
	db 2, 3, SCRATCH
	db 0
	
	db COOLTRAINER_M, 10 ;Viridian Gym - Gyarados
	db 1, 2, THRASH
	db 0
	
	db RIVAL1, 7 ;Cerulean Rival - Nidorino/Ralts/Flaaffy/Wartortle
	db 4, 1, TACKLE
	db 0
	
	db RIVAL1, 8 ;Cerulean Rival - Nidorino/Ralts/Flaaffy/Ivysaur
	db 4, 3, TACKLE
	db 0
	
	db BROCK, 1 ;Diana - Vulpix/Frigibax
	db 2, 4, POWDER_SNOW
	db 0

	db MISTY, 1 ;Matt - Wailmer/Gyarados
	db 1, 1, TACKLE
	db 2, 1, BUBBLEBEAM
	db 0

	db LT_SURGE, 1 ;Alex - Flaaffy/Jolteon/Raichu
	db 2, 1, TAIL_WHIP
	db 3, 1, THUNDER_WAVE
	db 3, 2, DOUBLE_TEAM
	db 3, 3, SLAM
	db 3, 4, THUNDERBOLT
	db 0

	db RIVAL2, 1 ;SS Anne Rival - Ralts/Flaaffy/Nidorino/Wartortle
	db 1, 3, GROWL
	db 4, 2, TACKLE
	db 0
	
	db RIVAL2, 2 ;SS Anne Rival - Ralts/Flaaffy/Nidorino/Ivysaur
	db 1, 3, GROWL
	db 4, 3, TACKLE
	db 0
	
	db RIVAL2, 3 ;SS Anne Rival - Ralts/Flaaffy/Nidorino/Charmeleon
	db 1, 3, GROWL
	db 4, 4, SCRATCH
	db 0
	
	db RIVAL2, 4 ;Tower Rival - Kirlia/Growlithe/Steenee/Flaaffy/Wartortle
	db 1, 3, GROWL
	db 0

	db RIVAL2, 5 ;Tower Rival - Kirlia/Milotic/Growlithe/Flaaffy/Ivysaur
	db 1, 3, GROWL
	db 5, 2, LEECH_SEED
	db 0

	db RIVAL2, 6 ;Tower Rival - Kirlia/Steenee/Milotic/Flaaffy/Charmeleon
	db 1, 3, GROWL
	db 5, 4, SCRATCH
	db 0
	
	db RIVAL2, 7 ;Silph Rival - Gardevoir/Growlithe/Tsareena/Ampharos/Blastoise
	db 1, 2, CONFUSION
	db 2, 2, BITE
	db 3, 1, RAZOR_LEAF
	db 4, 1, TACKLE
	db 5, 4, WITHDRAW
	db 0
	
	db RIVAL2, 8 ;Silph Rival - Gardevoir/Milotic/Growlithe/Ampharos/Venusaur
	db 1, 2, CONFUSION
	db 3, 2, BITE
	db 4, 1, TACKLE
	db 5, 1, LEECH_SEED
	db 5, 4, VINE_WHIP
	db 0
	
	db RIVAL2, 9 ;Silph Rival - Gardevoir/Tsareena/Milotic/Ampharos/Charizard
	db 1, 2, CONFUSION
	db 2, 1, RAZOR_LEAF
	db 4, 1, TACKLE
	db 5, 1, SCRATCH
	db 5, 2, SMOKESCREEN
	db 0
	
	db RIVAL2, 10 ;Rt. 22 Rival - Gardevoir/Ampharos/Growlithe/Tsareena/Garchomp/Blastoise
	db 1, 1, DOUBLE_TEAM
	db 3, 1, EMBER
	db 3, 4, BITE
	db 4, 1, RAZOR_LEAF
	db 5, 1, DRAGONBREATH
	db 5, 2, DRAGON_RAGE
	db 6, 1, WITHDRAW
	db 6, 4, WATER_GUN
	db 0
	
	db RIVAL2, 11 ;Rt. 22 Rival - Gardevoir/Ampharos/Milotic/Growlithe/Garchomp/Venusaur
	db 1, 1, DOUBLE_TEAM
	db 3, 1, WRAP
	db 4, 1, EMBER
	db 4, 4, BITE
	db 5, 1, DRAGONBREATH
	db 5, 2, DRAGON_RAGE
	db 6, 2, LEECH_SEED
	db 6, 4, SLEEP_POWDER
	db 0
	
	db RIVAL2, 12 ;Rt. 22 Rival - Gardevoir/Ampharos/Tsareena/Milotic/Garchomp/Charizard
	db 1, 1, DOUBLE_TEAM
	db 3, 1, RAZOR_LEAF
	db 4, 1, WRAP
	db 5, 1, DRAGONBREATH
	db 5, 2, DRAGON_RAGE
	db 6, 1, SMOKESCREEN
	db 0
	
	db ERIKA, 1 ;Spectre - Venonat/Scyther/Galvantula
	db 1, 2, SUPERSONIC
	db 2, 4, QUICK_ATTACK
	db 3, 1, PIN_MISSILE
	db 0

	db KOGA, 1 ;Alyssa - Chandelure/Gengar/Froslass/Marowak
	db 1, 4, EMBER
	db 3, 4, POWDER_SNOW
	db 4, 4, SHADOW_BALL
	db 0

	db BLAINE, 1 ;Mike - Starmie/Gengar/Alakazam/Slowbro
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

	db SABRINA, 1 ;Andrew - Nidoking/Chandelure/Salazzle/Toxicroak
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

	db GIOVANNI, 1 ;Celadon Johanna - Gyarados/Salandit/Gabite
	db 3, 3, SAND_ATTACK
	db 0
	
	db GIOVANNI, 2 ;Silph Co Johanna - Dragonair/Salazzle/Gabite/Arctibax
	db 2, 3, SCRATCH
	db 3, 2, DRAGONBREATH
	db 0
	
	db GIOVANNI, 3 ;Johanna - Baxcalibur/Milotic/Charizard/Dragonite/Garchomp
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

	db LORELEI, 1 ;Kevin - Arcanine/Marowak/Salazzle/Flareon/Charizard
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

	db BRUNO, 1 ;Grant - Scyther/Charizard/Gyarados/Dragonite/Pidgeot
	db 1, 1, TOXIC
	db 1, 2, SKULL_BASH
	db 1, 3, DOUBLE_EDGE
	db 1, 4, HYPER_BEAM
	db 2, 2, EARTHQUAKE
	db 2, 3, FIRE_BLAST
	db 2, 4, BODY_SLAM
	db 3, 1, BLIZZARD
	db 3, 2, ICE_BEAM
	db 3, 3, BODY_SLAM
	db 3, 4, THUNDERBOLT
	db 4, 1, BLIZZARD
	db 4, 2, BODY_SLAM
	db 4, 3, THUNDERBOLT
	db 4, 4, ICE_BEAM
	db 5, 1, REFLECT
	db 5, 2, SKY_ATTACK
	db 5, 3, HYPER_BEAM
	db 5, 4, DOUBLE_EDGE
	db 0

	db AGATHA, 1 ;Thom - Mamoswine/Golurk/Nidoking/Garchomp/Tyranitar
	db 1, 1, BLIZZARD
	db 1, 2, HYPER_BEAM
	db 1, 3, SUBSTITUTE
	db 1, 4, EARTHQUAKE
	db 2, 1, SELFDESTRUCT
	db 2, 2, SUBSTITUTE
	db 2, 3, ICE_BEAM
	db 2, 4, EARTHQUAKE
	db 3, 1, ROCK_SLIDE
	db 3, 2, BLIZZARD
	db 3, 3, THUNDER
	db 3, 4, EARTHQUAKE
	db 4, 1, HYPER_BEAM
	db 4, 2, EARTHQUAKE
	db 4, 3, SUBSTITUTE
	db 4, 4, SWORDS_DANCE
	db 5, 1, ROCK_SLIDE
	db 5, 2, SUBSTITUTE
	db 5, 4, DOUBLE_EDGE
	db 0

	db LANCE, 1 ;John - Leafeon/Butterfree/Exeggutor/Tsareena/Venusaur
	db 1, 1, RAZOR_LEAF
	db 1, 2, SYNTHESIS
	db 1, 3, DOUBLE_EDGE
	db 2, 1, SLEEP_POWDER
	db 2, 2, MEGA_DRAIN
	db 2, 3, PSYWAVE
	db 2, 4, PSYCHIC_M
	db 3, 1, PSYCHIC_M
	db 3, 2, MEGA_DRAIN
	db 3, 4, DOUBLE_EDGE
	db 4, 1, RAZOR_LEAF
	db 4, 2, DOUBLE_TEAM
	db 4, 3, MEGA_KICK
	db 5, 2, SLEEP_POWDER
	db 5, 3, HYPER_BEAM
	db 5, 4, SWORDS_DANCE
	db 0

	db RIVAL3, 1 ;Champion Iscaria - Gardevoir/Ampharos/Garchomp/Arcanine/Tsareena/Blastoise
	db 1, 2, REST
	db 1, 4, DOUBLE_TEAM
	db 2, 1, BODY_SLAM
	db 2, 2, SUBSTITUTE
	db 2, 3, DOUBLE_TEAM
	db 2, 4, TOXIC
	db 3, 1, SWORDS_DANCE
	db 3, 2, HYPER_BEAM
	db 3, 3, EARTHQUAKE
	db 3, 4, DOUBLE_TEAM
	db 4, 1, REST
	db 4, 2, BODY_SLAM
	db 4, 3, FIRE_BLAST
	db 4, 4, HYPER_BEAM
	db 5, 1, RAZOR_LEAF
	db 5, 2, DOUBLE_TEAM
	db 5, 3, REST
	db 5, 4, TOXIC
	db 6, 1, EARTHQUAKE
	db 6, 2, BLIZZARD
	db 6, 3, SURF
	db 6, 4, REST
	db 0

	db RIVAL3, 2 ;Champion Iscaria - Gardevoir/Ampharos/Garchomp/Milotic/Arcanine/Venusaur
	db 1, 2, REST
	db 1, 4, DOUBLE_TEAM
	db 2, 1, BODY_SLAM
	db 2, 2, SUBSTITUTE
	db 2, 3, DOUBLE_TEAM
	db 2, 4, TOXIC
	db 3, 1, SWORDS_DANCE
	db 3, 2, HYPER_BEAM
	db 3, 3, EARTHQUAKE
	db 3, 4, DOUBLE_TEAM
	db 4, 2, TOXIC
	db 4, 3, SURF
	db 4, 4, WRAP
	db 5, 1, REST
	db 5, 2, BODY_SLAM
	db 5, 3, FIRE_BLAST
	db 5, 4, HYPER_BEAM
	db 6, 1, SLEEP_POWDER
	db 6, 2, RAZOR_LEAF
	db 6, 3, SWORDS_DANCE
	db 6, 4, HYPER_BEAM
	db 0

	db RIVAL3, 3 ;Champion Iscaria - Gardevoir/Ampharos/Garchomp/Tsareena/Milotic/Charizard
	db 1, 2, REST
	db 1, 4, DOUBLE_TEAM
	db 2, 1, BODY_SLAM
	db 2, 2, SUBSTITUTE
	db 2, 3, DOUBLE_TEAM
	db 2, 4, TOXIC
	db 3, 1, SWORDS_DANCE
	db 3, 2, HYPER_BEAM
	db 3, 3, EARTHQUAKE
	db 3, 4, DOUBLE_TEAM
	db 4, 1, RAZOR_LEAF
	db 4, 2, DOUBLE_TEAM
	db 4, 3, REST
	db 4, 4, TOXIC
	db 5, 2, TOXIC
	db 5, 3, SURF
	db 5, 4, WRAP
	db 6, 1, FIRE_BLAST
	db 6, 2, HYPER_BEAM
	db 6, 3, EARTHQUAKE
	db 6, 4, SWORDS_DANCE
	db 0

	db -1 ; end
