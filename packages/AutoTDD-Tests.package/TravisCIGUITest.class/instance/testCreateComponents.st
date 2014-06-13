tests
testCreateComponents

	| gui |
	gui := TravisCIGUI newWithData: TravisCIRepository new.
	gui createComponents.
	self
		assert: (gui submorphsSatisfying: [ :morph |
			morph isKindOf: PluggableTextMorphPlus ]) size equals: 3;
		assert: (gui submorphsSatisfying: [ :morph |
			morph isKindOf: TravisCIPluggableListMorph ]) size equals: 2;
		assert: (gui submorphsSatisfying: [ :morph |
			morph isKindOf: PluggableButtonMorph ]) size equals: 1.
	gui delete