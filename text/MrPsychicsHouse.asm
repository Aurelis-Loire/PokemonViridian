_TM29PreReceiveText::
	text "...Wait! Don't"
	line "say a word!"

	para "You wanted this!"
	prompt

_ReceivedTM29Text::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_TM29ExplanationText::
	text "TM38 is FIRE"
	line "BLAST!

	para "It can leave the"
	line "target with a sick"
	cont "burn."
	done

_TM29NoRoomText::
	text "Where do you plan"
	line "to put this?"
	done
