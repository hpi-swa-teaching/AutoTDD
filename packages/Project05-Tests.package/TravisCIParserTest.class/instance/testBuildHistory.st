tests
testBuildHistory

	| parser history |
	parser := TravisCIParser new.
	history := parser parseBuildHistoryOfRepository: self sampleRepositoryBuilds.
	self
		assert: history isArray;
		assert: (history allSatisfy: [ :build |
			(build includesKey: #number) and: [
				build includesKey: #state] and: [
				build includesKey: #branch] ])