drawing
drawOn: aCanvas

	self drawBackgroundOn: aCanvas;
		drawStateOn: aCanvas;
		drawTravisStateOn: aCanvas;
		drawLocalText: aCanvas;
		drawTravisText: aCanvas.
	self settingsVisible ifTrue: [
		self
			drawSettingsBackgroundOn: aCanvas;
			drawLocalOnOffText: aCanvas;
			drawTravisOnOffText: aCanvas;
			drawSlugText: aCanvas;
			drawLineOn: aCanvas]
