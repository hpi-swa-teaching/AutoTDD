morphcreation
createTestResultMorphWithOffset: anOffset colored: aColor
	
	^ RectangleMorph new
		color: aColor;
		position: self topRight + ( -1 @ ((self height - 1) * anOffset));
		borderWidth: 1;
		borderColor: self class darkGray;
		yourself