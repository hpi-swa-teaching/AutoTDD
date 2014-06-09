drawing
drawBackgroundOn: aCanvas
	aCanvas
		frameAndFillRectangle: (self position extent: 225 @ 150)
		fillColor: self lightGray
		borderWidth: 0
		borderColor: Color black.