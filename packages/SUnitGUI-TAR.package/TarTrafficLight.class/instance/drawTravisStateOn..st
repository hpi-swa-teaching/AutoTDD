drawing
drawTravisStateOn: aCanvas 
	| form dictionary image |
	dictionary := IdentityDictionary newFrom: 
		{	#green -> [self passedImage.]. 
			#red -> [self errorImage.].
			#yellow -> [self failImage.].}.
	form :=  (dictionary at: #green) value.
	image := ImageMorph new 
		image: form;
		position: self position + (80@0).		
	aCanvas drawMorph: image.