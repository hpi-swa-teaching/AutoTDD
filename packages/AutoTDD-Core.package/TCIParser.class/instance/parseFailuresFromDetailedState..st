parsing
parseFailuresFromDetailedState: aString
	
	^ (aString allRegexMatches: '\d+\s+failures') at: 1 ifAbsent: [ String empty ]