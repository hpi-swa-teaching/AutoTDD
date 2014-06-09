morphcreation
createDelegateMorphOn: aTestResultMorph
	| delegateMorph |
	delegateMorph := RectangleMorph new.
	delegateMorph extent: aTestResultMorph extent;
		position: aTestResultMorph position;
		color: Color transparent;
		borderWidth: 0;
		on: #mouseDown send: #mouseDown: to: aTestResultMorph.
	aTestResultMorph addMorph: delegateMorph