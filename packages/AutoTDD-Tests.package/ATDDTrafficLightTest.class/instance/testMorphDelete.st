tests
testMorphDelete
	
	| newWidget numberOfWidgetsBefore |
	newWidget := ATDDTrafficLight openForCategories: #('AutoTDD-Core') withTestsIn: #('AutoTDD-Dummy-Success-Tests').
	numberOfWidgetsBefore := TARTestAutoRunner instances size.
	newWidget delete.
	self assert: TARTestAutoRunner instances size = (numberOfWidgetsBefore - 1)
