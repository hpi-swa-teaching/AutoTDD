adding
addTestResult: aTestResult
	self addFailures: aTestResult;
		addErrors: aTestResult;
		testResult: aTestResult;
		checkPredecessorTestResults;
		determineColor;
		determineText