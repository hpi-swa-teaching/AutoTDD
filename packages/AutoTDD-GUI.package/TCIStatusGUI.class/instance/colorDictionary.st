constants
colorDictionary
	
	^ IdentityDictionary newFrom: {
		#canceled 	-> ATDDTrafficLight gray.
		#created 	-> ATDDTrafficLight yellow.
		#errored 	-> ATDDTrafficLight gray.
		#failed 		-> ATDDTrafficLight red.
		#passed 	-> ATDDTrafficLight green.
		#queued 	-> ATDDTrafficLight yellow.
		#started 	-> ATDDTrafficLight yellow.
		#unknown 	-> ATDDTrafficLight gray }	