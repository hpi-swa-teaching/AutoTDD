constants
soundDictionary
	
	^ IdentityDictionary newFrom: { 
		#errored -> 'fail' .
		#failed -> 'fail' .
		#passed -> 'success' .
		#canceled -> 'fail' }