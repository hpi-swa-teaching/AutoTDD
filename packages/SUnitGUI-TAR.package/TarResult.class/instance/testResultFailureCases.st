accessing
testResultFailureCases
	^ testResultFailureCases ifNil: [ testResultFailureCases := Dictionary new ]