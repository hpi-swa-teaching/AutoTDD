tests
testMorphDelete
	
	| newWidget numberOfWidgetsBefore |
	newWidget := TarTrafficLight initializeForCategories: #('SUnitGUI') withTestsIn: #('SUnitGUI-Tests-Dummy').
	numberOfWidgetsBefore := TarTestAutoRunner instances size.
	newWidget delete.
	self assert: TarTestAutoRunner instances size = (numberOfWidgetsBefore - 1)
