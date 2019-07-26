tests
testMultipleTestingInstances
	
	self loadComplexRepositoryInClient.
	
	resultsWindow selectedHistory: 14.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: (resultsWindow historyInfo string = ('#410 passed', Character cr, Character lf, 'dev - add class comments' ) asString).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTravisStatusResults colorDictionary at: #passed).
	self assert: (resultsWindow jobs size = 3).
	self assert: (resultsWindow jobs first colorAt: 1) = (ATDDTravisStatusResults colorDictionary at: #passed).
	
	resultsWindow selectedHistory: 12.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: (resultsWindow historyInfo string = ('#412 failed', Character cr, Character lf, 'dev - formatted all methods' ) asString).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTravisStatusResults colorDictionary at: #failed).
	self assert: (resultsWindow jobs size = 3).
	self assert: (resultsWindow jobs first colorAt: 1) = (ATDDTravisStatusResults colorDictionary at: #failed).
	
	resultsWindow selectedHistory: 3.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: (resultsWindow historyInfo string = ('#421 canceled', Character cr, Character lf, 'dev - cleaned up core' ) asString).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTravisStatusResults colorDictionary at: #canceled).
	self assert: (resultsWindow jobs size = 3).
	self assert: (resultsWindow jobs first colorAt: 1) = (ATDDTravisStatusResults colorDictionary at: #canceled).
	
	resultsWindow selectedHistory: 4.
	self assert: (resultsWindow jobs isEmpty).