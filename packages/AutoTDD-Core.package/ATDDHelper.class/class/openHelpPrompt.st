action
openHelpPrompt

	| answer |
	
	answer :=  UserDialogBoxMorph confirm: 'Would you like to view a tutorial on AutoTDD?'  title: 'Input requested'.
	self HasSeenTutorialPrompt: true.
	answer ifTrue: [ HelpBrowser openOn: ATDDHelp ]
