accessing
suiteErrors
	^ TestSuite new in: [ :suite |
		suite 
			addTests: errorList; 
			name: (self label: 'Error' forSuite: suite) ].