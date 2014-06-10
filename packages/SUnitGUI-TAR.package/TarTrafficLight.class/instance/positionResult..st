utility
positionResult: aTarResult 
	
	self trafficLightResults
		do: [ :aResult | 
			aResult position: aResult position + (0 @ (self class resultExtent y - 1)) ].
	aTarResult position: self bottomLeft