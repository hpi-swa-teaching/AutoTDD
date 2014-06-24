as yet unclassified
updateExtent

	self extent: self fullExtent.
	self positionButtons.
	self settingsVisible ifTrue: [ self modules do: [ :each |
			each positionSettingsAt: self settingsPosition ] ]