calculation
overallTravisStatusIndicator
	(self allTravisStatusesWithStatus: #started) size > 0
		ifTrue: [^ ATDDTravisStatus colorDictionary at: #started].
	(self allTravisStatusesWithStatus: #errored) size > 0
		ifTrue: [^ ATDDTravisStatus colorDictionary at: #errored].
	(self allTravisStatusesWithStatus: #failed) size > 0
		ifTrue: [^ ATDDTravisStatus colorDictionary at: #failed].
	(self allTravisStatusesWithStatus: #passed) size = self travisStatuses size
		ifTrue: [^ ATDDTravisStatus colorDictionary at: #passed].
	^ ATDDTravisStatus colorDictionary at: #unknown