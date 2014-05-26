drawing
showShortResults
	| counter |
	self extendResultButton label: 'v'.
	self extendResultButton position:
		self bottomLeft + (0 @ self progressBar height) +
		((self width / 2 - (self extendResultButton width / 2)) @ 0) +
		(0 @ (self class maximalShortResultListSize * 20)).
	counter := self class maximalShortResultListSize.
	self trafficLightResults
		do: [ :aResult | counter = 0
				ifTrue: [ aResult visible: false ]
				ifFalse: [ counter := counter - 1 ] ]