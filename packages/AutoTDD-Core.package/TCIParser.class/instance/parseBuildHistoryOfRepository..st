parsing
parseBuildHistoryOfRepository: aJson

	| index builds |
	index := 0.
	builds := self primitiveParseBuildsOf: aJson.
	^ builds collect: [ :build |
		index := index + 1.
		(IdentityDictionary new)
			at: #number put: (self primitiveParseNumberOf: build);
			at: #state put: (self primitiveParseStateOf: build);
			at: #id put: (self primitiveParseIdOf: build);
			at: #branch	put: (self parseBranchOfCommitAt: index
				ofCommitsOfRepository: aJson);
			yourself ]