as yet unclassified
primitiveParseJobsOf: aJson

	^ aJson at: 'jobs' ifAbsent: [ Array new ]