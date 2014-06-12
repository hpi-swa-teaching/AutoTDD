running
setUp
	
	super setUp.
	sut initializeForCategories: #('SUnitGUI-TAR-Dummy-Category') withTestsIn: #('SUnitGUI-TAR-Dummy-Success-Tests').
	widgetBag := OrderedCollection new
		add: sut;
		yourself