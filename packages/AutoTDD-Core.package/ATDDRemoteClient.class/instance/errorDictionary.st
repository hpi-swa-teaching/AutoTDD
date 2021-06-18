accessing
errorDictionary

	^ IdentityDictionary newFrom: {
		403 -> ATDDAccessDeniedError.
		404 -> ATDDNotFoundError
	}