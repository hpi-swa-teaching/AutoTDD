components
createComponents
	
	self
		createSettingsButton; 
		createForegroundButton;
		createReloadButton;
		createMuteButton;
		positionButtons.
	self modules do: [ :each | each createComponents ]