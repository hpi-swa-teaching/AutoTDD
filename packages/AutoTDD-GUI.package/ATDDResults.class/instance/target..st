accessing
target: anObject
	
	target ifNotNil: [ target deattach: self ].
	super target: anObject.
	self target attach: self