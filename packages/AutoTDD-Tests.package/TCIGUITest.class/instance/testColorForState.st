tests
testColorForState

	self assert: (self possibleBuildStates allSatisfy: [ :state | 
		(sut convertColorForState: state) isColor])