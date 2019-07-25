components
createSettingsMenu
	
	self extent: self fullExtent.
	self modules
		do: [ :each |
			each createSettingsComponentsAt: self settingsPosition ]