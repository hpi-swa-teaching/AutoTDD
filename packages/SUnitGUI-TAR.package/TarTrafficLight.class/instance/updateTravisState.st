as yet unclassified
updateTravisState

	| dictionary |
	dictionary := IdentityDictionary newFrom: 
		{	#passed -> [self getPassed.]. 
			#failed -> [self getError.].
			#created -> [self getFail.].
			#started -> [self getFail.].
			#unknown -> [self getUnknown.].
			#canceled -> [self getUnknown.].
			#errored -> [self getUnknown.]}.
	(self travisStateButton)
		labelGraphic: (dictionary at: self travisState) value;
		extent: (self travisStateButton findA: SketchMorph) extent