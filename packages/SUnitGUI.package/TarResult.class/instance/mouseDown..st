event handling
mouseDown: evt
	self testResultMorphsShown 
		ifTrue: [ self deleteTestResultMorphs ] 
		ifFalse: [
			| offset |
			offset := 0.
			self trafficLight closeAllResults.
			offset := self showFailuresWithOffset: offset.
			self showErrorsWithOffset: offset
	]