tests
testCommitsPassingFailingErroring

	self loadSimpleRepositoryInClient.
	
	resultsWindow selectedHistory: 19.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: (resultsWindow historyInfo string = ('match correct string' ) asString).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTestingEntity colorDictionary at: #successful).
	
	resultsWindow selectedHistory: 1.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: (resultsWindow historyInfo string = ('match correct string' ) asString).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTestingEntity colorDictionary at: #failure).
	
	resultsWindow selectedHistory: 23.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: (resultsWindow historyInfo string = ('match correct string' ) asString).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTestingEntity colorDictionary at: #error).