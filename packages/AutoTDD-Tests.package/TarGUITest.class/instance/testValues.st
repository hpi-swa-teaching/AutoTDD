tests
testValues

	| gui |
	gui := TarGUI openWithData: (TarTestAutoRunner initializeForCategories: #('AutoTDD-Dummy-Category') withTestsIn: #('AutoTDD-Dummy-Success-Tests')).
	gui updateData.
	gui data testRunningSemaphore wait.
	self assert: gui tests size equals: gui data results last runCount.
	gui delete