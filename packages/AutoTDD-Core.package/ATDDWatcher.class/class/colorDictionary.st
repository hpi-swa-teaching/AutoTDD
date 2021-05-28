constants
colorDictionary
	
	^ IdentityDictionary
		newFrom: { 
			#errored -> Color red.
			#failed -> Color orange.
			#passed -> Color green.
			#executing -> Color lightBlue.
			#unexecuted -> Color gray.
			#executed -> Color black.
			#unknown -> Color gray
		}