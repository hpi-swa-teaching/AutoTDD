initialization
initialize

	| pendingImage |
	pendingImage := ATDDOverview loadImage: 'pending.png'.
	
	localMessage := ValueHolder new contents: ''.
	travisStatusMessage := ValueHolder new contents: ''.
	localIndicator := ValueHolder new contents: pendingImage.
	travisStatusIndicator := ValueHolder new contents: pendingImage.
	self changed: #watchers.
	self changed: #travisStatuses