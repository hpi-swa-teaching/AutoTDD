submorphs-add/remove
createTrafficLightResultFor: aTestResult 
	| trafficLightResult |
	trafficLightResult := TarResult new.
	trafficLightResult extent: self class resultExtent;
		 trafficLight: self.
	self positionResult: trafficLightResult.
	self addPredecessorFor: aTestResult to: trafficLightResult.
	self checkCancelledOf: aTestResult for: trafficLightResult.
	self trafficLightResults addFirst: trafficLightResult.
	self addMorph: trafficLightResult.
	self checkExtendButton