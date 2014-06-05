actions
runSuite: aTestSuite
	self basicRunSuite: aTestSuite do: [ :each | self runTest: each ].
	self updateResults

