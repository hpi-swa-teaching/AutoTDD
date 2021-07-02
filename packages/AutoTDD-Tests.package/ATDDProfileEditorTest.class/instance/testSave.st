running
testSave
	
	profile
		travisToken: 'x';
		gitHubToken: 'y'.
	
	profileEditor := ATDDProfileEditor open.
	profileEditor travisToken: '1234'.
	profileEditor gitHubToken: '5678'.
	profileEditor save.
	
	self assert: profile travisToken = '1234'.
	self assert: profile gitHubToken = '5678'.
	
	anotherProfileEditor := ATDDProfileEditor open.
	self assert: anotherProfileEditor travisToken = '1234'.
	self assert: anotherProfileEditor gitHubToken = '5678'.
	anotherProfileEditor closeWindow