constants
imageDictionary
	
	^ IdentityDictionary
		newFrom: { 
			#canceled -> ATDDOverview pendingImage.
			#created -> ATDDOverview pendingImage.
			#errored -> ATDDOverview errorImage.
			#failed ->ATDDOverview failedImage.
			#passed -> ATDDOverview successImage.
			#queued -> ATDDOverview pendingImage.
			#received -> ATDDOverview pendingImage.
			#started -> ATDDOverview pendingImage.
			#unknown -> ATDDOverview pendingImage.
			#'not available' -> ATDDOverview pendingImage
		}