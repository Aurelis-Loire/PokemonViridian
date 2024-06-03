TradeMons:
; entries correspond to TRADE_FOR_* constants
	table_width 3 + NAME_LENGTH, TradeMons
	; give mon, get mon, dialog id, nickname
	; The two instances of TRADE_DIALOGSET_EVOLUTION are a leftover
	; from the Japanese Blue trades, which used species that evolve.
	; Japanese Red and Green used TRADE_DIALOGSET_CASUAL, and had
	; the same species as English Red and Blue.
	db QUAGSIRE,   MAGNEMITE,  TRADE_DIALOGSET_CASUAL,    "BOLTS@@@@@@"
	db BEEDRILL,   EXEGGCUTE,  TRADE_DIALOGSET_CASUAL,    "WIGGLES@@@@"
	db BUTTERFREE, BEEDRILL,   TRADE_DIALOGSET_HAPPY,     "CHIKUCHIKU@" ; unused
	db MANKEY,     LARVITAR,   TRADE_DIALOGSET_CASUAL,    "DARUDE@@@@@"
	db RALTS,      CUBONE,     TRADE_DIALOGSET_HAPPY,     "PEANUT@@@@@"
	db HAUNTER,    FROSLASS,   TRADE_DIALOGSET_CASUAL,    "ELSA@@@@@@@"
	db ZUBAT,      VOLTORB,    TRADE_DIALOGSET_EVOLUTION, "ZAPPY@@@@@@"
	db DRIFLOON,   LUCARIO,    TRADE_DIALOGSET_CASUAL,    "COBALT@@@@@"
	db EXEGGCUTE,  CHANDELURE, TRADE_DIALOGSET_HAPPY,     "SIA@@@@@@@@"
	db VULPIX,     GIBLE,      TRADE_DIALOGSET_HAPPY,     "CHOMPERS@@@"
	assert_table_length NUM_NPC_TRADES
