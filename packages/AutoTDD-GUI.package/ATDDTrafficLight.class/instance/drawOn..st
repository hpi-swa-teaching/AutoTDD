drawing
drawOn: aCanvas

	self
		cornerStyle: self class cornerStyle;
		drawBackgroundOn: aCanvas;
		drawSettingsOn: aCanvas.
	self modules do: [ :each | each drawOn: aCanvas ]