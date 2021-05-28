constants
imageDictionary
	
	^ IdentityDictionary
		newFrom: { 
			#errored -> ATDDOverview errorImage.
			#failed -> ATDDOverview failedImage.
			#passed -> ATDDOverview successImage.
			#executing -> ATDDOverview pendingImage.
			#unexecuted -> ATDDOverview pendingImage.
			#executed -> ATDDOverview pendingImage.
			#unknown -> ATDDOverview pendingImage
		}