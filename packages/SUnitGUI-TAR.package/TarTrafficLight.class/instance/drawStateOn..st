drawing
drawStateOn: aCanvas 
	| form dictionary image |
	dictionary := IdentityDictionary newFrom: 
		{	#green -> [self passedImage.]. 
			#red -> [self failImage.].
			#yellow -> [self errorImage.].}.
	form :=  (dictionary at: self testStatus) value.
	image := ImageMorph new 
		image: form;
		position: self position + (25@50).		
	aCanvas drawMorph: image.