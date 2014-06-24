as yet unclassified
positionButtons

	self
		center: self reloadButton at: self position + (self buttonAxis @ 50);
		center: self foregroundButton at: self position + (self buttonAxis @ 80);
		center: self settingsButton at: self position + (self buttonAxis @ 20);
		center: self muteButton at: self position + (self buttonAxis @ 107)