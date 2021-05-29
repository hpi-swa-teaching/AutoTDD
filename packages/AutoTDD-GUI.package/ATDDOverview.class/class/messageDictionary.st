instance creation
messageDictionary
	
	^ IdentityDictionary
		newFrom: {
			#error -> 'Errors in'.
			#failure -> 'Failures in'.
			#pending -> 'unknown'.
			#successful -> 'All passed'
		}