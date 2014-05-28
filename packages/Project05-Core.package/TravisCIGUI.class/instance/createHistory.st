building
createHistory

	| history |
	history := TravisCIPluggableListMorph 
		on: self
		list: #builds
		selected: #selectedBuild
		changeSelected: #selectedBuild:.
	history autoDeselect: false.
	self addMorph: history fullFrame: self historyFrame.
	^history