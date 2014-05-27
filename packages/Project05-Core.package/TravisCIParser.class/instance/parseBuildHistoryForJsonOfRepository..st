as yet unclassified
parseBuildHistoryForJsonOfRepository: aJson

	| index |
	index := 0.
	(aJson at: 'builds') ifEmpty: [^ #() ].
	^ (aJson at: 'builds') collect: [ :build |
		index := index + 1.
		(IdentityDictionary new)
			at: #number put: (self parseNumberForJsonOfBuild: build);
			at: #state put: (self parseStateForJsonOfBuild: build);
			at: #branch	put:
				(self parseBranchForJsonOfCommit: ((aJson at: 'commits') at: index));
			yourself ]