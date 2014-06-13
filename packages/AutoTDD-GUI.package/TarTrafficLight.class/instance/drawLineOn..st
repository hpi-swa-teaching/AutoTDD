drawing
drawLineOn: aCanvas

	aCanvas
		line: (self settingsPosition + (0 @ 35))
		to: (self topRight + (0 @ 35))
		color: self class darkGray
