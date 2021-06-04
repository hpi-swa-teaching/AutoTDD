tests
testTestsPassingFailingErroring
	
	self flag: #todo.
	"Split into multiple tests?"
	watcher run.
	(Delay forSeconds: 1) wait.
	resultsWindow selectedHistory: 1.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: ('2 run*, 2 passes, 0 expected failures, 0 failures, 0 errors, 0 unexpected passes'
		match: resultsWindow historyInfo).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTestingEntity colorDictionary at: #successful).
	self assert: resultsWindow tests size = 2.
	self assert: (resultsWindow tests first colorAt: 1) = (ATDDTestingEntity colorDictionary at: #successful).
	watcher categoriesToTest: #( #'AutoTDD-Dummy-Failure-Tests' ).
	watcher classesToTest: { TestRunnerDummy1Test . TestRunnerDummy2Test . TestRunnerDummy3Test } asSet.
	watcher run.
	(Delay forSeconds: 1) wait.
	resultsWindow selectedHistory: 1.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: ('3 run*, 0 passes, 0 expected failures, 3 failures, 0 errors, 0 unexpected passes'
		match: resultsWindow historyInfo).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTestingEntity colorDictionary at: #failure).
	self assert: resultsWindow tests size = 3.
	self assert: ((resultsWindow tests at: 2) colorAt: 1) = (ATDDTestingEntity colorDictionary at: #failure).
	watcher categoriesToTest: #( #'AutoTDD-Dummy-Error-Tests' ).
	watcher classesToTest: { TestRunnerDummyError1Test . TestRunnerDummyError2Test . TestRunnerDummyError3Test } asSet.
	watcher run.
	(Delay forSeconds: 1) wait.
	resultsWindow selectedHistory: 1.
	self assert: (resultsWindow historyInfo isKindOf: Text).
	self assert: ('3 run*, 0 passes, 0 expected failures, 0 failures, 3 errors, 0 unexpected passes'
		match: resultsWindow historyInfo).
	self assert: (resultsWindow historyInfo colorAt: 1) = (ATDDTestingEntity colorDictionary at: #error).
	self assert: resultsWindow tests size = 3.
	self assert: (resultsWindow tests last colorAt: 1) = (ATDDTestingEntity colorDictionary at: #error)