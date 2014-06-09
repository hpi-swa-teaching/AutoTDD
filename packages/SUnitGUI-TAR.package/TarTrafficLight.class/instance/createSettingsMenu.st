gui
createSettingsMenu
	
	self
		extent: (self class extent + (self class settingsExtent x @ 0));
		createTravisOnOffButton;
		createLocalOnOffButton;
		createSlugField;
		createApplyButton