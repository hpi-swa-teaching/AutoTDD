running
tearDown
	
	super tearDown.
	widgetBag do: [ :widget | widget delete. ]