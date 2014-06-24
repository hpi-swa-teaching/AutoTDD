drawing
drawBackgroundOn: aCanvas
	
	aCanvas
		frameAndFillRectangle: (self position extent: self baseExtent)
		fillColor: self class lightGray
		borderWidth: 0
		borderColor: Color black.