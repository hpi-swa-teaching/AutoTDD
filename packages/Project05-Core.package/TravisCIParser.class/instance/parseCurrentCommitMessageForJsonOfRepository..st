as yet unclassified
parseCurrentCommitMessageForJsonOfRepository: aJson

	(aJson at: 'commits') ifEmpty: [^ ''].
	^ self parseMessageForJsonOfCommit: (aJson at: 'commits') first