components
createSettingsMenu
	
	self
		extent: (self class extent + (self class settingsExtent x @ 0));
		createTravisOnOffButton;
		createTravisProOnOffButton;
		createLocalOnOffButton;
		createSlugField;
		createAuthCodeField;
		createApplyButton