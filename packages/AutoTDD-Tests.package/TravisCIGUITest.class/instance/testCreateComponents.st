tests
testCreateComponents

	self
		assert: (sut submorphsSatisfying: [ :morph |
			morph isKindOf: PluggableTextMorphPlus ]) size equals: 3;
		assert: (sut submorphsSatisfying: [ :morph |
			morph isKindOf: AutoTDDPluggableListMorph ]) size equals: 2;
		assert: (sut submorphsSatisfying: [ :morph |
			morph isKindOf: PluggableButtonMorph ]) size equals: 1