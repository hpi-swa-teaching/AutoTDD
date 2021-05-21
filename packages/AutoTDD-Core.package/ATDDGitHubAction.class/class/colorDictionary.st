constants
colorDictionary
	
	^ IdentityDictionary
		newFrom: {
			#action_required -> Color orange.
			#cancelled -> Color gray.
			#failure -> Color red.
			#neutral -> Color gray.
			#success -> Color green.
			#skipped -> Color orange.
			#stale -> Color gray.
			#timed_out -> Color red.
		}