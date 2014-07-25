tests
testAdd
	
	| newWidget numberOfWidgetsBefore |
	packageSelector selectedCategories: #('Tools-Browser').
	packageSelector selectedTestCategories: #('ToolsTests-Browser').
	numberOfWidgetsBefore := TARTestAutoRunner instances size. 
	newWidget := packageSelector addButtonPress.
	self assert: TARTestAutoRunner instances size equals: (1 + numberOfWidgetsBefore).
	newWidget delete