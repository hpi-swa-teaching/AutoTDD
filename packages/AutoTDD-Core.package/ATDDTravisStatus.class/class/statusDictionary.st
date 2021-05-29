constants
statusDictionary
	
	^ IdentityDictionary
		newFrom: { 
			#canceled -> #error.
			#created -> #pending.
			#errored -> #error.
			#failed -> #failure.
			#passed -> #successful.
			#queued -> #pending. 
			#received -> #pending.
			#started -> #pending.
			#unknown -> #pending.
			#'not available' -> #pending
		}