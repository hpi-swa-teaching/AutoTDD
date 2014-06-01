as yet unclassified
logsDictionary

	^ self jsons at: #logs ifAbsentPut: [ IdentityDictionary new ]