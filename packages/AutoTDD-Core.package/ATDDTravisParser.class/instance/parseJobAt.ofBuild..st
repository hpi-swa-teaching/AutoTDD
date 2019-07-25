parsing
parseJobAt: aNumber ofBuild: aJson

	| jobs |
	jobs := self primitiveParseJobsOf: aJson.
	^ self primitiveParseAt: aNumber of: jobs