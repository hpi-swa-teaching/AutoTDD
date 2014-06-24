tests
testValues

	self assert: sut tests size equals: sut data results last runCount.
	1 to: sut data results last runCount do: [ :i | 
		self assert: (sut tests at: i) asString equals: (sut matrix at: i) asString ]