tests
testMorphDelete
	
	| newWidget numberOfWidgetsBefore |
	newWidget := TarTrafficLight initializeForCategories: #('SUnitGUI') withTestsIn: #('SUnitGUI-Tests-Dummy').
	numberOfWidgetsBefore := TarResults instances size.
	newWidget delete.
	self assert: TarResults instances size = (numberOfWidgetsBefore - 1)