accessing
ciTestRunner
	^ ciTestRunner ifNil: [ciTestRunner := ATDDNullTestRunner new]