tests
testAddButtonOpensATDDWatcherEditorWindow
	self flag: #todo. "morphic-only test"
	self simulateAddButtonPress.
	self
		assert: (self newMorphs
				anySatisfy: [:morph | (morph class canUnderstand: #model)
						ifTrue: [morph model class = ATDDWatcherEditor]])