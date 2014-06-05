event handling
categoryChanged
	self process isTerminated
		ifFalse: [ self process terminate.
			self createTrafficLightResultFor: nil ].
	self runTests