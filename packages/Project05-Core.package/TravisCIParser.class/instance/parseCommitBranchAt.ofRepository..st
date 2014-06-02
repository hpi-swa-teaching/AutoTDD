as yet unclassified
parseCommitBranchAt: aNumber ofRepository: aJson

	| commits |
	commits := self primitiveParseCommitsOf: aJson.
	^ self primitiveParseBranchOf: (self primitiveParseAt: aNumber of: commits)