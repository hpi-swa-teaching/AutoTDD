as yet unclassified
update

	self stateButton ifNotNilDo: [ :button |
		button
			labelGraphic: (self tl loadImageAt: (self imageDictionary at: self state) value) value;
			extent: (button findA: SketchMorph) extent.
		(self state ~= self previousState) ifTrue: [
			self tl playSoundForState: self state ].
		self previousState: self state.
		self tl center: button at: self topCenter + (0 @ 30) ].
	self tl changed