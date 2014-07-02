as yet unclassified
parseStateTextFromDetailedState: aString

	((self parseNumberOfErrorsFromDetailedState: aString) > 0) 
		ifTrue: [^self parseErrorsFromDetailedState: aString].
	((self parseNumberOfFailuresFromDetailedState: aString) > 0) 
		ifTrue: [^self parseFailuresFromDetailedState: aString].
	((self parseNumberOfPassesFromDetailedState: aString) > 0) 
		ifTrue: [^self parsePassesFromDetailedState: aString].
	^ ''