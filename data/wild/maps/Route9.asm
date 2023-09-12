Route9WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 16, SQUIRTLE
	db 16, SCATTERBUG
	db 14, SQUIRTLE
IF DEF(_RED)
	db 11, EKANS
	db 13, SCATTERBUG
	db 15, EKANS
	db 17, SQUIRTLE
	db 17, SCATTERBUG
	db 13, EKANS
	db 17, EKANS
ENDC
IF DEF(_BLUE)
	db 11, CLEFABLE
	db 13, SCATTERBUG
	db 15, CLEFABLE
	db 17, SQUIRTLE
	db 17, SCATTERBUG
	db 13, CLEFABLE
	db 17, CLEFABLE
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
