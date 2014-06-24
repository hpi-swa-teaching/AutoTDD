as yet unclassified
positionButtons

	| buttons |
	buttons := {
		{self reloadButton. 50}.
		{self foregroundButton. 80}.
		{self settingsButton. 20}.
		{self muteButton. 107} }.
	buttons do: [ :each |
		self center: each first at: self position + (self buttonAxis @ each second) ]