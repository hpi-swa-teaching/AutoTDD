constants
imageDictionary
	
	^ IdentityDictionary
		newFrom: {
			#error -> self errorImage.
			#failure -> self failedImage.
			#pending -> self pendingImage.
			#successful -> self successImage
		}