accessing
testResultFailures
	^ testResultFailures ifNil: [ testResultFailures := Dictionary new ]