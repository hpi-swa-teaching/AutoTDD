accessing
logsDictionary
	^ self cache at: #logs ifAbsentPut: [ IdentityDictionary new ]