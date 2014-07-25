parsing
parseStateTextFromLog: aString

	^ self parseStateTextFromDetailedState: (self parseDetailedStateFromLog: aString)