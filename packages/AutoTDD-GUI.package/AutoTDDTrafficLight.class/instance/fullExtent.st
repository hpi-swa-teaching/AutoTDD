as yet unclassified
fullExtent

	| settingsExtent |
	settingsExtent := self settingsVisible
		ifTrue: [ self class settingsExtent x @ 0 ]
		ifFalse: [ 0 @ 0 ].
	^ self baseExtent + settingsExtent