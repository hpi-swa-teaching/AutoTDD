drawing
drawTravisStateOn: aCanvas 
	| form dictionary image |
	dictionary := IdentityDictionary newFrom: 
		{	#green -> [self passedImage.]. 
			#red -> [self failImage.].
			#yellow -> [self errorImage.].
			#grey -> [self unknownImage.]}.
	form :=  (dictionary at: #grey) value.
	image := ImageMorph new 
		image: form;
		position: self position + (90@45).		
	aCanvas drawMorph: image.