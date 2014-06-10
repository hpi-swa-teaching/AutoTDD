tests
testAdd
	| newWidget numberOfWidgetsBefore |
	testAutoRunner selectedCategory: 'Tools-Browser'.
	testAutoRunner selectedTestCategory: 'ToolsTests-Browser'.
	numberOfWidgetsBefore := TarResults instances size. 
	newWidget := testAutoRunner addButtonPress.
	self assert: TarResults instances size = (1 + numberOfWidgetsBefore).
	newWidget delete.