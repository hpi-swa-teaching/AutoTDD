utility
deleteTestResultMorphs
	self testResultMorphs do: [ :testResultMorph | testResultMorph delete ].
	self testResultMorphs: Dictionary new;
		testResultMorphsShown: false