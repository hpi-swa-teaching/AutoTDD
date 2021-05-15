calculation
overallTravisStatusIndicator
	
	(self allTravisStatusesWithStatus: #started) ifNotEmpty: [ ^ ATDDTravisStatus imageDictionary at: #started ].
	(self allTravisStatusesWithStatus: #errored) ifNotEmpty: [ ^ ATDDTravisStatus imageDictionary at: #errored ].
	(self allTravisStatusesWithStatus: #failed) ifNotEmpty: [ ^ ATDDTravisStatus imageDictionary at: #failed ].
	(self allTravisStatusesWithStatus: #passed) size = self travisStatuses size ifTrue: [ ^ ATDDTravisStatus imageDictionary at: #passed ].
	
	^ ATDDTravisStatus imageDictionary at: #unknown