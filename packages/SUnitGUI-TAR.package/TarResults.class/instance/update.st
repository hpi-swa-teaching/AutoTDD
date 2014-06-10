as yet unclassified
update

	self process isTerminated
		ifFalse: [ self process terminate.
			self createTrafficLightResultFor: nil ].
	self runTests