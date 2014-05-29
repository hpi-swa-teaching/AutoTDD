tests
testCreateComponents

	| gui |
	gui := TravisCIGUI new.
	gui json: self sampleRepositoryBuilds.
	gui createComponents.
	self
		assert: (gui submorphsSatisfying: [ :morph |
			morph isKindOf: PluggableTextMorphPlus ]) size equals: 1;
		assert: (gui submorphsSatisfying: [ :morph |
			morph isKindOf: TravisCIPluggableListMorph ]) size equals: 2