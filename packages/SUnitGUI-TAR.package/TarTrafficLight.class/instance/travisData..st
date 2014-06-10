accessing
travisData: anObject

	self travisData ifNotNil: [ self travisData deattach: self ].
	travisData := anObject.
	self travisData ifNotNil: [ self travisData attach: self ].
	self update