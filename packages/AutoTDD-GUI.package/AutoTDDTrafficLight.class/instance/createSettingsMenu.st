components
createSettingsMenu
	
	self updateExtent.
	self modules do: [ :each | each createSettingsComponentsAt: self settingsPosition ]