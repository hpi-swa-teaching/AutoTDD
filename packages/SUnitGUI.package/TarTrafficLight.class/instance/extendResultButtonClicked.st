event handling
extendResultButtonClicked
	self resultsExpanded
		ifTrue: [ self showShortResults ]
		ifFalse: [ self showLongResults ].
	self resultsExpanded: self resultsExpanded not