drawing
drawSettingsOn: aCanvas at: aPoint

	super drawSettingsOn: aCanvas at: aPoint.
	self
		drawProOnOffText: aCanvas at: aPoint;
		drawSlugText: aCanvas at: aPoint