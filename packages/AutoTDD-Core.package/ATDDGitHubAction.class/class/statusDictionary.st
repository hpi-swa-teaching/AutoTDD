constants
statusDictionary
	
	^ IdentityDictionary
		newFrom: {
			#action_required -> #error.
      		#cancelled -> #error.
			#failure -> #failure.
			#neutral -> #pending.
			#skipped -> #successful.
			#stale -> #pending.
			#success -> #successful.
			#timed_out -> #error.
      		#unknown -> #pending
		}