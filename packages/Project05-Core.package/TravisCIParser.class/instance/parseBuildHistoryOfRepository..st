as yet unclassified
parseBuildHistoryOfRepository: aJson

	| index builds |
	index := 0.
	builds := self parseBuildsOfRepository: aJson.
	builds ifEmpty: [^ #() ].
	^ builds collect: [ :build |
		index := index + 1.
		(IdentityDictionary new)
			at: #number put: (self parseNumberOfBuild: build);
			at: #state put: (self parseStateOfBuild: build);
			at: #id put: (self parseIdOfBuild: build);
			at: #branch	put: (self parseBranchOfCommitAt: index
				ofCommitsOfRepository: aJson);
			yourself ]