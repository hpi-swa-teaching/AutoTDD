accessing
data: anObject

	self data ifNotNil: [ self data deattach: self ].
	data := anObject.
	self data ifNotNil: [ self data attach: self ].
	self setLabel: self label