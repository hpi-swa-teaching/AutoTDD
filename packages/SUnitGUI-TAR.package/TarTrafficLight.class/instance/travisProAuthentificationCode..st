accessing
travisProAuthentificationCode: aCode
	
	travisProAuthentificationCode := aCode.
	self travisData ifNotNil: [ self travisData token: self travisProAuthentificationCode ]