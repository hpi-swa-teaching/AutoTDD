accessing
testsFromTestResult: aTestResult
	
	^ OrderedCollection new
		addAll: aTestResult errors;
		addAll: aTestResult failures;
		addAll: aTestResult passed;
		yourself