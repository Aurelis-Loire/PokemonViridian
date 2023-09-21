PrizeDifferentMenuPtrs:
	dw PrizeMenuMon1Entries, PrizeMenuMon1Cost
	dw PrizeMenuMon2Entries, PrizeMenuMon2Cost
	dw PrizeMenuTMsEntries,  PrizeMenuTMsCost

NoThanksText:
	db "NO THANKS@"

PrizeMenuMon1Entries:
	db ABRA
	db CLEFAIRY
	db PIKACHU
	db "@"

PrizeMenuMon1Cost:
	bcd2 180
	bcd2 500
	bcd2 620
	db "@"

PrizeMenuMon2Entries:
	db DRATINI
	db SCYTHER
	db EEVEE
	db "@"

PrizeMenuMon2Cost:
	bcd2 2800
	bcd2 5500
	bcd2 6666
	db "@"

PrizeMenuTMsEntries:
	db TM_DRAGON_RAGE
	db TM_HYPER_BEAM
	db TM_SUBSTITUTE
	db "@"

PrizeMenuTMsCost:
	bcd2 3300
	bcd2 5500
	bcd2 7700
	db "@"
