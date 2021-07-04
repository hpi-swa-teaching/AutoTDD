tests
testConfiguration
	
	profileEditor := ATDDProfileEditor open.
	profileEditor travisToken: '1234'.
	profileEditor gitHubToken: '5678'.
	self assert: profileEditor travisToken = '1234'.
	self assert: profileEditor gitHubToken = '5678'.
	profileEditor closeWindow
