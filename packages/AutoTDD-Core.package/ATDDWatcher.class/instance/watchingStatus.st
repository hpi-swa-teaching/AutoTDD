behavior
watchingStatus
	
	^ self paused ifTrue: [ 'paused' ] ifFalse: [ 'watching' ]