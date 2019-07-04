accessing
target: anObject
	target ifNotNil: [target deattach: self].
	target := anObject.
	self target attach: self