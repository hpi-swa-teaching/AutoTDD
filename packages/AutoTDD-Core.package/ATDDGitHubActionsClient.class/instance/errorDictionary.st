accessing
errorDictionary
	
	^ IdentityDictionary newFrom: { 403 -> [ GHAAccessDeniedError signal ] }