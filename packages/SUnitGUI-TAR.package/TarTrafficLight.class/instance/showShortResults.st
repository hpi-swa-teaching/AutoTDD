drawing
showShortResults
	| counter |
	self extendResultButton label: 'v'.
	self extendResultButton position: self extendResultButton position + (0 @ (self trafficLightResults size - (2 * -20))).
	counter := 2.
	self trafficLightResults
		do: [ :aResult | counter = 0
				ifTrue: [ aResult visible: false ]
				ifFalse: [ counter := counter - 1 ] ]