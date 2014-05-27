as yet unclassified
parseCurrentBuildOfRepository: aJson

	^ (IdentityDictionary new)
		at: #number put: (self parseCurrentBuildNumberOfRepository: aJson);
		at: #state put: (self parseCurrentBuildStatusOfRepository: aJson);
		at: #message put: (self parseCurrentCommitMessageOfRepository: aJson);
		at: #branch put: (self parseCurrentCommitBranchOfRepository: aJson);
		yourself