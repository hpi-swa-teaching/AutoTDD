drawing
drawStateOn: aCanvas 
	| form dictionary image |
	dictionary := IdentityDictionary newFrom: 
		{	#green -> [self passedImage.]. 
			#red -> [self errorImage.].
			#yellow -> [self failImage.].}.
	form :=  (dictionary at: self testStatus) value.
	image := ImageMorph new 
		image: form;
		position: self position + (40@0).		
	aCanvas drawMorph: image.