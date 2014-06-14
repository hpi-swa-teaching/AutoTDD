tests
testExpandName
	
	self assert: sut nameMorph isNil.
	self deny: sut nameExpanded.
	sut extendNameButtonClicked.
	self assert: sut nameMorph notNil.
	self assert: sut nameExpanded.
	self assert: sut nameMorph submorphs first contents equals:
		'Categories: AutoTDD-Dummy-Category Test Categories: ', 		'AutoTDD-Dummy-Success-Tests'.
	sut extendNameButtonClicked.
	self assert: sut nameMorph isNil.
	self deny: sut nameExpanded