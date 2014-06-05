adding
addPredecessorFor: aTestResult to: aTarResult 
	aTestResult
		ifNotNil: [ self trafficLightResults notEmpty
				ifTrue: [ aTarResult predecessor: self trafficLightResults first ].
			aTarResult addTestResult: aTestResult ]