tests
testCreateComponents

	self
		assert: (sut window submorphsSatisfying: [ :morph |
			morph isKindOf: PluggableTextMorphPlus ]) size equals: 4;
		assert: (sut window submorphsSatisfying: [ :morph |
			morph isKindOf: ATDDPluggableListMorph ]) size equals: 2;
		assert: (sut window submorphsSatisfying: [ :morph |
			morph isKindOf: PluggableButtonMorph ]) size equals: 1