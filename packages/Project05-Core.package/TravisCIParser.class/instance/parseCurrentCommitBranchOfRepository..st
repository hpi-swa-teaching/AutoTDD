as yet unclassified
parseCurrentCommitBranchOfRepository: aJson

	| commits |
	commits := self parseCommitsOfRepository: aJson.
	commits ifEmpty: [^ ''].
	^ self parseBranchOfCommit: commits first