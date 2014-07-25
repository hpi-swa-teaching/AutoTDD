drawing
drawSettingsBackgroundOn: aCanvas
	
	aCanvas
		frameAndFillRectangle: (self settingsPosition extent: self class settingsExtent)
		fillColor: self class gray
		borderWidth: 0
		borderColor: Color black