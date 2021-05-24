primitive-parsing
primitiveParseHeadBranchOf: aJson
	
	^ aJson at: 'head_branch'  ifAbsent: [ String empty ]