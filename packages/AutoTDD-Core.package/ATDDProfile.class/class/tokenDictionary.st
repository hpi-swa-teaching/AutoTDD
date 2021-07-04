constants
tokenDictionary

	^ IdentityDictionary
		newFrom: {
			#travisStatus -> self instance travisToken.
			#gitHubAction -> self instance gitHubToken
		}