SafariZoneCenterWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 22, BULBASAUR
	db 25, RHYHORN
	db 22, VENONAT
	db 24, EXEGGCUTE
	db 31, ALAKAZAM
	db 25, EXEGGCUTE
	db 31, PRIMEAPE
	db 30, PIDGEOT
	db 23, SCYTHER
ENDC
IF DEF(_BLUE)
	db 22, CHARMANDER
	db 25, RHYHORN
	db 22, VENONAT
	db 24, EXEGGCUTE
	db 31, PRIMEAPE
	db 25, EXEGGCUTE
	db 31, ALAKAZAM
	db 30, PIDGEOT
	db 23, CHARMELEON
ENDC
	db 23, CHANSEY
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
