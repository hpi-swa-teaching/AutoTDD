drawing
drawLineOn: aCanvas

	| point |
	point := 0 @ 35.
	aCanvas
		line: (self settingsPosition + point)
		to: (self topRight + point)
		color: Preferences workspaceWindowColor
