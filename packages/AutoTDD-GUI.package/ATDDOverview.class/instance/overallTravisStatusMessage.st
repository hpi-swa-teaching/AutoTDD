calculation
overallTravisStatusMessage
	
	| travisCollection |
	
	(travisCollection := self allTravisStatusesWithStatus: #errored) ifNotEmpty: [ ^ self messageFor: travisCollection withStatus: 'Errors in' ].
	(travisCollection := self allTravisStatusesWithStatus: #failed) ifNotEmpty: [ ^ self messageFor: travisCollection withStatus: 'Failures in' ].
	(travisCollection := self allTravisStatusesWithStatus: #passed) size = self travisStatuses size ifTrue: [ ^ 'All passed' ].
	
	^ 'unknown'