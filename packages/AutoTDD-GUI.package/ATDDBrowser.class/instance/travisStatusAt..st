accessing
travisStatusAt: anIndex
	
	^ self selectedTravisStatuses
		includes: (self travisStatuses at: anIndex ifAbsent: [ ^ false ])