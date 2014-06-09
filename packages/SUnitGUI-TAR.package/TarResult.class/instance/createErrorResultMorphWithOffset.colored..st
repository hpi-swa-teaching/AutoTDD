morphcreation
createErrorResultMorphWithOffset: anOffset colored: aColor
	
	^ (self createTestResultMorphWithOffset: anOffset colored: aColor)
		on: #mouseDown send: #testResultErrorMorphClicked:forMorph: to: self;
		yourself