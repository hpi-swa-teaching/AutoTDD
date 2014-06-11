accessing
travisData: anObject

	self travisData ifNotNil: [ self travisData deattach: self ].
	travisData := anObject.
	self travisData ifNotNil: [ 
		self travisData
			attach: self;
			useTravisPro: self useTravisPro;
			token: self travisProAuthentificationCode ].
	self update