utility
open
	
	^ self
		extent: self class extent;
		createComponents;
		openInWorld;
		setProperty: #morphicLayerNumber toValue: self morphicLayerNumber;
		update;
		yourself