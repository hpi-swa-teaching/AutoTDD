building
createHistory

	| history |
	history := TravisCIPluggableListMorph 
		on: self
		list: #history
		selected: #selectedBuild
		changeSelected: #selectedBuild:.
	self addMorph: history fullFrame: self historyFrame.
	^ history