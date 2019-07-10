accessing
CITestRunner
	^ CITestRunner ifNil: [ CITestRunner := ATDDNullTestRunner instance ]