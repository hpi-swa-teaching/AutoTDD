utility
hideModule

	self stateButton ifNotNilDo: [ :button | button delete ].
	self extent: 0@0