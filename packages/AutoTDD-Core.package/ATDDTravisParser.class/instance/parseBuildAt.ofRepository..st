parsing
parseBuildAt: aNumber ofRepository: aJson
	
	^ IdentityDictionary new
		at: #number put: (self parseBuildNumberAt: aNumber ofRepository: aJson);
		at: #state put: (self parseBuildStateAt: aNumber ofRepository: aJson);
		at: #message put: (self parseCommitMessageAt: aNumber ofRepository: aJson);
		at: #branch put: (self parseCommitBranchAt: aNumber ofRepository: aJson);
		yourself