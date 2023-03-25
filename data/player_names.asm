IF DEF(_RED)
DefaultNamesPlayer:
	db   "NEW NAME"
	next "JOHN"
	next "RED"
	next "ASH"
	db   "@"

DefaultNamesRival:
	db   "NEW NAME"
	next "ISCARIA"
	next "BLUE"
	next "GARY"
	db   "@"
ENDC

IF DEF(_BLUE)
DefaultNamesPlayer:
	db   "NEW NAME"
	next "BLUE"
	next "GARY"
	next "JOHN"
	db   "@"

DefaultNamesRival:
	db   "NEW NAME"
	next "RED"
	next "ASH"
	next "JACK"
	db   "@"
ENDC
