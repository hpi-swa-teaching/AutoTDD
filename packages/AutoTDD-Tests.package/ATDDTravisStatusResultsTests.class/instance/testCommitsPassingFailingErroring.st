tests
testCommitsPassingFailingErroring

	self loadSimpleRepositoryInClient.
	
	resultsWindow selectedHistory: 19.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: (resultsWindow historyInfo string = ('#42 passed', Character cr, Character lf, 'master - Baseline again' ) asString).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTestingEntity colorDictionary at: #successful).
	
	resultsWindow selectedHistory: 1.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: (resultsWindow historyInfo string = ('#60 failed', Character cr, Character lf, 'master - Sound for Status Change added' ) asString).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTestingEntity colorDictionary at: #failure).
	
	resultsWindow selectedHistory: 23.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: (resultsWindow historyInfo string = ('#38 errored', Character cr, Character lf, 'master - Added JSON to Baseline' ) asString).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTestingEntity colorDictionary at: #error).