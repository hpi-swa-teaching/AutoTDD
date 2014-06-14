as yet unclassified
updateTravisState

	| dictionary |
	dictionary := IdentityDictionary newFrom: 
		{	#passed -> [ #passed ]. 
			#failed -> [ #errored ].
			#created -> [ #failed ].
			#started -> [ #failed ].
			#unknown -> [ #unknown ].
			#canceled -> [ #unknown ].
			#errored -> [ #unknown ]}.
	self travisStateButton ifNotNil: [
		self travisStateButton
			labelGraphic: (self loadImageAt: (dictionary at: self travisState) value);
			extent: (self travisStateButton findA: SketchMorph) extent.
		(self travisState ~= self previousTravisState) ifTrue: [
			self playSoundForState: self travisState ].
		self previousTravisState: self travisState.
		self center: self travisStateButton at: (self position + (self travisAxis @ 30)) ]