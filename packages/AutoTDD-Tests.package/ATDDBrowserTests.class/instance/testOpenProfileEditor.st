tests
testOpenProfileEditor

	| amount window |
	
	amount := ATDDProfileEditor allInstances size.
	window := browser openProfileEditor.
	self assert: ATDDProfileEditor allInstances size = (amount + 1).
	windowsToDelete add: window