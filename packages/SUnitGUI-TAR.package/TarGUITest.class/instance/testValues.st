tests
testValues

	| gui |
	gui := TarGUI openWithData: (TarTestAutoRunner initializeForCategories: #('SUnitGUI-TAR-Dummy-Category') withTestsIn: #('SUnitGUI-TAR-Dummy-Success-Tests')).
	gui updateData.
	gui data testRunningSemaphore wait.
	self assert: gui tests size equals: gui data results last runCount.
	gui delete