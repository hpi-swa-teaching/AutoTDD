morphcreation
createFailureResultMorphWithOffset: anOffset colored: aColor
	
	^ (self createTestResultMorphWithOffset: anOffset colored: aColor)
		on: #mouseDown send: #testResultFailureMorphClicked:forMorph: to: self;
		yourself