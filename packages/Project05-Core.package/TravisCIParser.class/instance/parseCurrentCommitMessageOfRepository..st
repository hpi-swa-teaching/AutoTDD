as yet unclassified
parseCurrentCommitMessageOfRepository: aJson

	| commits |
	commits := self parseCommitsOfRepository: aJson.
	commits ifEmpty: [^ ''].
	^ self parseMessageOfCommit: commits first