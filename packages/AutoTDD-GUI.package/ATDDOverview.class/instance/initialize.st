initialization
initialize

	| pendingImage |
	pendingImage := ATDDWatcher loadImage: 'pending.png'.
	
	localMessage := ValueHolder new contents: ''.
	travisStatusMessage := ValueHolder new contents: ''.
	localIndicator := ValueHolder new contents: pendingImage.
	travisStatusIndicator := ValueHolder new contents: Color gray.
	self changed: #watchers.
	self changed: #travisStatuses