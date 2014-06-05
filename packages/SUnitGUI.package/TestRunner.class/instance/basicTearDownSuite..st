processing
basicTearDownSuite: aTestSuite
	aTestSuite resources do: [ :each | each reset ].