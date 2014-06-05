processing
basicRunSuite: aTestSuite do: aBlock

	self basicSetUpSuite: aTestSuite.
	[ 
		| prefix |
		prefix := aTestSuite name isEmptyOrNil
			ifTrue: [ '' ]
			ifFalse: [ aTestSuite name, ' - ' ].
		aTestSuite tests 
			do: aBlock
			displayingProgress: [ :test | prefix, test printString ]
			every: 0 "Update the label for all tests" ]
		ensure: [ self basicTearDownSuite: aTestSuite ].
	