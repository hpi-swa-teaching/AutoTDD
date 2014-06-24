as yet unclassified
updateExtent

	| settingsExtent |
	settingsExtent := self settingsVisible
		ifTrue: [ self class settingsExtent ]
		ifFalse: [ 0 @ 0 ].
	self extent: (self baseExtent + (settingsExtent x @ 0)).
	self positionButtons.
	self settingsVisible ifTrue: [ self modules do: [ :each |
			each positionSettingsAt: self settingsPosition ] ]