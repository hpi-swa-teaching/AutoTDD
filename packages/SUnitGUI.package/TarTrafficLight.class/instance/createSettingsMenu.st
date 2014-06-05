gui
createSettingsMenu
	(self travisSource) ifNil: [self travisSource: 'http://'.].
	self useTravis ifNil: [self useTravis: false.].
	self setUpTravisButton;
		 setUpUrlField;
		 setUpUrlButton.