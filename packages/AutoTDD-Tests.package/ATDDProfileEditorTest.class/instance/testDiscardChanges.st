running
testDiscardChanges
	
	profile
		travisToken: 'x';
		gitHubToken: 'y'.
	
	profileEditor := ATDDProfileEditor open.
	profileEditor travisToken: '1234'.
	profileEditor gitHubToken: '5678'.
	profileEditor closeWindow.
	
	self assert: profile travisToken = 'x'.
	self assert: profile gitHubToken = 'y'.
	profileEditor closeWindow