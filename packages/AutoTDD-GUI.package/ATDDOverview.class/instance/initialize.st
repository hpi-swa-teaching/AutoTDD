initialization
initialize
	
	localMessage := ValueHolder new contents: String empty.
	travisStatusMessage := ValueHolder new contents: String empty.
	gitHubActionMessage := ValueHolder new contents: String empty.
	localIndicator := ValueHolder new contents: self class pendingImage.
	travisStatusIndicator := ValueHolder new contents: self class pendingImage.
	gitHubActionIndicator := ValueHolder new contents: self class pendingImage.
	self changed: #watcher.
	self changed: #travisStatus.
	self changed: #gitHubAction