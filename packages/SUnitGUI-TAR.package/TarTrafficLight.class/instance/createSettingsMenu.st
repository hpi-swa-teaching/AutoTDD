gui
createSettingsMenu
	
	(self travisSource) ifNil: [self travisSource: 'User/Repository'.].
	self
		createTravisOnOffButton;
		createLocalOnOffButton;
		createSlugField;
		createApplyButton