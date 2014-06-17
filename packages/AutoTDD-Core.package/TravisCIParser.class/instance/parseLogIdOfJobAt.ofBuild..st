parsing
parseLogIdOfJobAt: aNumber ofBuild: aJson

	| jobs job |
	jobs := self primitiveParseJobsOf: aJson.
	job := self primitiveParseAt: aNumber of: jobs.
	^ self primitiveParseLogIdOf: job