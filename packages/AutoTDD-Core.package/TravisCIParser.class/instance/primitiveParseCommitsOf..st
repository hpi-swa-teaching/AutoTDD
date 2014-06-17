primitive-parsing
primitiveParseCommitsOf: aJson

	^ aJson at: 'commits' ifAbsent: [ Array new ]