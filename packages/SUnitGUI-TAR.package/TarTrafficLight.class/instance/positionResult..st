utility
positionResult: aTarResult 
	| first |
	first := true.
	self trafficLightResults
		do: [ :aResult | 
			(first or: self resultsExpanded)
				ifTrue: [ first := false ]
				ifFalse: [ aResult visible: false ].
			aResult position: aResult position + (0 @ 19) ].
	aTarResult position: self position + (0 @ (self height))