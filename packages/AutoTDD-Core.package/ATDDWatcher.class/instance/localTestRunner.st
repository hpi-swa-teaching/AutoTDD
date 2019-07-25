accessing
localTestRunner
	
	^ localTestRunner ifNil: [localTestRunner := ATDDNullTestRunner instance ]