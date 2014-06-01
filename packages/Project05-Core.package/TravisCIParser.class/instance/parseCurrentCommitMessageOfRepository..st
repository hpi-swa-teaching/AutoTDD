as yet unclassified
parseCurrentCommitMessageOfRepository: aJson

	| commits |
	commits := self primitiveParseCommitsOf: aJson.
	^ self primitiveParseMessageOf: (self primitiveFirstOf: commits)