accessing-ui
spacerColor
	self flag: #todo. "dont use morphic framework"
	^ (UserInterfaceTheme current get: #borderColor for: PluggableButtonMorph)