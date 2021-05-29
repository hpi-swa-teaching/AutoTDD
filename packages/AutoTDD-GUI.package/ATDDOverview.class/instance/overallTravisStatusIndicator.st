calculation
overallTravisStatusIndicator
	
	(self allTestingEntitiesOfType: #travisStatus withStatus: 'pending') ifNotEmpty: [ ^ self imageDictionary at: 'pending' ].
	(self allTravisStatusesWithStatus: 'errored') ifNotEmpty: [ ^ ATDDTravisStatus imageDictionary at: 'errored' ].
	(self allTravisStatusesWithStatus: 'failed') ifNotEmpty: [ ^ ATDDTravisStatus imageDictionary at: 'failed' ].
	(self allTravisStatusesWithStatus: 'passed') size = self travisStatuses size ifTrue: [ ^ ATDDTravisStatus imageDictionary at: 'passed' ].
	
	^ ATDDTravisStatus imageDictionary at: 'unknown'