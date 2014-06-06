gui
createSettingsMenu
	
	self extent: 450@150.
	(self travisSource) ifNil: [self travisSource: 'User/Repository'.].
	self
		createTravisOnOffButton;
		createLocalOnOffButton;
		createSlugField;
		createApplyButton