utility
positionSettingsAt: aPoint
	
	| morphs |
	
	super positionSettingsAt: aPoint.
	morphs := { { self applyButton . 90 @ 75 } . 
		{ self proOnOffButton . 160 @ 45 } . { self slugField . 5 @ 95 } . 
		{ self tokenField . 5 @ 120 } }.
	morphs
		do: [ :each |
			each first ifNotNilDo: [ :morph |
				morph position: aPoint + each second ] ]