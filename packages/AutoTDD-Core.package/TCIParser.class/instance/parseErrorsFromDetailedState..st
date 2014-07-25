as yet unclassified
parseErrorsFromDetailedState: aString
	
	^ (aString allRegexMatches: '\d+\s+errors') at: 1 ifAbsent: [ String empty ]