drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	self drawSettingsOn: aCanvas.
	self modules do: [ :each | each drawOn: aCanvas ]