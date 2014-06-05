drawing
drawTravisStateOn: aCanvas 
	| form dictionary image |
	dictionary := IdentityDictionary newFrom: 
		{	#passed -> [self passedImage.]. 
			#failed -> [self failImage.].
			#created -> [self errorImage.].
			#started -> [self errorImage.].
			#unknown -> [self unknownImage.].
			#canceled -> [self unknownImage.].
			#errored -> [self unknownImage.]}.
	self useTravis ifTrue: [form :=  (dictionary at: self state) value.]
	ifFalse: [form :=  (dictionary at: #unknown) value.].
	image := ImageMorph new 
		image: form;
		position: self position + (90@45).		
	aCanvas drawMorph: image.