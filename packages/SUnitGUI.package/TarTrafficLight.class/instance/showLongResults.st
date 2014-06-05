drawing
showLongResults
	self extendResultButton label: '^'.
	self extendResultButton position: 
		self bottomLeft + (0 @ self progressBar height) + 
			((self width / 2 - (self extendResultButton width / 2)) @ 0) + 
			(0 @ (self trafficLightResults size * self class resultExtent y)).
	self trafficLightResults
		do: [ :aResult | aResult visible: true ]