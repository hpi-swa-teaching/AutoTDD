initialization
initialize
	
	localMessage := ValueHolder new contents: ''.
	travisStatusMessage := ValueHolder new contents: ''.
	localIndicator := ValueHolder new contents: Color gray.
	travisStatusIndicator := ValueHolder new contents: Color gray.
	self changed: #watchers.
	self changed: #travisStatuses