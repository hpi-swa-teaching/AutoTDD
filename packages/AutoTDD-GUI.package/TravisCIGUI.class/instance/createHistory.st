building
createHistory

	| history |
	history := AutoTDDPluggableListMorph 
		on: self
		list: #history
		selected: #selectedBuild
		changeSelected: #selectedBuild:.
	self window addMorph: history fullFrame: self historyFrame.
	^ history