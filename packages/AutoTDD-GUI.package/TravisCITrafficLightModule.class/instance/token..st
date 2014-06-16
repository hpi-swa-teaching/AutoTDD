accessing
token: anObject

	token := anObject.
	self data ifNotNil: [ self data token: self token ]