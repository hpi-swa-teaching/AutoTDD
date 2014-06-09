event handling
settingsButtonClicked
	
	self settingsVisible: self settingsVisible not.
	self settingsVisible 
		ifTrue: [ self createSettingsMenu ]
		ifFalse: [ self closeMenu ]