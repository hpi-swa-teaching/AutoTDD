initialization
initialize
	
	localMessage := ValueHolder new contents: ''.
	travisStatusMessage := ValueHolder new contents: ''.
	localIndicator := ValueHolder new contents: self class pendingImage.
	travisStatusIndicator := ValueHolder new contents: self class pendingImage.
	self changed: #watchers.
	self changed: #travisStatuses