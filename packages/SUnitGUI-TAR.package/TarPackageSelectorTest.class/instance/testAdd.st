tests
testAdd
	
	| newWidget numberOfWidgetsBefore |
	packageSelector selectedCategories: #('Tools-Browser').
	packageSelector selectedTestCategories: #('ToolsTests-Browser').
	numberOfWidgetsBefore := TarResults instances size. 
	newWidget := packageSelector addButtonPress.
	self assert: TarResults instances size equals: (1 + numberOfWidgetsBefore).
	newWidget delete