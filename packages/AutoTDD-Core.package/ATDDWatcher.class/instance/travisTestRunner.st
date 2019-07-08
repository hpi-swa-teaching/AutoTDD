accessing
travisTestRunner
	^ travisTestRunner ifNil: [ travisTestRunner := ATDDNullTestRunner instance ]