drawing
drawSettingsBackgroundOn: aCanvas
	aCanvas
		frameAndFillRectangle: ((self position + (225@0)) extent: 225 @ 150)
		fillColor: (Color
				r: 237
				g: 236
				b: 232
				range: 255)
		borderWidth: 0
		borderColor: Color black