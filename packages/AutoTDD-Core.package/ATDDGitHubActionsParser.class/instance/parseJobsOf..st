primitive-parsing
parseJobsOf: aJson
	
	^ aJson at: 'jobs' ifAbsent: [ JsonObject new ]