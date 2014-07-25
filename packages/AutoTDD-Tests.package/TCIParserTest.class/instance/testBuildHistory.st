tests
testBuildHistory

	| parser history samples |
	samples := {self sampleRepositoryBuilds. self emptyRepositoryBuilds}.
	parser := TCIParser new.
	samples do: [ :each |
		history := parser parseBuildHistoryOfRepository: each.
		self
			assert: history isArray;
			assert: (history allSatisfy: [ :build |
				(build includesKey: #number) and: [
					build includesKey: #state] and: [
					build includesKey: #branch] ]) ]