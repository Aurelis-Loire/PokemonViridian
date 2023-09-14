Route23WildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 26, EKANS
ENDC
IF DEF(_BLUE)
	db 26, CLEFABLE
ENDC
	db 33, DITTO
	db 26, SCATTERBUG
	db 38, BLASTOISE
	db 38, DITTO
	db 38, BLASTOISE
IF DEF(_RED)
	db 41, ARBOK
ENDC
IF DEF(_BLUE)
	db 41, NINETALES
ENDC
	db 43, DITTO
	db 41, BLASTOISE
	db 43, BLASTOISE
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
