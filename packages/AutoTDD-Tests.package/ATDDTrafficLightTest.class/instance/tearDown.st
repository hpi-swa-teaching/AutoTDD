running
tearDown
	
	super tearDown.
	widgetBag ifNotNil: [ :w | w do: [ :widget | widget delete. ] ]