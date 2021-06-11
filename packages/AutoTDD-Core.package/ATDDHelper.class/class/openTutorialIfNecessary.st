accessing
openTutorialIfNecessary

	self HasSeenTutorialPrompt ifFalse: [ self openHelpPrompt ]