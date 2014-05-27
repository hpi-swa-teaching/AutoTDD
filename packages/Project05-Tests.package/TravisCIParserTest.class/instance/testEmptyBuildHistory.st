tests
testEmptyBuildHistory

	| parser history |
	parser := TravisCIParser new.
	history := parser parseBuildHistoryForJsonOfRepository: self emptyRepositoryBuilds.
	self assert: history equals: #('Not built yet')