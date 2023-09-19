TradeMons:
; entries correspond to TRADE_FOR_* constants
	table_width 3 + NAME_LENGTH, TradeMons
	; give mon, get mon, dialog id, nickname
	; The two instances of TRADE_DIALOGSET_EVOLUTION are a leftover
	; from the Japanese Blue trades, which used species that evolve.
	; Japanese Red and Green used TRADE_DIALOGSET_CASUAL, and had
	; the same species as English Red and Blue.
	db QUAGSIRE,   ZUBAT,     TRADE_DIALOGSET_CASUAL,    "ZUBATMAN@@@"
	db ABRA,       WAILMER,   TRADE_DIALOGSET_CASUAL,    "MARCEL@@@@@"
	db BUTTERFREE, BEEDRILL,  TRADE_DIALOGSET_HAPPY,     "CHIKUCHIKU@" ; unused
	db PONYTA,     SEEL,      TRADE_DIALOGSET_CASUAL,    "SAILOR@@@@@"
	db SCATTERBUG, FARFETCHD, TRADE_DIALOGSET_HAPPY,     "DUX@@@@@@@@"
	db SLOWBRO,    LICKITUNG, TRADE_DIALOGSET_CASUAL,    "MARC@@@@@@@"
	db ZUBAT,      VOLTORB,   TRADE_DIALOGSET_EVOLUTION, "ZAPPY@@@@@@"
	db RAICHU,     ELECTRODE, TRADE_DIALOGSET_CASUAL,    "DORIS@@@@@@"
	db VENONAT,    KIRLIA,    TRADE_DIALOGSET_HAPPY,     "CRINKLES@@@"
	db ELECTRODE,  EEVEE,     TRADE_DIALOGSET_HAPPY,     "FRANK@@@@@@"
	assert_table_length NUM_NPC_TRADES
