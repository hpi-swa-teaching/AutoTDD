tests
testWorldMenuIntegration
	
	TheWorldMenu unregisterOpenCommand: ATDDBrowser baseTitle.
	ATDDBrowser initialize.
	self
		assert: (TheWorldMenu registeredOpenCommands
			includes: { ATDDBrowser baseTitle . { ATDDBrowser . #open } })