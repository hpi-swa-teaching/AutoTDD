constants
imageDictionary
			
	^ IdentityDictionary
		newFrom: {
			#action_required -> ATDDOverview errorImage.
      		#cancelled -> ATDDOverview errorImage.
			#failure -> ATDDOverview failedImage.
			#neutral -> ATDDOverview pendingImage.
			#skipped -> ATDDOverview successImage.
			#stale -> ATDDOverview pendingImage.
			#success -> ATDDOverview successImage.
			#timed_out -> ATDDOverview errorImage.
      		#unknown -> ATDDOverview pendingImage
		}