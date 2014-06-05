running
setUp
	super setUp.
	
	sut initializeForCategory: 'SUnitGUI-TAR-Dummy-Category' withTestsIn: 'SUnitGUI-TAR-Dummy-Success-Tests'.
	widgetBag := OrderedCollection new. 
	
	widgetBag add: sut. 