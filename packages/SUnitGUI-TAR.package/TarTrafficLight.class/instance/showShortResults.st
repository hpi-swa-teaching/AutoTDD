drawing
showShortResults
	| counter |
	self extendResultButton position:
		self bottomLeft +
		((self class resultExtent x / 2 - (self extendResultButton width / 2)) @ 0) +
		(0 @ (1 + (self class maximalShortResultListSize * (self class resultExtent y - 1)))).
	counter := self class maximalShortResultListSize.
	self trafficLightResults
		do: [ :aResult | counter = 0
				ifTrue: [ aResult visible: false ]
				ifFalse: [ counter := counter - 1 ] ]