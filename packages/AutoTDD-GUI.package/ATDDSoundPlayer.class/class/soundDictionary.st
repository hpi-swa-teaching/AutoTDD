constants
soundDictionary
	
	^ IdentityDictionary newFrom: { 
		#canceled -> 'fail'.
		#cancelled -> 'fail'.
		#errored -> 'fail' .
		#failed -> 'fail' .
		#failure -> 'fail'.
		
		#passed -> 'success'.
		#success -> 'success'
	}