as yet unclassified
updateLocalState

	| dictionary |
	dictionary := IdentityDictionary newFrom: 
		{	#passed -> [self getPassed.]. 
			#failed -> [self getFail.].
			#unknown -> [self getUnknown.].
			#errored -> [self getError.]}.
	(self localStateButton)
		labelGraphic: (dictionary at: self localState) value;
		extent: (self localStateButton findA: SketchMorph) extent.
	self playSoundForState: self localState