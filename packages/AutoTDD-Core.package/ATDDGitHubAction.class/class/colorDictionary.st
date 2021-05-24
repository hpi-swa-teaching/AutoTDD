constants
colorDictionary
	
	^ IdentityDictionary
		newFrom: {
			#action_required -> Color red.
      		#cancelled -> Color red.
			#failure -> Color orange.
			#neutral -> Color gray.
			#skipped -> Color green.
			#stale -> Color gray.
			#success -> Color green.
			#timed_out -> Color red.
      		#unknown -> Color gray
		}