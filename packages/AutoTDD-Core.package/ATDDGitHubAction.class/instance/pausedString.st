initialization
pausedString
	
	^ paused ifTrue: [ 'paused' ] ifFalse: [ 'active' ]