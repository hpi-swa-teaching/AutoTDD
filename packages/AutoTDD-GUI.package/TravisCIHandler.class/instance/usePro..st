accessing
usePro: anObject

	usePro := anObject.
	self data ifNotNil: [ self data useTravisPro: self usePro ]