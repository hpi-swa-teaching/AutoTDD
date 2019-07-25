updating
changedTravisStatuses
	
	self travisStatuses: (self travisStatuses select: [ :each |
		each valid ]).
	travisStatusMessage contents: self overallTravisStatusMessage.
	travisStatusIndicator contents: self overallTravisStatusIndicator