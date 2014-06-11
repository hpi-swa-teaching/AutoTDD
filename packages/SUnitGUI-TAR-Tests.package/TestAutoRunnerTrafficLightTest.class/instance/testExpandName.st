tests
testExpandName
	
	self assert: sut nameMorph isNil.
	self deny: sut nameExpanded.
	sut extendNameButtonClicked.
	self assert: sut nameMorph notNil.
	self assert: sut nameExpanded.
	self assert: sut nameMorph submorphs first contents = 'Categories: SUnitGUI-TAR-Dummy-Category Test Categories: SUnitGUI-TAR-Dummy-Success-Tests'