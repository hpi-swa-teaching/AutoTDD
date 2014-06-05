utility
checkExtendButton
	self trafficLightResults size > 2
		ifTrue: [ self extendResultButton visible: true ].
	self resultsExpanded
		ifTrue: [ self showLongResults ]
		ifFalse: [ self showShortResults ] 