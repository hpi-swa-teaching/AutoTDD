building
createHistory

	| history |
	history := AutoTDDPluggableListMorph 
		on: self
		list: #history
		selected: #selectedResult
		changeSelected: #selectedResult:.
	self window addMorph: history fullFrame: self historyFrame.
	history autoDeselect: false