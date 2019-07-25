accessing
cache
	^ cache ifNil: [ cache := IdentityDictionary new ]