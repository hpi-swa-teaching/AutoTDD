drawing
showLongResults
	self extendResultButton label: '^'.
	self extendResultButton position: self extendResultButton position + (0 @ (self trafficLightResults size - (2 * 20))).
	self trafficLightResults
		do: [ :aResult | aResult visible: true ]