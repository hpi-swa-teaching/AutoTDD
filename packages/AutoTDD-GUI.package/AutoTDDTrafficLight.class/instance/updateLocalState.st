as yet unclassified
updateLocalState

	self localStateButton ifNotNil: [
		self localStateButton
			labelGraphic: (self loadImageAt: self localState) value;
			extent: (self localStateButton findA: SketchMorph) extent.
		(self localState ~= self previousLocalState) ifTrue: [
			self playSoundForState: self localState ].
		self previousLocalState: self localState.
		self center: self localStateButton at: (self position + (self localAxis @ 30)) ]