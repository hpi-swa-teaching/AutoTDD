utility
updateExtent
	
	self
		extent: self fullExtent;
		positionButtons.
	self settingsVisible
		ifTrue: [
			self modules
				do: [ :each |
					each positionSettingsAt: self settingsPosition ] ]