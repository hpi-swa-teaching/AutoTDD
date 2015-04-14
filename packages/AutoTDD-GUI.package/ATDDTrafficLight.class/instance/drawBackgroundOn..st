drawing
drawBackgroundOn: aCanvas
	
	aCanvas
		frameAndFillRectangle: (self position extent: self baseExtent)
		fillColor: self class backgroundColor
		borderWidth: 0
		borderColor: Color black.