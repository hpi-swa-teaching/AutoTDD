constants
colorDictionary
	
	^ IdentityDictionary newFrom: {
		#canceled 	-> self class gray.
		#created 	-> self class yellow.
		#errored 	-> self class gray.
		#failed 		-> self class red.
		#passed 	-> self class green.
		#queued 	-> self class yellow.
		#started 	-> self class yellow.
		#unknown 	-> self class gray }	