running
testLoadProfile
	
	profile
		travisToken: 'x';
		gitHubToken: 'y'.
	
	profileEditor := ATDDProfileEditor open.
	self assert: profile travisToken = 'x'.
	self assert: profile gitHubToken = 'y'.
	profileEditor closeWindow