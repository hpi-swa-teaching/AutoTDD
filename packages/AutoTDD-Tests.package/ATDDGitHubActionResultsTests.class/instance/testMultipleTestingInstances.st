tests
testMultipleTestingInstances
	
	self loadComplexRepositoryInClient.
	
	resultsWindow selectedHistory: 14.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: (resultsWindow historyInfo string = ('put correct string here' ) asString).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTestingEntity colorDictionary at: #successful).
	self assert: (resultsWindow jobs size = 3).
	self assert: (resultsWindow jobs first colorAt: 1) = (ATDDTestingEntity colorDictionary at: #successful).
	
	resultsWindow selectedHistory: 12.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: (resultsWindow historyInfo string = ('put correct string here' ) asString).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTestingEntity colorDictionary at: #failure).
	self assert: (resultsWindow jobs size = 3).
	self assert: (resultsWindow jobs first colorAt: 1) = (ATDDTestingEntity colorDictionary at: #failure).
	
	resultsWindow selectedHistory: 3.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: (resultsWindow historyInfo string = ('put correct string here' ) asString).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTestingEntity colorDictionary at: #error).
	self assert: (resultsWindow jobs size = 3).
	self assert: (resultsWindow jobs first colorAt: 1) = (ATDDTestingEntity colorDictionary at: #error).
	
	resultsWindow selectedHistory: 4.
	self assert: (resultsWindow jobs isEmpty).