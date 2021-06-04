instance creation
messageDictionary
	
	^ IdentityDictionary
		newFrom: {
			#error -> 'Errors in'.
			#failure -> 'Failures in'.
			#pending -> 'Unknown'.
			#successful -> 'All passed'
		}