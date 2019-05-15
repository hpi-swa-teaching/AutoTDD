utility
open
	
	^ self
		extent: self baseExtent;
		createComponents;
		openInWorld;
		setProperty: #morphicLayerNumber toValue: self morphicLayerNumber;
		yourself