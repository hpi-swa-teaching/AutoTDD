tests
testEmptyBuildHistory

	| parser history |
	parser := TravisCIParser new.
	history := parser parseBuildHistoryOfRepository: self emptyRepositoryBuilds.
	self assert: history equals: #()