updating
updateTests
	
	| test |
	
	test := self parser
		parseResultAt: self selectedHistory
		of: self testResults.
	self
		testsUnformatted: (self testsFromTestResult: test);
		tests: (self
				testsFormattedFromTests: self testsUnformatted
				withinTestResult: test);
		selectedTest: 0;
		changed: #tests;
		changed: #selectedTest