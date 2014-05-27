as yet unclassified
parseCurrentBuildForJsonOfRepository: aJson

	| state message branch number |
	number := self parseCurrentBuildNumberForJsonOfRepository: aJson.
	state := self parseCurrentBuildStatusForJsonOfRepository: aJson.
	message := self parseCurrentCommitMessageForJsonOfRepository: aJson.
	branch := self parseCurrentCommitBranchForJsonOfRepository: aJson.
	^ (IdentityDictionary new)
		at: #number put: number;
		at: #state put: state;
		at: #message put: message;
		at: #branch put: branch;
		yourself