drawing
drawSettingsBackgroundOn: aCanvas
	aCanvas
		frameAndFillRectangle: ((self position + (225@0)) extent: 225 @ 150)
		fillColor: self gray
		borderWidth: 0
		borderColor: Color black