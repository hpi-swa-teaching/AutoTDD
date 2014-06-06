drawing
drawBackgroundOn: aCanvas
	aCanvas
		frameAndFillRectangle: (self position extent: 225 @ 150)
		fillColor: (Color
				r: 250
				g: 250
				b: 248
				range: 255)
		borderWidth: 0
		borderColor: Color black.