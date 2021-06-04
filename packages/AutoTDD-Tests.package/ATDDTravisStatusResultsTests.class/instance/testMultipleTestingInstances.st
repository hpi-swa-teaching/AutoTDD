tests
testMultipleTestingInstances
	
	self loadComplexRepositoryInClient.
	
	resultsWindow selectedHistory: 14.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: (resultsWindow historyInfo string = ('#410 passed', Character cr, Character lf, 'dev - add class comments' ) asString).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTestingEntity colorDictionary at: #successful).
	self assert: (resultsWindow jobs size = 3).
	self assert: (resultsWindow jobs first colorAt: 1) = (ATDDTestingEntity colorDictionary at: #successful).
	
	resultsWindow selectedHistory: 12.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: (resultsWindow historyInfo string = ('#412 failed', Character cr, Character lf, 'dev - formatted all methods' ) asString).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTestingEntity colorDictionary at: #failure).
	self assert: (resultsWindow jobs size = 3).
	self assert: (resultsWindow jobs first colorAt: 1) = (ATDDTestingEntity colorDictionary at: #failure).
	
	resultsWindow selectedHistory: 3.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: (resultsWindow historyInfo string = ('#421 canceled', Character cr, Character lf, 'dev - cleaned up core' ) asString).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTestingEntity colorDictionary at: #error).
	self assert: (resultsWindow jobs size = 3).
	self assert: (resultsWindow jobs first colorAt: 1) = (ATDDTestingEntity colorDictionary at: #error).
	
	resultsWindow selectedHistory: 4.
	self assert: (resultsWindow jobs isEmpty).