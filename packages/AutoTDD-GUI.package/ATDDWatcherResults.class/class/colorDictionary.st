constants
colorDictionary
	^ IdentityDictionary newFrom: {
		#errored 	-> Color red.
		#failed 		-> Color yellow.
		#passed 	-> Color green.
		#unknown 	-> Color gray }	