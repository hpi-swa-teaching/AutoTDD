initialize-release
initialize
	super initialize.
	self extent: 200 @ 130.
	self createComponents.
	self setProperty: #morphicLayerNumber toValue: self morphicLayerNumber.
	self openInWorld.