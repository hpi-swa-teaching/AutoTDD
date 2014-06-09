adding
addPredecessorFor: aTestResult to: aTarResult 
	aTestResult
		ifNotNil: [
			self trafficLightResults ifNotEmpty: [
			aTarResult predecessor: self trafficLightResults first ].
			aTarResult addTestResult: aTestResult ]