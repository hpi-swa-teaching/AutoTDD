as yet unclassified
parseStateTextFromLog: aString

	^ self parseStateTextFromDetailedState: (self parseDetailedStateFromLog: aString)