as yet unclassified
primitiveParseBranchOf: aJson

	^ aJson at: 'branch' ifAbsent: [ '' ]