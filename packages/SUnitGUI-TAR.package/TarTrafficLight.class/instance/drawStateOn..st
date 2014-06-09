drawing
drawStateOn: aCanvas

	| form dictionary |
	dictionary := IdentityDictionary newFrom: 
		{	#green -> [self getPassed.]. 
			#red -> [self getError.].
			#yellow -> [self getFail.].}.
	form :=  (dictionary at: self testStatus) value.
	aCanvas translucentImage: form at: self position + (25@50)