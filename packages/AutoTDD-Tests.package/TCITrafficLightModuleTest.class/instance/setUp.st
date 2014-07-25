running
setUp
	
	super setUp.
	sut open.
	widgetBag := OrderedCollection new
		add: sut;
		yourself