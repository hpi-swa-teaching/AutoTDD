as yet unclassified
positionSettingsAt: aPoint

	super positionSettingsAt: aPoint.
	self applyButton ifNotNilDo: [ :button | button position: aPoint + (90 @ 75) ].
	self proOnOffButton ifNotNilDo: [ :button | button position: aPoint + (160 @ 45) ].
	self slugField ifNotNilDo: [ :button | button position: aPoint + (5 @ 95) ].
	self tokenField ifNotNilDo: [ :button | button position: aPoint + (5 @ 120) ]