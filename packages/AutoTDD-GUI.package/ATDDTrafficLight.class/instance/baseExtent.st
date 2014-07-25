geometry
baseExtent

	| travisExtent |
	travisExtent := self travis use
		ifTrue: [ 70 @ 0]
		ifFalse: [ 0 @ 0 ].
	^ self class extent + travisExtent