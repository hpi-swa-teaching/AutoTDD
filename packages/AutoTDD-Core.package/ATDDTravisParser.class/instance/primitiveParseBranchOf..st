primitive-parsing
primitiveParseBranchOf: aJson
	
	^ aJson at: 'branch' ifAbsent: [ String empty ]