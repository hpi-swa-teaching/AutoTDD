constants
colorDictionary
	^ IdentityDictionary newFrom: {
		#canceled 	-> Color gray.
		#created 	-> Color yellow.
		#errored 	-> Color gray.
		#failed 		-> Color red.
		#passed 	-> Color green.
		#queued 	-> Color yellow.
		#received 	-> Color yellow.
		#started 	-> Color yellow.
		#unknown 	-> Color gray }	