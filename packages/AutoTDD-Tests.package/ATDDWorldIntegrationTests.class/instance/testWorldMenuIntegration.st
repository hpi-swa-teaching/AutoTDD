tests
testWorldMenuIntegration
	
	"string res"
	self flag: #todo.
	TheWorldMenu unregisterOpenCommand: ATDDBrowser baseTitle.
	ATDDBrowser initialize.
	self
		assert: (TheWorldMenu registeredOpenCommands
			includes: { ATDDBrowser baseTitle . { ATDDBrowser . #open } })
		equals: true