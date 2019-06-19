tests
testProgressSettingNil
	testrunner progress: nil.
	self assert: testrunner progress contents equals: 0.0