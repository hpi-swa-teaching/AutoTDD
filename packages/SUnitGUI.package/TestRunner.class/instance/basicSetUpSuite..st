processing
basicSetUpSuite: aTestSuite
	aTestSuite resources do: [ :each |
		each isAvailable
			ifFalse: [ each signalInitializationError ] ].