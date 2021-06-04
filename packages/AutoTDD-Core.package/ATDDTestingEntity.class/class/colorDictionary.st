constants
colorDictionary
	
	^ IdentityDictionary
		newFrom: {
			#error -> Color red.
      		#failure -> Color orange.
			#successful -> Color green.
			#passed -> Color green.
			#pending -> Color gray.
			#errored -> Color red.
			#failed -> Color orange.
		}