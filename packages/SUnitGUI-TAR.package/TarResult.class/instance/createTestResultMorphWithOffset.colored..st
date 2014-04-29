morphcreation
createTestResultMorphWithOffset: aOffset colored: aColor
	| testResultMorph |
	testResultMorph := RectangleMorph new.
	testResultMorph color: aColor;
		position: self position + ((self width)@(20*aOffset));
		on: #mouseDown send: #testResultFailureMorphClicked:forMorph: to: self.
	^ testResultMorph