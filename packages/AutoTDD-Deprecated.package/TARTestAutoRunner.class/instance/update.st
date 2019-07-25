updating
update
	
	self process isTerminated
		ifFalse: [
			self process terminate.
			self addResult: TestResult new ].
	self runTests