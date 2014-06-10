tests
testValues

	| gui |
	gui := TravisCIGUI newWithData: TravisCIRepository new.
	self
		assert: gui history isArray;
		assert: (gui history allSatisfy: [ :build | build isString or: [ build isText ] ]);
		assert: gui matrix isArray;
		assert: (gui matrix allSatisfy: [ :job | job isString or: [ job isText ] ]);
		assert: gui stateColor isColor.
	gui delete