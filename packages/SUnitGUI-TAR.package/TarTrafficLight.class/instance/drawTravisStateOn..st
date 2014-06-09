drawing
drawTravisStateOn: aCanvas

	| form dictionary |
	dictionary := IdentityDictionary newFrom: 
		{	#passed -> [self getPassed.]. 
			#failed -> [self getError.].
			#created -> [self getFail.].
			#started -> [self getFail.].
			#unknown -> [self getUnknown.].
			#canceled -> [self getUnknown.].
			#errored -> [self getUnknown.]}.
	self useTravis ifTrue: [form :=  (dictionary at: self state) value.]
	ifFalse: [form :=  (dictionary at: #unknown) value.].
	aCanvas translucentImage: form at: self position + (112@50)