as yet unclassified
update

	self button ifNotNilDo: [ :button |
		button
			labelGraphic: (self owner loadImageAt: (self imageDictionary at: self state) value) value;
			extent: (button findA: SketchMorph) extent.
		(self state ~= self previousState) ifTrue: [
			self owner playSoundForState: self state ].
		self previousState: self state.
		self owner center: button at: (self owner position + (self axis @ 30)) ]