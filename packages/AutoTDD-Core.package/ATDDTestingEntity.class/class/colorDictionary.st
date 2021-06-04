constants
colorDictionary
	
	^ IdentityDictionary
		newFrom: {
			#error -> Color red.
      		#failure -> Color orange.
			#successful -> Color green.
			#pending -> Color gray
		}