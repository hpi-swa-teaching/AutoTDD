drawing
drawSettingsOn: aCanvas

	self settingsVisible ifTrue: [
		self
			drawSettingsBackgroundOn: aCanvas;
			drawLineOn: aCanvas.
		self modules do: [ :each | each drawSettingsOn: aCanvas at: self settingsPosition ] ]
