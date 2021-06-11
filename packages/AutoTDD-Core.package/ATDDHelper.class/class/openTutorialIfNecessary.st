action
openTutorialIfNecessary

	self HasSeenTutorialPrompt ifFalse: [ self openHelpPrompt ]