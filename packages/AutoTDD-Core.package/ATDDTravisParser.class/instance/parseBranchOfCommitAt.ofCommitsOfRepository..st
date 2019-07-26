parsing
parseBranchOfCommitAt: aNumber ofCommitsOfRepository: aJson
	
	| commit commits |
	
	commits := self primitiveParseCommitsOf: aJson.
	commit := self primitiveParseAt: aNumber of: commits.
	
	^ self primitiveParseBranchOf: commit