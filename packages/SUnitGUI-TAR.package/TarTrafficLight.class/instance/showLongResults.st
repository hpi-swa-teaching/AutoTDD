drawing
showLongResults
	
	self extendResultButton position: 
		self bottomLeft +
			((self class resultExtent x / 2 - (self extendResultButton width / 2)) @ 0) + 
			(0 @ (1 + (self trafficLightResults size * (self class resultExtent y - 1)))).
	self trafficLightResults
		do: [ :aResult | aResult visible: true ]