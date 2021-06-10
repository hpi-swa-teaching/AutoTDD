building
buildHelpPrompt
	"comment stating purpose of message"
	| answer |
	
	answer :=  UserDialogBoxMorph confirm: 'Would you like to view a tutorial on ATDD?'  title: 'Input requested'.
	answer ifTrue: [ HelpBrowser openOn: ATDDHelp  ].	
	
	
	