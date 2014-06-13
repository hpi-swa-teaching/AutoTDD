tests
testAdd
	
	| newWidget numberOfWidgetsBefore |
	packageSelector selectedCategories: #('Tools-Browser').
	packageSelector selectedTestCategories: #('ToolsTests-Browser').
	numberOfWidgetsBefore := TarTestAutoRunner instances size. 
	newWidget := packageSelector addButtonPress.
	self assert: TarTestAutoRunner instances size equals: (1 + numberOfWidgetsBefore).
	newWidget delete