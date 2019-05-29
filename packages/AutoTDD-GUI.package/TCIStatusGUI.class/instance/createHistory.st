building
createHistory

	| history |
	history := ATDDPluggableListMorph 
		on: self
		list: #history
		selected: #selectedBuild
		changeSelected: #selectedBuild:.
	self window addMorph: history fullFrame: self historyFrame