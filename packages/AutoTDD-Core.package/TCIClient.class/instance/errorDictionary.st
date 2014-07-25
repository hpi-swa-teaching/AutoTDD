as yet unclassified
errorDictionary

	^ IdentityDictionary newFrom: {
		403 	-> [ TravisCIAccessDeniedError signal ] }