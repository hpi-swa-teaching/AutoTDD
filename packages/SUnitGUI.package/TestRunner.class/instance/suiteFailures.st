accessing
suiteFailures
	^ TestSuite new in: [ :suite |
		suite 
			addTests: failedList; 
			name: (self label: 'Failure' forSuite: suite) ].