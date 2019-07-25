tests
testHistoryPassingFailingErroring
	
	| resultPassed resultFailed resultErrored |
	
	watcher run.
	(Delay forSeconds: 1) wait.
	resultPassed := resultsWindow history first.
	self assert: (resultPassed isKindOf: Text).
	self assert: (resultPassed colorAt: 1) = (ATDDWatcherResults colorDictionary at: #passed).
	watcher categoriesToTest: #( #'AutoTDD-Dummy-Failure-Tests' ).
	watcher classesToTest: { TestRunnerDummy1Test . TestRunnerDummy2Test . TestRunnerDummy3Test } asSet.
	watcher run.
	(Delay forSeconds: 1) wait.
	resultFailed := resultsWindow history first.
	self assert: (resultFailed isKindOf: Text).
	self assert: (resultFailed colorAt: 1) = (ATDDWatcherResults colorDictionary at: #failed).
	watcher categoriesToTest: #( #'AutoTDD-Dummy-Error-Tests' ).
	watcher classesToTest: { TestRunnerDummyError1Test . TestRunnerDummyError2Test . TestRunnerDummyError3Test } asSet.
	watcher run.
	(Delay forSeconds: 1) wait.
	resultErrored := resultsWindow history first.
	self assert: (resultErrored isKindOf: Text).
	self assert: (resultErrored colorAt: 1) = (ATDDWatcherResults colorDictionary at: #errored)