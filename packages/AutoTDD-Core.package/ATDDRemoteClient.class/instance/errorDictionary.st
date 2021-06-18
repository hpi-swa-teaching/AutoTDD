accessing
errorDictionary

	^ IdentityDictionary newFrom: {
		401 -> ATDDConnectionError.
		403 -> ATDDAccessDeniedError.
		404 -> ATDDNotFoundError
	}