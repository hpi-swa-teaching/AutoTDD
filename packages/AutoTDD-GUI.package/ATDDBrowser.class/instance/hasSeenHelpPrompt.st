utilities
hasSeenHelpPrompt
	"Checks whether or not user has seen help prompt"
	
	^ FileStream isAFileNamed: self class helpPromptFileName.