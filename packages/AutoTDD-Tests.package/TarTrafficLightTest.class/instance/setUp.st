running
setUp
	
	super setUp.
	sut initializeForCategories: #('AutoTDD-Dummy-Category') withTestsIn: #('AutoTDD-Dummy-Success-Tests').
	widgetBag := OrderedCollection new
		add: sut;
		yourself