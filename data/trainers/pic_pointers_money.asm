MACRO pic_money
	dw \1
	bcd3 \2
ENDM

TrainerPicAndMoneyPointers::
	table_width 5, TrainerPicAndMoneyPointers
	; pic pointer, base reward money
	; money received after battle = base money × level of last enemy mon
	pic_money YoungsterPic,    1500
	pic_money BugCatcherPic,   1000
	pic_money LassPic,         1500
	pic_money SailorPic,       3000
	pic_money JrTrainerMPic,   2000
	pic_money JrTrainerFPic,   2000
	pic_money PokemaniacPic,   5000
	pic_money SuperNerdPic,    2500
	pic_money HikerPic,        3500
	pic_money BikerPic,        2000
	pic_money BurglarPic,      9000
	pic_money EngineerPic,     5000
	pic_money JugglerPic,      3500
	pic_money FisherPic,       3500
	pic_money SwimmerPic,       500
	pic_money CueBallPic,      2500
	pic_money GamblerPic,      7000
	pic_money BeautyPic,       7000
	pic_money PsychicPic,      1000
	pic_money RockerPic,       2500
	pic_money JugglerPic,      3500
	pic_money TamerPic,        4000
	pic_money BirdKeeperPic,   2500
	pic_money BlackbeltPic,    2500
	pic_money Iscaria1Pic,     3500
	pic_money ProfOakPic,      9900
	pic_money ChiefPic,        3000
	pic_money ScientistPic,    5000
	pic_money JohannaPic,      9900
	pic_money RocketPic,       3000
	pic_money CooltrainerMPic, 3500
	pic_money CooltrainerFPic, 3500
	pic_money GrantPic,        9900
	pic_money DianaPic,        9900
	pic_money MattPic,         9900
	pic_money AlexPic,         9900
	pic_money SpectrePic,      9900
	pic_money AlyssaPic,       9900
	pic_money MikePic,         9900
	pic_money AndrewPic,       9900
	pic_money GentlemanPic,    7000
	pic_money Iscaria2Pic,     6500
	pic_money Iscaria3Pic,     9900
	pic_money KevinPic,        9900
	pic_money ChannelerPic,    3000
	pic_money ThomPic,         9900
	pic_money JohnPic,         9900
	assert_table_length NUM_TRAINERS
