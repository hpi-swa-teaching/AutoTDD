tests
testTestResultsSettingNil
	
	testrunner testResults: nil.
	self assert: testrunner testResults notNil