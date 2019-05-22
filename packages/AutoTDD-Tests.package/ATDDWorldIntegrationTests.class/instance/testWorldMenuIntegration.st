tests
testWorldMenuIntegration
	self flag: #todo "string res".
	TheWorldMenu unregisterOpenCommand: 'Test Auto Runner'.
	ATDDBrowser initialize.
	self
		assert: (TheWorldMenu registeredOpenCommands includes: {'Test Auto Runner'. {ATDDBrowser. #open}})
		equals: true