drawing
drawOn: aCanvas

	self
		drawBackgroundOn: aCanvas;
		drawSettingsOn: aCanvas.
	self modules do: [ :each | each drawOn: aCanvas ]