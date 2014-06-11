tests
testAdd
	| newWidget numberOfWidgetsBefore |
	testAutoRunner selectedCategories: #('Tools-Browser').
	testAutoRunner selectedTestCategories: #('ToolsTests-Browser').
	numberOfWidgetsBefore := TarResults instances size. 
	newWidget := testAutoRunner addButtonPress.
	self assert: TarResults instances size = (1 + numberOfWidgetsBefore).
	newWidget delete.