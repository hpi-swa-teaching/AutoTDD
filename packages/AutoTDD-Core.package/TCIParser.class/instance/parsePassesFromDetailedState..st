parsing
parsePassesFromDetailedState: aString

	^ (aString allRegexMatches: '\d+\s+\passes') at: 1 ifAbsent: [ String empty ]