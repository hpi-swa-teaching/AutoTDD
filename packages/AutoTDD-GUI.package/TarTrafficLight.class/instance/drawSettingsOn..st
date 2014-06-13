drawing
drawSettingsOn: aCanvas

	self settingsVisible ifTrue: [
		self
			drawSettingsBackgroundOn: aCanvas;
			drawLocalOnOffText: aCanvas;
			drawTravisOnOffText: aCanvas;
			drawTravisProOnOffText: aCanvas;
			drawSlugText: aCanvas;
			drawLineOn: aCanvas ]
