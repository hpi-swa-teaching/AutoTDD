as yet unclassified
parseBuildMatrixOfBuild: aJson

	| jobs |
	jobs := self primitiveParseJobsOf: aJson.
	^ jobs collect: [ :job |
		(IdentityDictionary new)
			at: #state put: (self primitiveParseStateOf: job);
			at: #env put: (self parseEnvOfJob: job);
			yourself ]