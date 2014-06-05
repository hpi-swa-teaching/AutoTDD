event handling
settingsButtonClicked
	"self fitSubmorphs."
	self settingsVisible 
		ifFalse: [self createSettingsMenu.
				self settingsVisible: true.]
		ifTrue: [self closeMenu.
				self settingsVisible: false.]