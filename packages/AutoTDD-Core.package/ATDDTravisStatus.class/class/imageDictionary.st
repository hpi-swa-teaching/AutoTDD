as yet unclassified
imageDictionary
	
	| errorImage failedImage successImage pendingImage |
	errorImage := ATDDOverview loadImage: 'error.png'.
	failedImage := ATDDOverview loadImage: 'failed.png'.
	successImage := ATDDOverview loadImage: 'success.png'.
	pendingImage := ATDDOverview loadImage: 'pending.png'.
	
	^ IdentityDictionary
		newFrom: { #canceled -> pendingImage . #created -> pendingImage . #errored -> errorImage . #failed ->failedImage . #passed -> successImage . 
			#queued -> pendingImage . #received -> pendingImage . #started -> pendingImage . #unknown -> pendingImage . #'not available' -> pendingImage }