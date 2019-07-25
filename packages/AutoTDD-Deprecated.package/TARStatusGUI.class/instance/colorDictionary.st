constants
colorDictionary
	
	^ IdentityDictionary
		newFrom: { #errored -> ATDDTrafficLight red . 
			#failed -> ATDDTrafficLight yellow . 
			#passed -> ATDDTrafficLight green . 
			#unknown -> ATDDTrafficLight gray }