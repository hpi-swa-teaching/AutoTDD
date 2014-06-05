initialize-release
initialize
	super initialize.
	self extent: 200 @ 100.
	self createComponents.
	self setProperty: #morphicLayerNumber toValue: self morphicLayerNumber.
	self openInWorld.