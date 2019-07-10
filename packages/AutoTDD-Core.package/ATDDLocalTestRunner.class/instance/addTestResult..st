action
addTestResult: aTestResult
	self testResults addFirst: aTestResult.
	self updateWatcherStatus