tests
testTestsMixed
	
	| resultMixed |
	
	watcher categoriesToTest: #( #'AutoTDD-Dummy-Success-Tests' #'AutoTDD-Dummy-Failure-Tests' #'AutoTDD-Dummy-Error-Tests' ).
	watcher classesToTest: { TestRunnerDummy21Test . TestRunnerDummy1Test . TestRunnerDummyError1Test } asSet.
	watcher run.
	(Delay forSeconds: 1) wait.
	resultMixed := resultsWindow history first.
	self assert: (resultMixed isKindOf: Text).
	self assert: (resultMixed colorAt: 1) = (ATDDWatcherResults colorDictionary at: #errored).
	resultsWindow selectedHistory: 1.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: ('3 run*, 1 passes, 0 expected failures, 1 failures, 1 errors, 0 unexpected passes'
		match: resultsWindow historyInfo).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDWatcherResults colorDictionary at: #errored).
	self assert: resultsWindow tests size = 3.
	self assert: (resultsWindow tests first colorAt: 1) = (ATDDWatcherResults colorDictionary at: #errored).
	self assert: ((resultsWindow tests at: 2) colorAt: 1) = (ATDDWatcherResults colorDictionary at: #failed).
	self assert: ((resultsWindow tests at: 3) colorAt: 1) = (ATDDWatcherResults colorDictionary at: #passed)