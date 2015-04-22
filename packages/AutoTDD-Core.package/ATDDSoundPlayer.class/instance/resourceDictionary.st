constants
resourceDictionary
	
	^ IdentityDictionary newFrom: {
		#canceled 	-> 'fail'.
		#created 	-> 'success'.
		#errored 	-> 'fail'.
		#failed 		-> 'fail'.
		#passed 	-> 'success'.
		#started 	-> 'success'.
		#unknown 	-> 'success' }