PokemonMansion1FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 32, PERSIAN
	db 30, PERSIAN
	db 34, PONYTA
	db 30, PONYTA
	db 34, GROWLITHE
	db 32, PONYTA
	db 30, VENUSAUR
	db 28, PONYTA
	db 37, WEEZING
	db 39, MUK
ENDC
IF DEF(_BLUE)
	db 32, VENUSAUR
	db 30, VENUSAUR
	db 34, PONYTA
	db 30, PONYTA
	db 34, VULPIX
	db 32, PONYTA
	db 30, PERSIAN
	db 28, PONYTA
	db 37, MUK
	db 39, WEEZING
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
