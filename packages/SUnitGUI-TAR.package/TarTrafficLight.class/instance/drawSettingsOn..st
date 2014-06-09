drawing
drawSettingsOn: aCanvas

	self settingsVisible ifTrue: [
		self
			drawSettingsBackgroundOn: aCanvas;
			drawLocalOnOffText: aCanvas;
			drawTravisOnOffText: aCanvas;
			drawSlugText: aCanvas;
			drawLineOn: aCanvas ]
