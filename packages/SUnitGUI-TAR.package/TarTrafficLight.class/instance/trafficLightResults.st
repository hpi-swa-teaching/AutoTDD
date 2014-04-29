accessing
trafficLightResults
	^ trafficLightResults
		ifNil: [ trafficLightResults := OrderedCollection new ]