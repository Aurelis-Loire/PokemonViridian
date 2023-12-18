TrainerDataPointers:
	table_width 2, TrainerDataPointers
	dw YoungsterData
	dw BugCatcherData
	dw LassData
	dw SailorData
	dw JrTrainerMData
	dw JrTrainerFData
	dw PokemaniacData
	dw SuperNerdData
	dw HikerData
	dw BikerData
	dw BurglarData
	dw EngineerData
	dw UnusedJugglerData
	dw FisherData
	dw SwimmerData
	dw CueBallData
	dw GamblerData
	dw BeautyData
	dw PsychicData
	dw RockerData
	dw JugglerData
	dw TamerData
	dw BirdKeeperData
	dw BlackbeltData
	dw Green1Data
	dw ProfOakData
	dw ChiefData
	dw ScientistData
	dw GiovanniData
	dw RocketData
	dw CooltrainerMData
	dw CooltrainerFData
	dw BrunoData
	dw BrockData
	dw MistyData
	dw LtSurgeData
	dw ErikaData
	dw KogaData
	dw BlaineData
	dw SabrinaData
	dw GentlemanData
	dw Green2Data
	dw Green3Data
	dw LoreleiData
	dw ChannelerData
	dw AgathaData
	dw LanceData
	assert_table_length NUM_TRAINERS

; if first byte != $FF, then
	; first byte is level (of all pokemon on this team)
	; all the next bytes are pokemon species
	; null-terminated
; if first byte == $FF, then
	; first byte is $FF (obviously)
	; every next two bytes are a level and species
	; null-terminated

YoungsterData:
; Route 3
	db 11, SKWOVET, EKANS, 0
	db 14, BEEDRILL, 0
; Mt. Moon 1F
	db 10, SKWOVET, SKWOVET, ZUBAT, 0
; Route 24
	db 14, SKWOVET, EKANS, ZUBAT, 0
; Route 25
	db 15, SKWOVET, ZUBAT, 0
	db 17, SLOWPOKE, 0
	db 14, EKANS, BEEDRILL, 0
; SS Anne 1F Rooms
	db 21, NIDORINO, 0
; Route 11
	db 21, EKANS, 0
	db 19, PIDGEOTTO, ZUBAT, 0
	db 17, SKWOVET, SKWOVET, EKANS, 0
	db 18, NIDORINO, NIDORINO, 0
; Unused
	db 17, NIDORAN, BOUNSWEET, BOUNSWEET, NIDORAN, 0

BugCatcherData:
; Viridian Forest
	db 6, WEEDLE, CATERPIE, 0
	db 7, KAKUNA, METAPOD, KAKUNA, 0
	db 9, KAKUNA, 0
; Route 3
	db 10, BUTTERFREE, BEEDRILL, BEEDRILL, 0
	db 9, METAPOD, KAKUNA, KAKUNA, KAKUNA, 0
	db 11, BEEDRILL, BUTTERFREE, 0
; Mt. Moon 1F
	db 11, VENONAT, VENONAT, 0
	db 10, BUTTERFREE, BEEDRILL, BEEDRILL, 0
; Route 24
	db 14, JOLTIK, BUTTERFREE, 0
; Route 6
	db 16, BUTTERFREE, BEEDRILL, BEEDRILL, 0
	db 20, BUTTERFREE, 0
; Unused
	db 18, METAPOD, CATERPIE, VENONAT, 0
; Route 9
	db 19, VENONAT, BUTTERFREE, 0
	db 20, BUTTERFREE, BUTTERFREE, BUTTERFREE, 0

LassData:
; Route 3
	db 9, PIDGEY, PIDGEY, 0
	db 10, SKWOVET, NIDORAN, 0
	db 14, PIKACHU, 0
; Route 4
	db 31, TOXICROAK, TOXICROAK, MILTANK, 0
; Mt. Moon 1F
	db 11, BOUNSWEET, DUCKLETT, 0
	db 14, CLEFAIRY, 0
; Route 24
	db 16, PIDGEY, BUTTERFREE, 0
	db 14, PIDGEY, BEEDRILL, 0
; Route 25
	db 15, NIDORAN, ABRA, 0
	db 13, BOUNSWEET, PIDGEY, BUTTERFREE, 0
; SS Anne 1F Rooms
	db 18, PIDGEOTTO, EEVEE, 0
; SS Anne 2F Rooms
	db 18, SKWOVET, PIKACHU, 0
; Route 8
	db 23, VULPIX, HORSEA, 0
	db 24, MEOWTH, MEOWTH, MEOWTH, 0
	db 19, PIDGEOTTO, SKWOVET, NIDORINO, MEOWTH, PIKACHU, 0
	db 22, CLEFAIRY, CLEFAIRY, 0
; Celadon Gym
	db 23, VENONAT, JOLTIK, 0
	db 23, SALANDIT, VENONAT, 0

SailorData:
; SS Anne Stern
	db 18, SHELLDER, SHELLDER, 0
	db 17, MAGIKARP, WOOPER, 0
; SS Anne B1F Rooms
	db 21, SHELLDER, 0
	db 17, HORSEA, SHELLDER, PSYDUCK, 0
	db 18, STARYU, STARYU, 0
	db 17, HORSEA, HORSEA, HORSEA, 0
	db 20, WOOPER, 0
; Vermilion Gym
	db 21, MAREEP, JOLTIK, 0

JrTrainerMData:
; Pewter Gym
	db 11, VULPIX, SHELLDER, 0
; Route 24/Route 25
	db 14, SKWOVET, EKANS, 0
; Route 24
	db 18, MANKEY, 0
; Route 6
	db 20, SQUIRTLE, 0
	db 16, PIDGEY, MAGIKARP, 0
; Unused
	db 18, DIGLETT, DIGLETT, LEAFEON, 0
; Route 9
	db 21, GROWLITHE, CHARMANDER, 0
	db 19, SKWOVET, DIGLETT, EKANS, GROWLITHE, 0
; Route 12
	db 29, NIDORINO, NIDORINO, 0

JrTrainerFData:
; Cerulean Gym
	db 19, DUCKLETT, 0
; Route 6
	db 16, SKWOVET, PIKACHU, 0
	db 16, PIDGEY, PIDGEY, PIDGEY, 0
; Unused
	db 22, BULBASAUR, 0
; Route 9
	db 18, STEENEE, FLAAFFY, STEENEE, MEOWTH, 0
	db 23, MEOWTH, 0
; Route 10
	db 20, PIKACHU, CLEFAIRY, 0
	db 21, PIDGEOTTO, PIDGEOTTO, 0
; Rock Tunnel B1F
	db 21, MEOWTH, PIDGEOTTO, MEOWTH, 0
	db 22, STEENEE, BULBASAUR, 0
; Celadon Gym
	db 24, BEEDRILL, JOLTIK, 0
; Route 13
	db 24, PIDGEOTTO, MEOWTH, GREEDENT, PIKACHU, MEOWTH, 0
	db 30, PIKACHU, PERSIAN, 0
	db 27, PIDGEOTTO, MEOWTH, PIDGEOTTO, PIDGEOTTO, 0
	db 28, GOLDEEN, PIDGEOTTO, HORSEA, 0
; Route 20
	db 31, GOLDEEN, SEAKING, 0
; Rock Tunnel 1F
	db 22, HORSEA, CLEFAIRY, 0
	db 20, MEOWTH, STEENEE, PIDGEOTTO, 0
	db 19, PIDGEOTTO, SKWOVET, SKWOVET, PONYTA, 0
; Route 15
	db 28, STEENEE, STEENEE, STEENEE, 0
	db 29, PIKACHU, PIKACHU, 0
	db 33, CLEFAIRY, 0
	db 29, HORSEA, STEENEE, PIKACHU, 0
; Route 20
	db 30, QUAGSIRE, HORSEA, CROAGUNK, 0

PokemaniacData:
; Route 10
	db 30, RHYHORN, LICKITUNG, 0
	db 20, CUBONE, SLOWPOKE, 0
; Rock Tunnel B1F
	db 20, SLOWPOKE, SLOWPOKE, SLOWPOKE, 0
	db 22, CHARMELEON, CUBONE, 0
	db 25, SLOWPOKE, 0
; Victory Road 2F
	db 40, CHARMELEON, LAPRAS, LICKITUNG, 0
; Rock Tunnel 1F
	db 23, CUBONE, SLOWPOKE, 0

SuperNerdData:
; Mt. Moon 1F
	db 11, MAGNEMITE, VOLTORB, 0
; Mt. Moon B2F
	db 12, CROAGUNK, VOLTORB, SALANDIT, 0
; Route 8
	db 20, VOLTORB, SALANDIT, VOLTORB, MAGNEMITE, 0
	db 22, CROAGUNK, CROAGUNK, CROAGUNK, 0
	db 26, SALANDIT, 0
; Unused
	db 22, MILOTIC, MAGNEMITE, WEEZING, 0
	db 20, MAGNEMITE, MAGNEMITE, MILOTIC, MAGNEMITE, 0
	db 24, MAGNEMITE, VOLTORB, 0
; Cinnabar Gym
	db 36, VULPIX, VULPIX, NINETALES, 0
	db 34, PONYTA, CHARMANDER, VULPIX, GROWLITHE, 0
	db 41, RAPIDASH, 0
	db 37, GROWLITHE, VULPIX, 0

HikerData:
; Mt. Moon 1F
	db 10, ONIX, ONIX, ONIX, 0
; Route 25
	db 15, RHYHORN, ONIX, 0
	db 13, ONIX, ONIX, CLEFAIRY, RHYHORN, 0
	db 17, ONIX, 0
; Route 9
	db 21, DIGLETT, ONIX, 0
	db 20, RHYHORN, ONIX, MAGNEMITE, 0
; Route 10
	db 21, CLEFAIRY, ONIX, 0
	db 19, ONIX, ONIX, 0
; Rock Tunnel B1F
	db 21, RHYHORN, CLEFAIRY, MAGNEMITE, 0
	db 25, GOLBAT, 0
; Route 9/Rock Tunnel B1F
	db 20, DIGLETT, ONIX, 0
; Rock Tunnel 1F
	db 19, CUBONE, LARVITAR, CLEFAIRY, MAGNEMITE, 0
	db 20, ONIX, ONIX, DIGLETT, 0
	db 21, RHYHORN, RHYHORN, 0

BikerData:
; Route 13
	db 28, SALANDIT, SALANDIT, SALANDIT, 0
; Route 14
	db 29, SALANDIT, CROAGUNK, 0
; Route 15
	db 25, SALANDIT, SALANDIT, SALANDIT, SALANDIT, CROAGUNK, 0
	db 28, SALANDIT, CROAGUNK, SALANDIT, 0
; Route 16
	db 29, CROAGUNK, SALANDIT, 0
	db 33, SALAZZLE, 0
	db 26, CROAGUNK, CROAGUNK, CROAGUNK, CROAGUNK, 0
; Route 17
	; From https://www.smogon.com/smog/issue27/glitch:
	; 0E:5FC2 is offset of the ending 0 for this first Biker on Route 17.
	; BaseStats + (BASE_DATA_SIZE) * (000 - 1) = $5FC2;
	; that's the formula from GetMonHeader for the base stats of mon #000.
	; (BaseStats = $43DE and BANK(BaseStats) = $0E.)
	; Finally, PokedexOrder lists 0 as the dex ID for every MissingNo.
	; The result is that this data gets interpreted as the base stats
	; for MissingNo: 0, 33, MUK, 0, 29, VOLTORB, VOLTORB, 0, ..., 28, GRIMER, GRIMER.
	db 28, SALANDIT, SALANDIT, SALANDIT, 0
	db 33, CROAGUNK, 0
	db 29, VOLTORB, VOLTORB, 0
	db 29, CROAGUNK, SALANDIT, 0
	db 25, CROAGUNK, CROAGUNK, CROAGUNK, CROAGUNK, CROAGUNK, 0
; Route 14
	db 26, SALANDIT, SALANDIT, CROAGUNK, SALANDIT, 0
	db 28, CROAGUNK, CROAGUNK, SALANDIT, 0
	db 29, SALANDIT, CROAGUNK, 0

BurglarData:
; Unused
	db 29, GROWLITHE, VULPIX, 0
	db 33, GROWLITHE, 0
	db 28, VULPIX, CHARMANDER, PONYTA, 0
; Cinnabar Gym
	db 36, GROWLITHE, VULPIX, NINETALES, 0
	db 41, PONYTA, 0
	db 37, VULPIX, GROWLITHE, 0
; Mansion 2F
	db 34, CHARMANDER, CHARMELEON, 0
; Mansion 3F
	db 38, NINETALES, 0
; Mansion B1F
	db 34, GROWLITHE, PONYTA, 0

EngineerData:
; Unused
	db 21, VOLTORB, MAGNEMITE, 0
; Route 11
	db 21, MAGNEMITE, 0
	db 18, MAGNEMITE, MAGNEMITE, MAGNEMITE, 0

UnusedJugglerData:
; none

FisherData:
; SS Anne 2F Rooms
	db 17, GOLDEEN, STARYU, GOLDEEN, 0
; SS Anne B1F Rooms
	db 17, HORSEA, STARYU, SHELLDER, 0
; Route 12
	db 22, GOLDEEN, STARYU, GOLDEEN, 0
	db 24, HORSEA, GOLDEEN, 0
	db 27, GOLDEEN, 0
	db 21, WAILMER, SHELLDER, GOLDEEN, HORSEA, 0
; Route 21
	db 28, SEAKING, GOLDEEN, SEAKING, SEAKING, 0
	db 31, SHELLDER, CLOYSTER, 0
	db 27, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, 0
	db 33, SEAKING, GOLDEEN, 0
; Route 12
	db 24, GYARADOS, GYARADOS, 0

SwimmerData:
; Cerulean Gym
	db 16, HORSEA, SHELLDER, 0
; Route 19
	db 30, PSYDUCK, SHELLDER, 0
	db 29, GOLDEEN, HORSEA, STARYU, 0
	db 30, QUAGSIRE, LAPRAS, 0
	db 27, HORSEA, SLOWPOKE, SHELLDER, GOLDEEN, 0
	db 29, GOLDEEN, SHELLDER, GOLDEEN, 0
	db 30, HORSEA, HORSEA, 0
	db 27, DUCKLETT, SHELLDER, STARYU, HORSEA, SHELLDER, 0
; Route 20
	db 31, SHELLDER, SHELLDER, 0
	db 35, STARYU, 0
	db 28, HORSEA, HORSEA, HORSEA, HORSEA, 0
; Route 21
	db 33, SEADRA, TENTACRUEL, 0
	db 37, STARMIE, 0
	db 33, STARYU, WARTORTLE, 0
	db 32, LUCARIO, QUAGSIRE, SEADRA, 0

CueBallData:
; Route 16
	db 28, CLEFAIRY, PRIMEAPE, CLEFAIRY, 0
	db 29, PRIMEAPE, CROAGUNK, 0
	db 33, PRIMEAPE, 0
; Route 17
	db 29, PRIMEAPE, PRIMEAPE, 0
	db 29, HAUNTER, SALANDIT, 0
	db 33, PRIMEAPE, 0
	db 26, MANKEY, MANKEY, CLEFAIRY, HAUNTER, 0
	db 29, PRIMEAPE, JOLTIK, 0
; Route 21
	db 31, QUAGSIRE, QUAGSIRE, TENTACRUEL, 0

GamblerData:
; Route 11
	db 18, GROWLITHE, HORSEA, 0
	db 18, VULPIX, STEENEE, 0
	db 18, VOLTORB, MAGNEMITE, 0
	db 18, GROWLITHE, VULPIX, 0
; Route 8
	db 22, VULPIX, RHYHORN, VULPIX, 0
; Unused
	db 22, ONIX, GEODUDE, FLAAFFY, 0
; Route 8
	db 24, GROWLITHE, VULPIX, 0

BeautyData:
; Celadon Gym
	db 21, BUTTERFREE, BEEDRILL, SCYTHER, VENONAT, 0
	db 24, BEEDRILL, SCYTHER, 0
	db 26, SCYTHER, 0
; Route 13
	db 27, GREEDENT, PIKACHU, GREEDENT, 0
	db 29, CLEFAIRY, PERSIAN, 0
; Route 20
	db 35, SEAKING, 0
	db 30, SHELLDER, SHELLDER, CLOYSTER, 0
	db 31, SWANNA, SEAKING, 0
; Route 15
	db 29, PIDGEOTTO, PSYDUCK, 0
	db 29, IVYSAUR, IVYSAUR, 0
; Unused
	db 33, MAMOSWINE, GARCHOMP, MAMOSWINE, 0
; Route 19
	db 27, GYARADOS, GOLDEEN, GOLDEEN, GOLDEEN, QUAGSIRE, 0
	db 30, GOLDEEN, GOLDEEN, 0
	db 29, STARYU, STARYU, STARYU, 0
; Route 20
	db 30, HORSEA, HORSEA, HORSEA, 0

PsychicData:
; Saffron Gym
	db 31, HAUNTER, ARBOK, VENOMOTH, GOLBAT, 0
	db 34, CROAGUNK, VENOMOTH, 0
	db 33, CROAGUNK, NIDORINO, BEEDRILL, 0
	db 38, HAUNTER, 0

RockerData:
; Vermilion Gym
	db 20, JOLTIK, MAGNEMITE, VOLTORB, 0
; Route 12
	db 29, VOLTORB, VOLTORB, 0

JugglerData:
; Silph Co. 5F
	db 29, KADABRA, KADABRA, 0
; Victory Road 2F
	db 41, JOLTIK, HYPNO, KADABRA, KADABRA, 0
; Fuchsia Gym
	db 31, FROSLASS, DRIFBLIM, FROSLASS, MAROWAK, 0
	db 34, GOLETT, MAROWAK, 0
; Victory Road 2F
	db 48, WAILMER, 0
; Unused
	db 33, HYPNO, 0
; Fuchsia Gym
	db 38, MAROWAK, 0
	db 34, GOLETT, HAUNTER, 0

TamerData:
; Fuchsia Gym
	db 34, LAPRAS, VULPIX, 0
	db 33, GOLETT, DRIFBLIM, DRIFBLIM, 0
; Viridian Gym
	db 43, RHYHORN, 0
	db 39, ARBOK, TAUROS, 0
; Victory Road 2F
	db 44, PERSIAN, GOLDUCK, 0
; Unused
	db 42, RHYHORN, PRIMEAPE, ARBOK, TAUROS, 0

BirdKeeperData:
; Route 13
	db 29, PIDGEOTTO, PIDGEOTTO, 0
	db 25, PIDGEOTTO, PIDGEOTTO, PIDGEOTTO, DUCKLETT, PIDGEOTTO, 0
	db 26, PIDGEOTTO, PIDGEOTTO, PIDGEOTTO, DUCKLETT, 0
; Route 14
	db 33, PIDGEOTTO, 0
	db 29, GOLBAT, PIDGEOTTO, 0
; Route 15
	db 26, PIDGEOTTO, DODUO, DODUO, PIDGEOTTO, 0
	db 28, DODUO, DODUO, DODUO, 0
; Route 18
	db 29, DODUO, DUCKLETT, 0
	db 34, DODRIO, 0
	db 26, PIDGEOTTO, PIDGEOTTO, GOLBAT, GOLBAT, 0
; Route 20
	db 30, MAREEP, MAREEP, PIDGEOTTO, 0
; Unused
	db 39, PIDGEOTTO, PIDGEOTTO, PIDGEY, PIDGEOTTO, 0
	db 42, CHANDELURE, MAREEP, 0
; Route 14
	db 28, PIDGEOTTO, DODUO, PIDGEOTTO, 0
	db 26, PIDGEOTTO, PIDGEOTTO, PIDGEOTTO, DUCKLETT, 0
	db 29, PIDGEOTTO, DUCKLETT, 0
	db 28, PIDGEOTTO, DODUO, DUCKLETT, 0

BlackbeltData:
; Fighting Dojo
	db 37, HITMONCHAN, LUCARIO, 0
	db 31, PRIMEAPE, PRIMEAPE, PRIMEAPE, 0
	db 32, CROAGUNK, CROAGUNK, 0
	db 36, PRIMEAPE, 0
	db 31, CROAGUNK, PRIMEAPE, PRIMEAPE, 0
; Viridian Gym
	db 40, CHANSEY, STEENEE, 0
	db 43, STEENEE, 0
	db 38, STEENEE, CHANSEY, STEENEE, 0
; Victory Road 2F
	db 43, STEENEE, CHANSEY, STEENEE, 0

Green1Data:
	db 5, SQUIRTLE, 0
	db 5, BULBASAUR, 0
	db 5, CHARMANDER, 0
; Route 22
	db $FF, 9, NIDORAN, 8, SQUIRTLE, 0
	db $FF, 9, NIDORAN, 8, BULBASAUR, 0
	db $FF, 9, NIDORAN, 8, CHARMANDER, 0
; Cerulean City
	db $FF, 18, NIDORINO, 15, RALTS, 15, FLAAFFY, 17, WARTORTLE, 0
	db $FF, 18, NIDORINO, 15, RALTS, 15, FLAAFFY, 17, IVYSAUR, 0
	db $FF, 18, NIDORINO, 15, RALTS, 15, FLAAFFY, 17, CHARMELEON, 0

ProfOakData:
; Unused
	db $FF, 66, TAUROS, 67, EXEGGUTOR, 68, ARCANINE, 69, BLASTOISE, 70, GYARADOS, 0
	db $FF, 66, TAUROS, 67, EXEGGUTOR, 68, ARCANINE, 69, VENUSAUR, 70, GYARADOS, 0
	db $FF, 66, TAUROS, 67, EXEGGUTOR, 68, ARCANINE, 69, CHARIZARD, 70, GYARADOS, 0

ChiefData:
; none

ScientistData:
; Unused
	db 34, MILOTIC, VOLTORB, 0
; Silph Co. 2F
	db 26, CROAGUNK, SALANDIT, SALANDIT, SALANDIT, 0
	db 28, MAGNEMITE, VOLTORB, MAGNEMITE, 0
; Silph Co. 3F/Mansion 1F
	db 29, VOLTORB, SALANDIT, 0
; Silph Co. 4F
	db 33, ELECTRODE, 0
; Silph Co. 5F
	db 26, MAGNEMITE, SALANDIT, SALANDIT, MAGNEMITE, 0
; Silph Co. 6F
	db 25, VOLTORB, SALANDIT, MAGNEMITE, MAGNEMITE, SALANDIT, 0
; Silph Co. 7F
	db 29, VOLTORB, CROAGUNK, 0
; Silph Co. 8F
	db 29, CROAGUNK, VOLTORB, 0
; Silph Co. 9F
	db 28, VOLTORB, SALANDIT, MAGNEMITE, 0
; Silph Co. 10F
	db 29, MAGNEMITE, SALANDIT, 0
; Mansion 3F
	db 33, MAGNEMITE, MAGNETON, VOLTORB, 0
; Mansion B1F
	db 34, MAGNEMITE, ELECTRODE, 0

GiovanniData:
; Rocket Hideout B4F
	db $FF, 25, GYARADOS, 24, SALANDIT, 29, GABITE, 0
; Silph Co. 11F
	db $FF, 37, DRAGONAIR, 35, SALAZZLE, 37, GABITE, 41, ARCTIBAX, 0
; Viridian Gym
	db $FF, 45, RHYHORN, 42, DUGTRIO, 44, FRIGIBAX, 45, NIDORINO, 50, RHYDON, 0

RocketData:
; Mt. Moon B2F
	db 13, MANKEY, ZUBAT, 0
	db 11, ZUBAT, ZUBAT, ZUBAT, 0
	db 12, ZUBAT, EKANS, 0
	db 16, CUBONE, 0
; Cerulean City
	db 17, CUBONE, ZUBAT, 0
; Route 24
	db 15, EKANS, ZUBAT, 0
; Game Corner
	db 20, EKANS, ZUBAT, 0
; Rocket Hideout B1F
	db 21, VENONAT, MEOWTH, 0
	db 21, MEOWTH, ZUBAT, 0
	db 20, CROAGUNK, SALANDIT, SALANDIT, 0
	db 19, CROAGUNK, CROAGUNK, MEOWTH, WAILMER, 0
	db 22, CROAGUNK, SALANDIT, 0
; Rocket Hideout B2F
	db 17, ZUBAT, SALANDIT, CROAGUNK, ZUBAT, WAILMER, 0
; Rocket Hideout B3F
	db 20, MANKEY, ZUBAT, EKANS, 0
	db 21, WAILMER, MEOWTH, 0
; Rocket Hideout B4F
	db 23, VENONAT, ARBOK, ARBOK, 0
	db 23, ARBOK, CROAGUNK, ARBOK, 0
	db 21, SALANDIT, ZUBAT, 0
; Pokémon Tower 7F
	db 25, GOLBAT, GOLBAT, GOLBAT, 0
	db 26, SALANDIT, CUBONE, 0
	db 23, GOLBAT, MEOWTH, SALANDIT, GOLBAT, 0
; Unused
	db 26, JOLTIK, MILOTIC, 0
; Silph Co. 2F
	db 29, MAROWAK, GOLBAT, 0
	db 25, GOLBAT, GOLBAT, GOLBAT, ARBOK, GOLBAT, 0
; Silph Co. 3F
	db 28, GOLBAT, PRIMEAPE, GOLBAT, 0
; Silph Co. 4F
	db 29, ARBOK, PRIMEAPE, 0
	db 28, ARBOK, GOLBAT, MAROWAK, 0
; Silph Co. 5F
	db 33, ARBOK, 0
	db 33, WAILMER, 0
; Silph Co. 6F
	db 29, PERSIAN, VENONAT, 0
	db 28, GOLBAT, GOLBAT, GOLBAT, 0
; Silph Co. 7F
	db 26, GOLBAT, ARBOK, SALANDIT, GOLBAT, 0
	db 29, MAROWAK, MAROWAK, 0
	db 29, WAILMER, ARBOK, 0
; Silph Co. 8F
	db 26, WAILMER, GOLBAT, GOLBAT, HAUNTER, 0
	db 28, SALANDIT, GOLBAT, SALANDIT, 0
; Silph Co. 9F
	db 28, ARBOK, CROAGUNK, CROAGUNK, 0
	db 28, GOLBAT, GOLBAT, VENONAT, 0
; Silph Co. 10F
	db 33, SALAZZLE, 0
; Silph Co. 11F
	db 25, MEOWTH, WAILMER, GOLBAT, CUBONE, ARBOK, 0
	db 32, MAROWAK, CROAGUNK, MAROWAK, 0

CooltrainerMData:
; Viridian Gym
	db 39, SIGILYPH, NIDORINO, 0
; Victory Road 3F
	db 43, EXEGGUTOR, CLOYSTER, ARCANINE, 0
	db 43, KINGLER, TENTACRUEL, BLASTOISE, 0
; Unused
	db 45, KINGLER, STARMIE, 0
; Victory Road 1F
	db 42, IVYSAUR, WARTORTLE, CHARMELEON, CHARIZARD, 0
; Unused
	db 44, IVYSAUR, WARTORTLE, CHARMELEON, 0
	db 49, NIDORINO, 0
	db 44, KINGLER, CLOYSTER, 0
; Viridian Gym
	db 39, LARVITAR, DUGTRIO, 0
	db 43, RHYHORN, 0

CooltrainerFData:
; Celadon Gym
	db 24, SCYTHER, SHELLDER, VENONAT, 0
; Victory Road 3F
	db 43, GARCHOMP, MAMOSWINE, VICTREEBEL, 0
	db 43, MILTANK, DEWGONG, CHANSEY, 0
; Unused
	db 46, TSAREENA, BUTTERFREE, 0
; Victory Road 1F
	db 44, PERSIAN, NINETALES, 0
; Unused
	db 45, IVYSAUR, VENUSAUR, 0
	db 45, SALANDIT, FRIGIBAX, 0
	db 43, PERSIAN, NINETALES, RAICHU, 0

BrunoData:
	db $FF, 53, ONIX, 55, HITMONCHAN, 55, GREEDENT, 56, ONIX, 58, CHANSEY, 0

BrockData:
	db $FF, 12, VULPIX, 14, FRIGIBAX, 0

MistyData:
	db $FF, 18, WAILMER, 21, GYARADOS, 0

LtSurgeData:
	db $FF, 21, FLAAFFY, 18, JOLTEON, 24, RAICHU, 0

ErikaData:
	db $FF, 29, VENONAT, 24, SCYTHER, 29, JOLTIK, 0

KogaData:
	db $FF, 37, CHANDELURE, 39, GENGAR, 37, FROSLASS, 43, MAROWAK, 0

BlaineData:
	db $FF, 42, GROWLITHE, 40, PONYTA, 42, RAPIDASH, 47, ARCANINE, 0

SabrinaData:
	db $FF, 38, NIDOKING, 37, CHANDELURE, 39, SALAZZLE, 43, TOXICROAK, 0

GentlemanData:
; SS Anne 1F Rooms
	db 18, GROWLITHE, GROWLITHE, 0
	db 19, NIDORINO, CUBONE, 0
; SS Anne 2F Rooms/Vermilion Gym
	db 23, PIKACHU, 0
; Unused
	db 48, PRIMEAPE, 0
; SS Anne 2F Rooms
	db 17, GROWLITHE, PONYTA, 0

Green2Data:
; SS Anne 2F
	db $FF, 19, RALTS, 16, FLAAFFY, 18, NIDORINO, 20, WARTORTLE, 0
	db $FF, 19, RALTS, 16, FLAAFFY, 18, NIDORINO, 20, IVYSAUR, 0
	db $FF, 19, RALTS, 16, FLAAFFY, 18, NIDORINO, 20, CHARMELEON, 0
; Pokémon Tower 2F
	db $FF, 25, KIRLIA, 23, GROWLITHE, 22, STEENEE, 20, FLAAFFY, 25, WARTORTLE, 0
	db $FF, 25, KIRLIA, 23, MILOTIC, 22, GROWLITHE, 20, FLAAFFY, 25, IVYSAUR, 0
	db $FF, 25, KIRLIA, 23, STEENEE, 22, MILOTIC, 20, FLAAFFY, 25, CHARMELEON, 0
; Silph Co. 7F
	db $FF, 37, GARDEVOIR, 38, GROWLITHE, 35, TSAREENA, 35, AMPHAROS, 40, BLASTOISE, 0
	db $FF, 37, GARDEVOIR, 38, MILOTIC, 35, GROWLITHE, 35, AMPHAROS, 40, VENUSAUR, 0
	db $FF, 37, GARDEVOIR, 38, TSAREENA, 35, MILOTIC, 35, AMPHAROS, 40, CHARIZARD, 0
; Route 22
	db $FF, 47, PIDGEOT, 45, RHYHORN, 45, GROWLITHE, 47, EXEGGCUTE, 50, ALAKAZAM, 53, BLASTOISE, 0
	db $FF, 47, PIDGEOT, 45, RHYHORN, 45, GYARADOS, 47, GROWLITHE, 50, ALAKAZAM, 53, VENUSAUR, 0
	db $FF, 47, PIDGEOT, 45, RHYHORN, 45, EXEGGCUTE, 47, GYARADOS, 50, ALAKAZAM, 53, CHARIZARD, 0

Green3Data:
	db $FF, 61, PIDGEOT, 59, ALAKAZAM, 61, RHYDON, 61, ARCANINE, 63, EXEGGUTOR, 65, BLASTOISE, 0
	db $FF, 61, PIDGEOT, 59, ALAKAZAM, 61, RHYDON, 61, GYARADOS, 63, ARCANINE, 65, VENUSAUR, 0
	db $FF, 61, PIDGEOT, 59, ALAKAZAM, 61, RHYDON, 61, EXEGGUTOR, 63, GYARADOS, 65, CHARIZARD, 0

LoreleiData:
	db $FF, 54, DEWGONG, 53, CLOYSTER, 54, SLOWBRO, 56, SALAZZLE, 56, LAPRAS, 0

ChannelerData:
; Unused
	db 22, GASTLY, 0
	db 24, GASTLY, 0
	db 23, GASTLY, GASTLY, 0
	db 24, GASTLY, 0
; Pokémon Tower 3F
	db 23, GASTLY, 0
	db 24, GASTLY, 0
; Unused
	db 24, HAUNTER, 0
; Pokémon Tower 3F
	db 22, GASTLY, 0
; Pokémon Tower 4F
	db 24, GASTLY, 0
	db 23, GASTLY, GASTLY, 0
; Unused
	db 24, GASTLY, 0
; Pokémon Tower 4F
	db 22, GASTLY, 0
; Unused
	db 24, GASTLY, 0
; Pokémon Tower 5F
	db 23, DRIFLOON, 0
; Unused
	db 24, GASTLY, 0
; Pokémon Tower 5F
	db 22, GASTLY, 0
	db 24, GASTLY, 0
	db 22, DRIFLOON, 0
; Pokémon Tower 6F
	db 22, GASTLY, GASTLY, GASTLY, 0
	db 24, GASTLY, 0
	db 24, GASTLY, 0
; Saffron Gym
	db 34, NIDORINO, ARBOK, 0
	db 38, TOXICROAK, 0
	db 33, SALAZZLE, VENUSAUR, NIDORINO, 0

AgathaData:
	db $FF, 56, GENGAR, 56, GOLBAT, 55, HAUNTER, 58, ARBOK, 60, GENGAR, 0

LanceData:
	db $FF, 58, GYARADOS, 56, DRAGONAIR, 56, DRAGONAIR, 60, AERODACTYL, 62, DRAGONITE, 0
