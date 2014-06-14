accessing
localData: anObject

	self localData ifNotNil: [ self localData deattach: self ].
	localData := anObject.
	self localData ifNotNil: [ self localData attach: self ].
	self update