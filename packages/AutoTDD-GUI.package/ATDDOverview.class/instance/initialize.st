initialization
initialize
	
	localMessage := ValueHolder new contents: ''.
	travisStatusMessage := ValueHolder new contents: ''.
	localIndicator := ValueHolder new contents: ATDDOverview pendingImage.
	travisStatusIndicator := ValueHolder new contents: ATDDOverview pendingImage.
	self changed: #watchers.
	self changed: #travisStatuses