event handling
extendResultButtonClicked
	
	self resultsExpanded: self resultsExpanded not.
	self resultsExpanded
		ifTrue: [
			self showLongResults.
			self extendResultButton state: #on ]
		ifFalse: [
			self showShortResults.
			self extendResultButton state: #off ].