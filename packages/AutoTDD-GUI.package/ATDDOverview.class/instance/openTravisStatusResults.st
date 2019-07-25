action
openTravisStatusResults
	
	^ self travisStatuses
		collect: [ :each |
			ATDDTravisStatusResults openForTarget: each ]