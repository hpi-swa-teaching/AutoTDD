as yet unclassified
testExpandName
	
	self assert: sut local nameMorph isNil.
	self deny: sut local nameExpanded.
	sut local extendNameButtonClicked.
	self assert: sut local nameMorph notNil.
	self assert: sut local nameExpanded.
	self assert: sut local nameMorph submorphs first contents equals:
		'Categories: AutoTDD-Dummy-Category Test Categories: ', 		'AutoTDD-Dummy-Success-Tests'.
	sut local extendNameButtonClicked.
	self assert: sut local nameMorph isNil.
	self deny: sut local nameExpanded