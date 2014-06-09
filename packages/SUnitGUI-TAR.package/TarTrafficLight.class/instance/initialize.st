initialize-release
initialize
	
	super initialize.
	self extent: self class extent.
	self createComponents.
	self setProperty: #morphicLayerNumber toValue: self morphicLayerNumber.
	self openInWorld