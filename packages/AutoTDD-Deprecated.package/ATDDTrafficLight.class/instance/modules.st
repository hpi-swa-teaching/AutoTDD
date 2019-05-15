accessing
modules

	^ modules ifNil: [ modules := IdentityDictionary new ]