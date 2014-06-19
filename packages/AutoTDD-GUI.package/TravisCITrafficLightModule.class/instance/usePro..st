accessing
usePro: anObject

	usePro := anObject.
	self data ifNotNil: [ self data usePro: self usePro ].
	self updateData