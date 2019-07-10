behavior
methodChanged: methodChangeEvent
	self paused ifTrue: [ ^ self ].
	(self isClassWatched: methodChangeEvent itemClass)
		ifTrue: [self onChangeDetected] 