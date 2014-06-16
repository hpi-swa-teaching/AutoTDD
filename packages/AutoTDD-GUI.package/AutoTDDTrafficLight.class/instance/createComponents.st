components
createComponents
	
	self
		createSettingsButton; 
		createForegroundButton;
		createReloadButton;
		createMuteButton.
	self modules do: [ :each | each createComponents ]