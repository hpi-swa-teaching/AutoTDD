accessing
pausedString
	
	^ paused ifTrue: [ 'paused' ] ifFalse: [ 'active' ]