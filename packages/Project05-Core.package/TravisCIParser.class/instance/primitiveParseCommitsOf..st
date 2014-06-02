as yet unclassified
primitiveParseCommitsOf: aJson

	^ aJson at: 'commits' ifAbsent: [ Array new ]