constants
soundDictionary
	
	^ IdentityDictionary newFrom: { 
		#error -> 'fail' .
		#failure -> 'fail'.
		#successful -> 'success'
	}