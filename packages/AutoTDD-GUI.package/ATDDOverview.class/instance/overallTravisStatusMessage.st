calculation
overallTravisStatusMessage
	| travisCollection |
	(travisCollection := self allTravisStatusesWithStatus: #errored) size > 0
		ifTrue: [^ self messageFor: travisCollection withStatus: 'Errors in'].
	(travisCollection := self allTravisStatusesWithStatus: #failed) size > 0
		ifTrue: [^ self messageFor: travisCollection withStatus: 'Failures in'].
	(travisCollection := self allTravisStatusesWithStatus: #passed) size = self travisStatuses size
		ifTrue: [^ 'All passed'].
	^ 'unknown'