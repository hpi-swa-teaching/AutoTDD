drawing
drawTravisStateOn: aCanvas 
	| form dictionary image |
	dictionary := IdentityDictionary newFrom: 
		{	#passed -> [self getPassed.]. 
			#failed -> [self getFail.].
			#created -> [self getError.].
			#started -> [self getError.].
			#unknown -> [self getUnknown.].
			#canceled -> [self getUnknown.].
			#errored -> [self getUnknown.]}.
	self useTravis ifTrue: [form :=  (dictionary at: self state) value.]
	ifFalse: [form :=  (dictionary at: #unknown) value.].
	image := ImageMorph new 
		image: form;
		position: self position + (105@50).		
	aCanvas drawMorph: image.