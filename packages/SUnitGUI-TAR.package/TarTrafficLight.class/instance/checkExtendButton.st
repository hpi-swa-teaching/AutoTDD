utility
checkExtendButton
	self trafficLightResults size > 2
		ifTrue: [ self extendResultButton show ].
	self resultsExpanded
		ifTrue: [ self showLongResults ]
		ifFalse: [ self showShortResults ] 