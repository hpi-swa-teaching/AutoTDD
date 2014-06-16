accessing
data: anObject

	self data ifNotNil: [ self data deattach: self owner ].
	data := anObject.
	self data ifNotNil: [ self data attach: self owner ].
	self update