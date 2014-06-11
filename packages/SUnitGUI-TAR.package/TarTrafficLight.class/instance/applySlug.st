event handling
applySlug
	
	self travisSource: self slugField contents asString.
	self travisProAuthentificationCode: self authCodeField contents asString