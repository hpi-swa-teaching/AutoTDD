accessing
use: anObject

	use := anObject.
	self use
		ifTrue: [ self initializeData ]
		ifFalse: [ self deleteData ]