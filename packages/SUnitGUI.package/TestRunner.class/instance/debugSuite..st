actions
debugSuite: aTestSuite
	self basicRunSuite: aTestSuite do: [ :each | each debug ].