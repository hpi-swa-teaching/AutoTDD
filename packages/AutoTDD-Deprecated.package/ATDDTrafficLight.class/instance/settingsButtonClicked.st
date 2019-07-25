event handling
settingsButtonClicked
	
	self settingsVisible: self settingsVisible not.
	self settingsVisible
		ifTrue: [
			self createSettingsMenu.
			self settingsButton state: #on ]
		ifFalse: [
			self closeMenu.
			self settingsButton state: #off ]