; pokemon ids
; indexes for:
; - MonsterNames (see data/pokemon/names.asm)
; - EvosMovesPointerTable (see data/pokemon/evos_moves.asm)
; - CryData (see data/pokemon/cries.asm)
; - PokedexOrder (see data/pokemon/dex_order.asm)
; - PokedexEntryPointers (see data/pokemon/dex_entries.asm)
	const_def
	const NO_MON             ; $00
	const RHYDON             ; $01
	const KANGASKHAN         ; $02
	const SKWOVET            ; $03
	const CLEFAIRY           ; $04
	const NIDORAN            ; $05
	const VOLTORB            ; $06
	const SPEWPA             ; $07
	const SLOWBRO            ; $08
	const IVYSAUR            ; $09
	const EXEGGUTOR          ; $0A
	const LICKITUNG          ; $0B
	const EXEGGCUTE          ; $0C
	const VIVILLON           ; $0D
	const GENGAR             ; $0E
	const WOOPER             ; $0F
	const FRIGIBAX           ; $10
	const CUBONE             ; $11
	const RHYHORN            ; $12
	const LAPRAS             ; $13
	const ARCANINE           ; $14
	const MEW                ; $15
	const GYARADOS           ; $16
	const SHELLDER           ; $17
	const QUAGSIRE           ; $18
	const GASTLY             ; $19
	const SCYTHER            ; $1A
	const STARYU             ; $1B
	const BLASTOISE          ; $1C
	const RALTS              ; $1D
	const KIRLIA             ; $1E
	const BOUNSWEET          ; $1F
	const DUCKLETT           ; $20
	const GROWLITHE          ; $21
	const ONIX               ; $22
	const MAREEP             ; $23
	const PIDGEY             ; $24
	const SLOWPOKE           ; $25
	const KADABRA            ; $26
	const FLAAFFY            ; $27
	const CHANSEY            ; $28
	const STEENEE            ; $29
	const WAILMER            ; $2A
	const GREEDENT           ; $2B
	const HITMONCHAN         ; $2C
	const ARBOK              ; $2D
	const MILTANK            ; $2E
	const PSYDUCK            ; $2F
	const JOLTIK             ; $30
	const ESPEON             ; $31
	const LEAFEON            ; $32
	const MAGMAR             ; $33
	const LARVITAR           ; $34
	const ELECTABUZZ         ; $35
	const MAGNETON           ; $36
	const MILOTIC            ; $37
	const SALANDIT           ; $38
	const MANKEY             ; $39
	const CROAGUNK           ; $3A
	const DIGLETT            ; $3B
	const TAUROS             ; $3C
	const SIGILYPH           ; $3D
	const GOLETT             ; $3E
	const DRIFLOON           ; $3F
	const CHANDELURE         ; $40
	const VENONAT            ; $41
	const DRAGONITE          ; $42
	const GARDEVOIR          ; $43
	const AMPHAROS           ; $44
	const TSAREENA           ; $45
	const DODUO              ; $46
	const SWANNA             ; $47
	const SALAZZLE           ; $48
	const DRIFBLIM           ; $49
	const ARTICUNO           ; $4A
	const ZAPDOS             ; $4B
	const DITTO              ; $4C
	const MEOWTH             ; $4D
	const KRABBY             ; $4E
	const_skip               ; $4F
	const_skip               ; $50
	const_skip               ; $51
	const VULPIX             ; $52
	const NINETALES          ; $53
	const PIKACHU            ; $54
	const RAICHU             ; $55
	const_skip               ; $56
	const_skip               ; $57
	const DRATINI            ; $58
	const DRAGONAIR          ; $59
	const KABUTO             ; $5A
	const KABUTOPS           ; $5B
	const HORSEA             ; $5C
	const SEADRA             ; $5D
	const_skip               ; $5E
	const_skip               ; $5F
	const_skip               ; $60
	const_skip               ; $61
	const OMANYTE            ; $62
	const OMASTAR            ; $63
	const_skip               ; $64
	const_skip               ; $65
	const EEVEE              ; $66
	const FLAREON            ; $67
	const JOLTEON            ; $68
	const VAPOREON           ; $69
	const GIBLE              ; $6A
	const ZUBAT              ; $6B
	const EKANS              ; $6C
	const PARAS              ; $6D
	const POLIWHIRL          ; $6E
	const POLIWRATH          ; $6F
	const WEEDLE             ; $70
	const KAKUNA             ; $71
	const BEEDRILL           ; $72
	const_skip               ; $73
	const DODRIO             ; $74
	const PRIMEAPE           ; $75
	const DUGTRIO            ; $76
	const VENOMOTH           ; $77
	const DEWGONG            ; $78
	const_skip               ; $79
	const_skip               ; $7A
	const CATERPIE           ; $7B
	const METAPOD            ; $7C
	const BUTTERFREE         ; $7D
	const GABITE             ; $7E
	const_skip               ; $7F
	const GOLDUCK            ; $80
	const HYPNO              ; $81
	const GOLBAT             ; $82
	const MEWTWO             ; $83
	const SNORLAX            ; $84
	const MAGIKARP           ; $85
	const_skip               ; $86
	const_skip               ; $87
	const MUK                ; $88
	const_skip               ; $89
	const KINGLER            ; $8A
	const CLOYSTER           ; $8B
	const_skip               ; $8C
	const ELECTRODE          ; $8D
	const CLEFABLE           ; $8E
	const WEEZING            ; $8F
	const PERSIAN            ; $90
	const MAROWAK            ; $91
	const_skip               ; $92
	const HAUNTER            ; $93
	const ABRA               ; $94
	const ALAKAZAM           ; $95
	const PIDGEOTTO          ; $96
	const PIDGEOT            ; $97
	const STARMIE            ; $98
	const BULBASAUR          ; $99
	const VENUSAUR           ; $9A
	const TENTACRUEL         ; $9B
	const_skip               ; $9C
	const GOLDEEN            ; $9D
	const SEAKING            ; $9E
	const_skip               ; $9F
	const_skip               ; $A0
	const_skip               ; $A1
	const_skip               ; $A2
	const PONYTA             ; $A3
	const RAPIDASH           ; $A4
	const_skip               ; $A5
	const_skip               ; $A6
	const_skip               ; $A7
	const_skip               ; $A8
	const GEODUDE            ; $A9
	const PORYGON            ; $AA
	const AERODACTYL         ; $AB
	const_skip               ; $AC
	const MAGNEMITE          ; $AD
	const_skip               ; $AE
	const_skip               ; $AF
	const CHARMANDER         ; $B0
	const SQUIRTLE           ; $B1
	const CHARMELEON         ; $B2
	const WARTORTLE          ; $B3
	const CHARIZARD          ; $B4
	const_skip               ; $B5
	const FOSSIL_KABUTOPS    ; $B6
	const FOSSIL_AERODACTYL  ; $B7
	const MON_GHOST          ; $B8
	const_skip               ; $B9
	const_skip               ; $BA
	const_skip               ; $BB
	const BELLSPROUT         ; $BC
	const WEEPINBELL         ; $BD
	const VICTREEBEL         ; $BE

DEF NUM_POKEMON_INDEXES EQU const_value - 1

; starters
DEF STARTER1 EQU CHARMANDER
DEF STARTER2 EQU SQUIRTLE
DEF STARTER3 EQU BULBASAUR

; ghost Marowak in Pokémon Tower
DEF RESTLESS_SOUL EQU MAROWAK
