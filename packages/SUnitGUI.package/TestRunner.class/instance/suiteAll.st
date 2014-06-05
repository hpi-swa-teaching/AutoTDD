accessing
suiteAll
	^ TestSuite new in: [ :suite |
		classesSelected do: [ :each | 
			each isAbstract 
				ifFalse: [ each addToSuiteFromSelectors: suite ] ].
		suite name: (self label: 'Test' forSuite: suite) ].