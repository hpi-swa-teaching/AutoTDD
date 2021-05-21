constants
colorDictionary
	
	^ IdentityDictionary
		newFrom: {
			#action_required -> Color orange.
      		#cancelled -> Color gray.
			#failure -> Color red.
			#neutral -> Color gray.
			#skipped -> Color orange.
			#stale -> Color gray.
			#success -> Color green.
			#timed_out -> Color red.
      		#unknown -> Color gray
		}