parsing
parseCommitMessageAt: aNumber ofRepository: aJson
	
	| commits |
	
	commits := self primitiveParseCommitsOf: aJson.
	
	^ self primitiveParseMessageOf: (self
		primitiveParseAt: aNumber
		of: commits)