utility
checkExtendButton
	self trafficLightResults size > 2
		ifTrue: [ self extendResultButton visible: true ].
	self resultsExpanded
		ifTrue: [ self extendResultButton position: self extendResultButton position + (0 @ 20) ]