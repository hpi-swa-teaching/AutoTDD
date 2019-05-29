ui-simulation
testAddButtonOpensATDDWatcherEditorWindow
	self simulateButtonPress: 'Add'.
	self	assert: (self newMorphs anySatisfy: [:morph | (morph class canUnderstand: #model)
			ifTrue: [morph model class = ATDDWatcherEditor]]).
	self newMorphs do: [:each | each delete]