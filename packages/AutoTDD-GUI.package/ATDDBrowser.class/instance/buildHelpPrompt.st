building
buildHelpPrompt
	
	| answer |
	
	answer :=  UserDialogBoxMorph confirm: 'Would you like to view a tutorial on ATDD?'  title: 'Input requested'.
	self hasSeenTutorialPrompt: true.
	answer ifTrue: [ HelpBrowser openOn: ATDDHelp ]
	
	
	