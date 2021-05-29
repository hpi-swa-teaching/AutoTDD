initialization
initialize
	
	localMessage := ValueHolder new contents: ''.
	travisStatusMessage := ValueHolder new contents: ''.
	gitHubActionMessage := ValueHolder new contents: ''.
	localIndicator := ValueHolder new contents: self class pendingImage.
	travisStatusIndicator := ValueHolder new contents: self class pendingImage.
	gitHubActionIndicator := ValueHolder new contents: self class pendingImage.
	self changed: #watcher.
	self changed: #travisStatus.
	self changed: #gitHubAction