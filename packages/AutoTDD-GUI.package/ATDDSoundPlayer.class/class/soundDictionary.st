constants
soundDictionary
	
	^ IdentityDictionary newFrom: { 
		#error -> 'fail' .
		#failure -> 'fail'.
		#passed -> 'success'.
		#successful -> 'success'
	}