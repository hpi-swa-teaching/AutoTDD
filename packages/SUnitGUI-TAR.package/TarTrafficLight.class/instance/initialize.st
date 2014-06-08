initialize-release
initialize
	super initialize.
	self extent: 225 @ 150.
	self createComponents.
	self setProperty: #morphicLayerNumber toValue: self morphicLayerNumber.
	self openInWorld