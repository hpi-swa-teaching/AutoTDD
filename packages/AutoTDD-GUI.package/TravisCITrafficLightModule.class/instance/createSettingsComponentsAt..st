building
createSettingsComponentsAt: aPoint

	super createSettingsComponentsAt: aPoint.
	self
		createApplyButtonAt: aPoint;
		createSlugFieldAt: aPoint;
		createTokenFieldAt: aPoint;
		createProOnOffButtonAt: aPoint