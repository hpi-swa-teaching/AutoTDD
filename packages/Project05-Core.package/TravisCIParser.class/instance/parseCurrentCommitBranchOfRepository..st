as yet unclassified
parseCurrentCommitBranchOfRepository: aJson

	| commits |
	commits := self primitiveParseCommitsOf: aJson.
	^ self primitiveParseBranchOf: (self primitiveFirstOf: commits)