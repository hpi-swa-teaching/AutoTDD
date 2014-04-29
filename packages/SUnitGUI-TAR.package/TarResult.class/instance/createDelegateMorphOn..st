morphcreation
createDelegateMorphOn: aTestResultMorph
	| delegateMorph |
	delegateMorph := RectangleMorph new.
	delegateMorph extent: aTestResultMorph extent;
		position: aTestResultMorph position;
		color: Color transparent;
		on: #mouseDown send: #mouseDown: to: aTestResultMorph.
	aTestResultMorph addMorph: delegateMorph