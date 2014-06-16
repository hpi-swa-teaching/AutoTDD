components
createSettingsMenu
	
	self
		extent: (self class extent + (self class settingsExtent x @ 0)).
	self modules do: [ :each | each createSettingsComponents ]