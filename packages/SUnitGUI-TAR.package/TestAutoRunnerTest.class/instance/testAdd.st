tests
testAdd
	| newWidget numberOfWidgetsBefore |
	testAutoRunner selectedCategory: 'Tools-Browser'.
	testAutoRunner selectedTestCategory: 'ToolsTests-Browser'.
	numberOfWidgetsBefore := TarTrafficLight instances size. 
	newWidget := testAutoRunner addButtonPress.
	self assert: TarTrafficLight instances size = (1 + numberOfWidgetsBefore).
	newWidget delete.