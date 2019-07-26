calculation
overallTravisStatusIndicator
	
	(self allTravisStatusesWithStatus: #started) ifNotEmpty: [ ^ ATDDTravisStatus colorDictionary at: #started ].
	(self allTravisStatusesWithStatus: #errored) ifNotEmpty: [ ^ ATDDTravisStatus colorDictionary at: #errored ].
	(self allTravisStatusesWithStatus: #failed) ifNotEmpty: [ ^ ATDDTravisStatus colorDictionary at: #failed ].
	(self allTravisStatusesWithStatus: #passed) size = self travisStatuses size ifTrue: [ ^ ATDDTravisStatus colorDictionary at: #passed ].
	
	^ ATDDTravisStatus colorDictionary at: #unknown