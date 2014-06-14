tests
testMorphDelete
	
	| newWidget numberOfWidgetsBefore |
	newWidget := AutoTDDTrafficLight openForCategories: #('AutoTDD-Core') withTestsIn: #('AutoTDD-Dummy-Success-Tests').
	numberOfWidgetsBefore := TarTestAutoRunner instances size.
	newWidget delete.
	self assert: TarTestAutoRunner instances size = (numberOfWidgetsBefore - 1)
