tests
testMorphDelete
	| newWidget numberOfWidgetsBefore |
	
	newWidget := TarTrafficLight  initializeForCategory: 'SUnitGUI' withTestsIn: 'SUnitGUI-Tests-Dummy'.
	numberOfWidgetsBefore := TarTrafficLight instances size.
	newWidget delete.
	self assert: TarTrafficLight instances size = (numberOfWidgetsBefore - 1).
