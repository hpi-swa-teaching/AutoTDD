tests
testExpandName
	self deny: sut nameMorph visible.
	self deny: sut nameExpanded.
	sut extendNameButtonClicked.
	self assert: sut nameMorph visible.
	self assert: sut nameExpanded.
	self assert: sut nameMorph submorphs first contents = 'Category: SUnitGUI-TAR-Dummy-Category Test Category: SUnitGUI-TAR-Dummy-Success-Tests'.