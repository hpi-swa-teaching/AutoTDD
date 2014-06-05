drawing
drawBackgroundOn: aCanvas
	aCanvas
		frameAndFillRectangle: (self position extent: 200 @ 100)
		fillColor: (Color
				r: 82
				g: 139
				b: 139
				range: 255)
		borderWidth: 3
		borderColor: Color black.