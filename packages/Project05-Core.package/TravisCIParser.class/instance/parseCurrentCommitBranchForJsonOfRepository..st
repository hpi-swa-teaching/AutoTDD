as yet unclassified
parseCurrentCommitBranchForJsonOfRepository: aJson

	(aJson at: 'commits') ifEmpty: [^ ''].
	^ self parseBranchForJsonOfCommit: (aJson at: 'commits') first