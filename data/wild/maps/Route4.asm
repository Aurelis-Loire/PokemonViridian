Route4WildMons:
	def_grass_wildmons 20 ; encounter rate
	db 10, SQUIRTLE
	db 10, SCATTERBUG
	db  8, SQUIRTLE
IF DEF(_RED)
	db  6, EKANS
	db  8, SCATTERBUG
	db 10, EKANS
	db 12, SQUIRTLE
	db 12, SCATTERBUG
	db  8, EKANS
	db 12, EKANS
ENDC
IF DEF(_BLUE)
	db  6, SANDSHREW
	db  8, SCATTERBUG
	db 10, SANDSHREW
	db 12, SQUIRTLE
	db 12, SCATTERBUG
	db  8, SANDSHREW
	db 12, SANDSHREW
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
