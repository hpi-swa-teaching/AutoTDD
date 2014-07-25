as yet unclassified
positionSettingsAt: aPoint

	self onOffButton ifNotNilDo: [ :button | button position: aPoint + self onOffButtonPosition ]