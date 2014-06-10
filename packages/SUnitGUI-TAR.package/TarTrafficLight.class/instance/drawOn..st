drawing
drawOn: aCanvas

	self
		drawBackgroundOn: aCanvas;
		drawLocalText: aCanvas;
		drawLocalStateText: aCanvas;
		drawTravisText: aCanvas;
		drawTravisStateText: aCanvas;
		drawSettingsOn: aCanvas