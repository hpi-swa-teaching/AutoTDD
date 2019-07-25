building
createHistory
	
	| history |
	
	history := (ATDDPluggableListMorph
		on: self
		list: #history
		selected: #selectedResult
		changeSelected: #selectedResult:)
		autoDeselect: false;
		yourself.
	self window addMorph: history fullFrame: self historyFrame