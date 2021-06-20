constants
errorDictionary
	
	^ IdentityDictionary newFrom: { 403 -> [ TCIAccessDeniedError signal ] }