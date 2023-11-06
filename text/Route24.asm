_Route24Text_51510::
	text "Congratulations!"
	line "You beat our 5"
	cont "contest trainers!@"
	text_end

_Route24Text_51515::
	text_start

	para "You just earned a"
	line "fabulous prize!"
	prompt

_Route24Text_5151a::
	text "<PLAYER> received"
	line "a @"
	text_ram wStringBuffer
	text "!@"
	text_end

_Route24Text_51521::
	text "You don't have"
	line "any room!"
	done

_Route24Text_51526::
	text "By the way, would"
	line "you like to join"
	cont "TEAM ROCKET?"

	para "We're a group"
	line "dedicated to evil"
	cont "using #MON!"

	para "Want to join?"

	para "Are you sure?"

	para "Come on, join us!"

	para "I'm telling you"
	line "to join!"

	para "OK, you need"
	line "convincing!"

	para "I'll make you an"
	line "offer you can't"
	cont "refuse!"
	done

_Route24Text_5152b::
	text "Arrgh!"
	line "You are good!"
	prompt

_Route24Text_51530::
	text "With your ability,"
	line "you could become"
	cont "a top leader in"
	cont "TEAM ROCKET!"
	done

_Route24BattleText1::
	text "I saw your feat"
	line "from the grass!"
	done

_Rt24HowText::
	text "How's my #MON"
	line "doing?"
	done
	
_Rt24HiText::
	text "I'm not good at"
	line "raising #MON."

	para "I should release"
	line "my #MON"
	cont "because I haven't"
	cont "raised it well..."

	para "If you can find me"
	line "a trainer that'll"
	cont "care for it"
	cont "properly, it's"
	cont "theirs."
	done
	
_Rt24YesText::
	text "Excellent! Here"
	line "you go!"
	prompt
	
_Rt24NoText::
	text "Oh... I'd better"
	line "release it then."
	done
	
_Rt24SorryText::
	text "Hmmm. I don't"
	line "think you'd be a"
	cont "better trainer"
	cont "than I was."
	done
	
	text "If you were to add"
	line "more #MON to"
	cont "your #DEX,"
	cont "that would prove"
	cont "you're a better"
	cont "trainer!"
	done
	
_Rt24GivenText::
	text "Take good care of"
	line "my #MON!"
	done