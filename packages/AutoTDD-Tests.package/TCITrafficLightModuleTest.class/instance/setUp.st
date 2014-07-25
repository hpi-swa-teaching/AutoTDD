as yet unclassified
setUp
	
	super setUp.
	sut open.
	widgetBag := OrderedCollection new
		add: sut;
		yourself