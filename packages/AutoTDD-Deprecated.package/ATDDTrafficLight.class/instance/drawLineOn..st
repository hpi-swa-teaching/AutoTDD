drawing
drawLineOn: aCanvas

	| point |
	point := 0 @ 35.
	aCanvas
		line: (self settingsPosition + point)
		to: (self topRight + point)
		color: (Color r: 0.7 g: 0.7 b: 0.7)
