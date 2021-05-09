as yet unclassified
imageDictionary
	| errorImage failedImage successImage pendingImage |
	errorImage := self loadImage: 'error.png'.
	failedImage := self loadImage: 'failed.png'.
	successImage := self loadImage: 'success.png'.
	pendingImage := self loadImage: 'pending.png'.
	
	
	^ IdentityDictionary
		newFrom: { #errored -> errorImage . #failed -> failedImage . #passed -> successImage . #executing -> pendingImage . #unexecuted -> pendingImage . 
			#executed -> pendingImage . #unknown -> pendingImage }