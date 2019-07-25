tests
testWorldMenuIntegration
	self flag: #todo "string res".
	TheWorldMenu unregisterOpenCommand: ATDDBrowser baseTitle.
	ATDDBrowser initialize.
	self
		assert: (TheWorldMenu registeredOpenCommands includes: {ATDDBrowser baseTitle. {ATDDBrowser. #open}})
		equals: true