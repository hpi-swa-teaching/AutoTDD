as yet unclassified
parseStateTextFromDetailedState: aString

	(self parseNumberOfErrorsFromDetailedState: aString) strictlyPositive 
		ifTrue: [ ^ self parseErrorsFromDetailedState: aString ].
	(self parseNumberOfFailuresFromDetailedState: aString) strictlyPositive 
		ifTrue: [ ^ self parseFailuresFromDetailedState: aString ].
	(self parseNumberOfPassesFromDetailedState: aString) strictlyPositive 
		ifTrue: [ ^ self parsePassesFromDetailedState: aString ].
	^ String empty