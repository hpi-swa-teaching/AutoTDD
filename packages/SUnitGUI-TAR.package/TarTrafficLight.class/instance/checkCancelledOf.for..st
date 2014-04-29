utility
checkCancelledOf: aTestResult for: aTarResult 
	aTestResult
		ifNil: [ aTarResult cancelled: true.
			aTarResult determineColor; determineText ]