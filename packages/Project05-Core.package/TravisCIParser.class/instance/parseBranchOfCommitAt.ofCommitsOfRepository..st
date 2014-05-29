as yet unclassified
parseBranchOfCommitAt: aNumber ofCommitsOfRepository: aJson

	^ self parseBranchOfCommit: ((self parseCommitsOfRepository: aJson) at: aNumber)