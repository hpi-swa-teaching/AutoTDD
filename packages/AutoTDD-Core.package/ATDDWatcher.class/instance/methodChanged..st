behavior
methodChanged: methodChangeEvent
	
	|changedClass|
	
	self paused ifTrue: [ ^ self ].

	changedClass := methodChangeEvent itemClass.
	
	(self isClassWatched: changedClass)
		ifTrue: [ self onChangeDetected] .  
			
	(self isClassTestClass: changedClass)
		ifTrue: [ self onTestChangeDetected]