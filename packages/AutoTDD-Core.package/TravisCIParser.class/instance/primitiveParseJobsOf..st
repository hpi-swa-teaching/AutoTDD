primitive-parsing
primitiveParseJobsOf: aJson

	^ aJson at: 'jobs' ifAbsent: [ Array new ]