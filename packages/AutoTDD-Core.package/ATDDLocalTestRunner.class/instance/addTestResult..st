as yet unclassified
addTestResult: aTestResult
	self testResults addFirst: aTestResult.
	self updateWatcherStatus.
	self notify