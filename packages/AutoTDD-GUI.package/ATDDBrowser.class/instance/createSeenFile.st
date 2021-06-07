utilities
createSeenFile
	| fileStream |
	
	fileStream := FileStream fileNamed: self class helpPromptFileName.
	fileStream close.
