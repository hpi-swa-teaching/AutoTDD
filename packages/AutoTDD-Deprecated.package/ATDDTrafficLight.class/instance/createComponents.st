components
createComponents
	
	self
		createSettingsButton;
		createForegroundButton;
		createReloadButton;
		createQuitButton;
		createMuteButton;
		positionButtons.
	self modules do: [ :each | each createComponents ]