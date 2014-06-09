morphcreation
createTestResultMorphWithOffset: aOffset colored: aColor
	| testResultMorph |
	testResultMorph := RectangleMorph new.
	testResultMorph color: aColor;
		position: self position + ((self width - 1)@(20*aOffset));
		borderWidth: 1;
		borderColor: self darkGray;
		on: #mouseDown send: #testResultFailureMorphClicked:forMorph: to: self.
	^ testResultMorph